#ifndef __CAN_LLD_H__
#define __CAN_LLD_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdbool.h>
#include "hc32_ll.h"

/* CAN unit */
#define CAN_UNIT                (CM_CAN)
#define CAN_PERIPH_CLK          (FCG1_PERIPH_CAN)

/* CAN pin: PB14=RXCAN, PB15=TXCAN */
#define CAN_TX_PORT             (GPIO_PORT_B)
#define CAN_TX_PIN              (GPIO_PIN_15)
#define CAN_TX_PIN_FUNC         (GPIO_FUNC_50)

#define CAN_RX_PORT             (GPIO_PORT_B)
#define CAN_RX_PIN              (GPIO_PIN_14)
#define CAN_RX_PIN_FUNC         (GPIO_FUNC_51)

/*
 * CAN baudrate: 250k bit/s
 * CAN Clock = 8MHz, Prescaler=4, TimeSeg1=6, TimeSeg2=2
 * Baudrate = CANClock / (Prescaler * (TimeSeg1 + TimeSeg2))
 *          = 8MHz / (4 * 8) = 250kHz
 * Sample Point = (1 + TimeSeg1) / (1 + TimeSeg1 + TimeSeg2) = 7/9 ≈ 77.8%
 */
#define CAN_PRESCALER           (4U)
#define CAN_TIME_SEG1           (6U)
#define CAN_TIME_SEG2           (2U)
#define CAN_SJW                 (2U)

#define CAN_INT_PRIO            (DDL_IRQ_PRIO_03)

/*==============================================================================
 * Generic CAN message (shared by LLD and CanIf)
 *============================================================================*/
typedef struct {
    uint32_t u32ID;
    uint8_t  u8IDE;
    uint8_t  u8RTR;
    uint8_t  u8FDF;
    uint8_t  u8BRS;
    uint8_t  u8DLC;
    uint8_t  au8Data[8];
    uint32_t u32Timestamp;
} CanMsg_t;

/*==============================================================================
 * Hardware filter configuration
 *============================================================================*/
typedef struct {
    uint32_t u32FilterCode;
    uint32_t u32FilterMask;
    uint8_t  u8FilterType;
} CanLLD_FilterConfig_t;

/*==============================================================================
 * Callback types
 *============================================================================*/
typedef void (*CanLLD_TxCompleteCallback_t)(void);
typedef void (*CanLLD_ErrorCallback_t)(uint32_t u32ErrorFlags);

/*==============================================================================
 * Public API
 *============================================================================*/
void     CanLLD_Init(const CanLLD_FilterConfig_t *pFilters, uint8_t u8FilterCount);
int32_t  CanLLD_Send(const CanMsg_t *pMsg);
int32_t  CanLLD_GetRxFrame(CanMsg_t *pMsg);
uint8_t  CanLLD_GetRxFrameCount(void);
void     CanLLD_SetTxCompleteCallback(CanLLD_TxCompleteCallback_t pfnCallback);
void     CanLLD_SetErrorCallback(CanLLD_ErrorCallback_t pfnCallback);
bool     CanLLD_IsBusOff(void);
void     CanLLD_RecoverBusOff(void);

#ifdef __cplusplus
}
#endif

#endif /* __CAN_LLD_H__ */
