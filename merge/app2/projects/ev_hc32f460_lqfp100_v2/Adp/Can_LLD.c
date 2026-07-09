#include "Can_LLD.h"
#include "TickTimer.h"

/*==============================================================================
 * Local definitions
 *============================================================================*/
#define CAN_LLD_RX_BUF_SIZE         (32U)
#define CAN_LLD_RX_BUF_MASK         (CAN_LLD_RX_BUF_SIZE - 1U)

#define CAN_LLD_MAX_FILTERS         (8U)

/* Interrupt selection: PTB TX + RX + Error */
#define CAN_LLD_INT_SEL             (CAN_INT_PTB_TX | CAN_INT_RX | CAN_INT_ERR_INT)
#define CAN_LLD_INT_SRC             (INT_SRC_CAN_INT)
#define CAN_LLD_INT_IRQn            (INT122_IRQn)

/*==============================================================================
 * Local variables
 *============================================================================*/

/* RX ring buffer (SPSC: ISR writes head, main loop reads tail) */
static CanMsg_t m_astcRxBuf[CAN_LLD_RX_BUF_SIZE];
static volatile uint8_t m_u8RxHead = 0U;
static volatile uint8_t m_u8RxTail = 0U;

/* TX busy flag: set by CanLLD_Send, cleared by ISR on PTB_TX complete */
static volatile uint8_t m_u8TxBusy = 0U;

/* Bus-Off state */
static volatile bool m_bBusOff = false;

/* Callbacks */
static CanLLD_TxCompleteCallback_t m_pfnTxCompleteCallback = NULL;
static CanLLD_ErrorCallback_t      m_pfnErrorCallback      = NULL;

/* Saved baudrate config for Bus-Off recovery */
static uint32_t m_u32Prescaler;
static uint32_t m_u32TimeSeg1;
static uint32_t m_u32TimeSeg2;
static uint32_t m_u32SJW;

/*==============================================================================
 * Local function prototypes
 *============================================================================*/
static void CanLLD_PinConfig(void);
static void CanLLD_CanInitConfig(const CanLLD_FilterConfig_t *pFilters, uint8_t u8FilterCount);
static void CanLLD_IrqConfig(void);
static void CAN_IrqCallback(void);

/*==============================================================================
 * Public functions
 *============================================================================*/

/*
 * Initialize CAN hardware: pins, baudrate, filters, interrupts.
 * pFilters: array of filter configs (max 8).
 * u8FilterCount: number of filters in pFilters (0 = accept all frames).
 */
void CanLLD_Init(const CanLLD_FilterConfig_t *pFilters, uint8_t u8FilterCount)
{
    LL_PERIPH_WE(LL_PERIPH_GPIO | LL_PERIPH_FCG);

    CanLLD_PinConfig();
    CanLLD_CanInitConfig(pFilters, u8FilterCount);
    CanLLD_IrqConfig();

    LL_PERIPH_WP(LL_PERIPH_GPIO | LL_PERIPH_FCG);
}

/*
 * Send a CAN message via PTB. Non-blocking.
 * Returns LL_OK if frame was accepted by hardware, LL_ERR_BUSY if PTB is in use.
 */
int32_t CanLLD_Send(const CanMsg_t *pMsg)
{
    stc_can_tx_frame_t stcTx;
    uint8_t i;

    if (m_u8TxBusy != 0U) {
        return LL_ERR_BUSY;
    }

    stcTx.u32ID = pMsg->u32ID;
    stcTx.IDE   = pMsg->u8IDE;
    stcTx.RTR   = pMsg->u8RTR;
    stcTx.FDF   = pMsg->u8FDF;
    stcTx.BRS   = pMsg->u8BRS;
    stcTx.DLC   = pMsg->u8DLC;
    for (i = 0U; i < pMsg->u8DLC; i++) {
        stcTx.au8Data[i] = pMsg->au8Data[i];
    }

    (void)CAN_FillTxFrame(CAN_UNIT, CAN_TX_BUF_PTB, &stcTx);
    CAN_StartTx(CAN_UNIT, CAN_TX_REQ_PTB);
    m_u8TxBusy = 1U;

    return LL_OK;
}

/*
 * Retrieve one received CAN message from the ring buffer (non-blocking).
 * Returns LL_OK and fills *pMsg if a frame is available.
 * Returns LL_ERR if buffer is empty.
 */
int32_t CanLLD_GetRxFrame(CanMsg_t *pMsg)
{
    if (m_u8RxHead == m_u8RxTail) {
        return LL_ERR;
    }

    *pMsg = m_astcRxBuf[m_u8RxTail];
    m_u8RxTail = (m_u8RxTail + 1U) & CAN_LLD_RX_BUF_MASK;

    return LL_OK;
}

/*
 * Return number of pending RX frames in the ring buffer.
 */
uint8_t CanLLD_GetRxFrameCount(void)
{
    return (m_u8RxHead - m_u8RxTail) & CAN_LLD_RX_BUF_MASK;
}

void CanLLD_SetTxCompleteCallback(CanLLD_TxCompleteCallback_t pfnCallback)
{
    m_pfnTxCompleteCallback = pfnCallback;
}

void CanLLD_SetErrorCallback(CanLLD_ErrorCallback_t pfnCallback)
{
    m_pfnErrorCallback = pfnCallback;
}

bool CanLLD_IsBusOff(void)
{
    return m_bBusOff;
}

void CanLLD_RecoverBusOff(void)
{
    CAN_ExitLocalReset(CAN_UNIT);
    m_bBusOff = false;
}

/*==============================================================================
 * Local functions
 *============================================================================*/

