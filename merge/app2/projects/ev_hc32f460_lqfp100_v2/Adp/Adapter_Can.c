#include "Adapter_Can.h"
#include "TickTimer.h"
#include "rtt_log.h"

/*==============================================================================
 * Local definitions
 *============================================================================*/

/* 回显功能：1=开启（未匹配的CAN帧回发），0=关闭 */
#define CANIF_ECHO_ENABLE           (0U)

#define CANIF_TX_QUEUE_SIZE         (32U)
#define CANIF_TX_QUEUE_MASK         (CANIF_TX_QUEUE_SIZE - 1U)

#define CANIF_MAX_RX_FILTERS        (16U)

#define CANIF_BUSOFF_RECOVERY_MS    (500U)

/*==============================================================================
 * Local variables
 *============================================================================*/

/* SW TX queue */
static CanMsg_t     m_astcTxQueue[CANIF_TX_QUEUE_SIZE];
static volatile uint8_t m_u8TxHead = 0U;
static volatile uint8_t m_u8TxTail = 0U;

/* RX filter table */
static CanIf_RxFilterEntry_t m_astcRxFilters[CANIF_MAX_RX_FILTERS];
static uint8_t m_u8RxFilterCount = 0U;

/* Default RX callback (called when no filter matches) */
static void (*m_pfnDefaultRxCallback)(const CanMsg_t *pMsg) = NULL;

/* Bus-Off recovery timer */
static NonBlockingDelay_t m_stcBusOffTimer;

/*==============================================================================
 * Local function prototypes
 *============================================================================*/
static void CanIf_TxCompleteCallback(void);
static bool CanIf_MatchFilter(const CanMsg_t *pMsg, const CanIf_RxFilterEntry_t *pFilter);
static void CanIf_DispatchRx(const CanMsg_t *pMsg);
static void CanIf_DrainTxQueue(void);

/* Default echo callback */
static void CanIf_EchoCallback(const CanMsg_t *pMsg);

/*==============================================================================
 * Public functions
 *============================================================================*/

void CanIf_Init(void)
{
    CanLLD_FilterConfig_t stcDefaultFilter = {
        0UL, CAN_EXT_ID_MASK, CAN_ID_STD_EXT
    };

    /* Init LLD with accept-all filter */
    CanLLD_Init(&stcDefaultFilter, 1U);

    /* Register TX complete callback with LLD */
    CanLLD_SetTxCompleteCallback(&CanIf_TxCompleteCallback);

    /* Init Bus-Off recovery timer */
    nbDelay_Init(&m_stcBusOffTimer, CANIF_BUSOFF_RECOVERY_MS);

    /* Echo back all unmatched frames (controlled by CANIF_ECHO_ENABLE) */
#if CANIF_ECHO_ENABLE
    CanIf_SetDefaultRxCallback(&CanIf_EchoCallback);
#else
    CanIf_SetDefaultRxCallback(NULL);
#endif
}

bool CanIf_Send(const CanMsg_t *pMsg)
{
    bool bResult = false;

    __disable_irq();

    /* Try direct hardware send first */
    if (CanLLD_Send(pMsg) == LL_OK) {
        __enable_irq();
        return true;
    }

    /* Hardware busy: enqueue to SW TX queue */
    {
        uint8_t u8Next = (m_u8TxHead + 1U) & CANIF_TX_QUEUE_MASK;
        if (u8Next != m_u8TxTail) {
            m_astcTxQueue[m_u8TxHead] = *pMsg;
            m_u8TxHead = u8Next;
            bResult = true;
        }
    }

    __enable_irq();
    return bResult;
}

void CanIf_Poll(void)
{
    /* 1. Safety net: drain TX queue (ISR callback should keep it drained) */
    CanIf_DrainTxQueue();

    /* 2. Dispatch received frames */
    {
        CanMsg_t stcRxMsg;
        while (CanLLD_GetRxFrame(&stcRxMsg) == LL_OK) {
            CanIf_DispatchRx(&stcRxMsg);
        }
    }

    /* 3. Bus-Off recovery */
    if (CanLLD_IsBusOff()) {
        if (!m_stcBusOffTimer.isRunning) {
            MAIN_D("[CANIF] Bus-Off detected, starting recovery timer (%ums)\r\n",
                   CANIF_BUSOFF_RECOVERY_MS);
            nbDelay_Start(&m_stcBusOffTimer);
        }
        if (nbDelay_IsComplete(&m_stcBusOffTimer)) {
            MAIN_D("[CANIF] Bus-Off recovery: exiting local reset\r\n");
            CanLLD_RecoverBusOff();
        }
    }
}

