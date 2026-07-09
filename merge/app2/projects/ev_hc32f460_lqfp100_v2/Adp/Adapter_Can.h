#ifndef __ADAPTER_CAN_H__
#define __ADAPTER_CAN_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "Can_LLD.h"

/*==============================================================================
 * RX filter entry for ID-based dispatch (registered by upper layers)
 *============================================================================*/
typedef struct {
    uint32_t u32CanId;
    uint32_t u32CanMask;     /* bit=1 means ignore this bit */
    uint8_t  u8Format;       /* CAN_ID_STD / CAN_ID_EXT / CAN_ID_STD_EXT */
    void   (*pfnCallback)(const CanMsg_t *pMsg);
} CanIf_RxFilterEntry_t;

/*==============================================================================
 * Public API
 *============================================================================*/

/*
 * Initialize CanIf layer: init CanLLD with default "accept all" filter,
 * set up TX complete callback, register default echo callback.
 */
void CanIf_Init(void);

/*
 * Send a CAN message asynchronously. Frame is enqueued in SW TX queue.
 * Returns true if enqueued, false if queue is full.
 */
bool CanIf_Send(const CanMsg_t *pMsg);

/*
 * Main loop poll: drain SW TX queue + dispatch RX frames + Bus-Off recovery.
 * Must be called periodically from main loop.
 */
void CanIf_Poll(void);

/*
 * Register an RX filter/callback pair. Up to 16 entries.
 * Returns true on success, false if table is full.
 */
bool CanIf_RegisterRxFilter(const CanIf_RxFilterEntry_t *pEntry);

/*
 * Register a default RX callback (called when no filter matches).
 * Set to NULL to discard unmatched frames.
 */
void CanIf_SetDefaultRxCallback(void (*pfnCallback)(const CanMsg_t *pMsg));

/*
 * Get SW TX queue pending count.
 */
uint8_t CanIf_GetTxQueueCount(void);

#ifdef __cplusplus
}
#endif

#endif /* __ADAPTER_CAN_H__ */