/* Configure CAN TX/RX pins: PB15=TX, PB14=RX */
static void CanLLD_PinConfig(void)
{
    GPIO_SetFunc(CAN_TX_PORT, CAN_TX_PIN, CAN_TX_PIN_FUNC);
    GPIO_SetFunc(CAN_RX_PORT, CAN_RX_PIN, CAN_RX_PIN_FUNC);
}

/* Configure CAN baudrate and acceptance filters */
static void CanLLD_CanInitConfig(const CanLLD_FilterConfig_t *pFilters, uint8_t u8FilterCount)
{
    stc_can_init_t stcCanInit;
    stc_can_filter_config_t astcFilter[CAN_LLD_MAX_FILTERS];
    uint8_t i;
    uint16_t u16FilterSelect = 0U;

    /* Build filter array */
    if (u8FilterCount > CAN_LLD_MAX_FILTERS) {
        u8FilterCount = CAN_LLD_MAX_FILTERS;
    }

    if (u8FilterCount == 0U) {
        /* Default: accept all frames */
        astcFilter[0].u32ID     = 0UL;
        astcFilter[0].u32IDMask = CAN_EXT_ID_MASK;
        astcFilter[0].u32IDType = CAN_ID_STD_EXT;
        u16FilterSelect = CAN_FILTER1;
    } else {
        for (i = 0U; i < u8FilterCount; i++) {
            astcFilter[i].u32ID     = pFilters[i].u32FilterCode;
            astcFilter[i].u32IDMask = pFilters[i].u32FilterMask;
            astcFilter[i].u32IDType = pFilters[i].u8FilterType;
            u16FilterSelect |= (uint16_t)(CAN_FILTER1 << i);
        }
    }

    /* Save baudrate config for Bus-Off recovery */
    m_u32Prescaler = CAN_PRESCALER;
    m_u32TimeSeg1  = CAN_TIME_SEG1;
    m_u32TimeSeg2  = CAN_TIME_SEG2;
    m_u32SJW       = CAN_SJW;

    (void)CAN_StructInit(&stcCanInit);
    stcCanInit.stcBitCfg.u32Prescaler = m_u32Prescaler;
    stcCanInit.stcBitCfg.u32TimeSeg1  = m_u32TimeSeg1;
    stcCanInit.stcBitCfg.u32TimeSeg2  = m_u32TimeSeg2;
    stcCanInit.stcBitCfg.u32SJW       = m_u32SJW;
    stcCanInit.pstcFilter             = astcFilter;
    stcCanInit.u16FilterSelect        = u16FilterSelect;
    stcCanInit.u8WorkMode             = CAN_WORK_MD_NORMAL;

    FCG_Fcg1PeriphClockCmd(CAN_PERIPH_CLK, ENABLE);
    (void)CAN_Init(CAN_UNIT, &stcCanInit);
    CAN_IntCmd(CAN_UNIT, CAN_INT_ALL, DISABLE);
    CAN_IntCmd(CAN_UNIT, CAN_LLD_INT_SEL, ENABLE);
}

/* Configure CAN interrupt */
static void CanLLD_IrqConfig(void)
{
    stc_irq_signin_config_t stcIrq;

    stcIrq.enIntSrc    = CAN_LLD_INT_SRC;
    stcIrq.enIRQn      = CAN_LLD_INT_IRQn;
    stcIrq.pfnCallback = &CAN_IrqCallback;
    (void)INTC_IrqSignIn(&stcIrq);
    NVIC_ClearPendingIRQ(stcIrq.enIRQn);
    NVIC_SetPriority(stcIrq.enIRQn, CAN_INT_PRIO);
    NVIC_EnableIRQ(stcIrq.enIRQn);
}

/* CAN interrupt handler: RX → ring buffer, TX → callback, Error → Bus-Off detect */
static void CAN_IrqCallback(void)
{
    uint32_t u32Status;

    u32Status = CAN_GetStatusValue(CAN_UNIT);
    if (u32Status != 0U) {
        CAN_ClearStatus(CAN_UNIT, u32Status);
    }

    /* RX: read frame from hardware → push to ring buffer */
    if ((u32Status & CAN_FLAG_RX) != 0U) {
        stc_can_rx_frame_t stcRx;
        if (CAN_GetRxFrame(CAN_UNIT, &stcRx) == LL_OK) {
            uint8_t u8NextHead = (m_u8RxHead + 1U) & CAN_LLD_RX_BUF_MASK;
            if (u8NextHead != m_u8RxTail) {
                CanMsg_t *pMsg = &m_astcRxBuf[m_u8RxHead];
                uint8_t i;
                pMsg->u32ID        = stcRx.u32ID;
                pMsg->u8IDE        = stcRx.IDE;
                pMsg->u8RTR        = stcRx.RTR;
                pMsg->u8FDF        = stcRx.FDF;
                pMsg->u8BRS        = stcRx.BRS;
                pMsg->u8DLC        = stcRx.DLC;
                for (i = 0U; i < 8U; i++) {
                    pMsg->au8Data[i] = stcRx.au8Data[i];
                }
                pMsg->u32Timestamp = (uint32_t)tickTimer_GetCount();
                m_u8RxHead = u8NextHead;
            }
        }
    }

    /* TX complete: clear busy flag, invoke callback for next queued frame */
    if ((u32Status & CAN_FLAG_PTB_TX) != 0U) {
        m_u8TxBusy = 0U;
        if (m_pfnTxCompleteCallback != NULL) {
            m_pfnTxCompleteCallback();
        }
    }

    /* Error / Bus-Off detection */
    if ((u32Status & CAN_FLAG_ERR_INT) != 0U) {
        if ((u32Status & CAN_FLAG_BUS_OFF) != 0U) {
            m_bBusOff = true;
        }
        if (m_pfnErrorCallback != NULL) {
            m_pfnErrorCallback(u32Status);
        }
    }
}