bool CanIf_RegisterRxFilter(const CanIf_RxFilterEntry_t *pEntry)
{
    if (m_u8RxFilterCount >= CANIF_MAX_RX_FILTERS) {
        return false;
    }
    m_astcRxFilters[m_u8RxFilterCount] = *pEntry;
    m_u8RxFilterCount++;
    return true;
}

void CanIf_SetDefaultRxCallback(void (*pfnCallback)(const CanMsg_t *pMsg))
{
    m_pfnDefaultRxCallback = pfnCallback;
}

uint8_t CanIf_GetTxQueueCount(void)
{
    uint8_t u8Count;
    __disable_irq();
    u8Count = (m_u8TxHead - m_u8TxTail) & CANIF_TX_QUEUE_MASK;
    __enable_irq();
    return u8Count;
}

/*==============================================================================
 * Local functions
 *============================================================================*/

/*
 * TX complete callback (called from CAN ISR context).
 * Dequeue next frame from SW TX queue and send via hardware.
 */
static void CanIf_TxCompleteCallback(void)
{
    if (m_u8TxHead != m_u8TxTail) {
        CanMsg_t stcMsg = m_astcTxQueue[m_u8TxTail];
        m_u8TxTail = (m_u8TxTail + 1U) & CANIF_TX_QUEUE_MASK;
        (void)CanLLD_Send(&stcMsg);  /* PTB is free, guaranteed to succeed */
    }
}

/*
 * Check if a received message matches a registered filter entry.
 * Mask bit=1 means "ignore this bit".
 */
static bool CanIf_MatchFilter(const CanMsg_t *pMsg, const CanIf_RxFilterEntry_t *pFilter)
{
    uint32_t u32EffectiveMask;

    /* Format check */
    if (pFilter->u8Format == CAN_ID_STD && pMsg->u8IDE != 0U) {
        return false;
    }
    if (pFilter->u8Format == CAN_ID_EXT && pMsg->u8IDE == 0U) {
        return false;
    }

    /* ID match: mask bit=1 means don't-care */
    u32EffectiveMask = ~(pFilter->u32CanMask);
    if ((pMsg->u32ID & u32EffectiveMask) != (pFilter->u32CanId & u32EffectiveMask)) {
        return false;
    }

    return true;
}

/*
 * Dispatch a received frame to matching registered callbacks.
 * All matching filters are called (not just the first).
 */
static void CanIf_DispatchRx(const CanMsg_t *pMsg)
{
    uint8_t i;
    bool bMatched = false;

    for (i = 0U; i < m_u8RxFilterCount; i++) {
        if (CanIf_MatchFilter(pMsg, &m_astcRxFilters[i])) {
            m_astcRxFilters[i].pfnCallback(pMsg);
            bMatched = true;
        }
    }

    /* Fall back to default callback if no filter matched */
    if (!bMatched && m_pfnDefaultRxCallback != NULL) {
        m_pfnDefaultRxCallback(pMsg);
    }
}

/*
 * Safety net: drain one frame from SW TX queue in main loop context.
 * Compensates for edge cases where ISR callback might miss a queue drain.
 */
static void CanIf_DrainTxQueue(void)
{
    CanMsg_t stcMsg;
    bool bHasFrame = false;

    __disable_irq();
    if (m_u8TxHead != m_u8TxTail) {
        stcMsg = m_astcTxQueue[m_u8TxTail];
        m_u8TxTail = (m_u8TxTail + 1U) & CANIF_TX_QUEUE_MASK;
        bHasFrame = true;
    }
    __enable_irq();

    if (bHasFrame) {
        if (CanLLD_Send(&stcMsg) != LL_OK) {
            /* Hardware still busy, put frame back at front of queue */
            __disable_irq();
            m_u8TxTail = (m_u8TxTail - 1U) & CANIF_TX_QUEUE_MASK;
            __enable_irq();
        }
    }
}

/*
 * Default echo callback: send back received frame with same ID and data.
 */
static void CanIf_EchoCallback(const CanMsg_t *pMsg)
{
    (void)CanIf_Send(pMsg);
}
