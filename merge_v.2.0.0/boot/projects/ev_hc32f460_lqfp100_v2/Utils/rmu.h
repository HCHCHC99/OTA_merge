#ifndef __RMU_H__
#define __RMU_H__

#include "hc32_ll.h"
#include <stdint.h>
#include <stdbool.h>

/* ============================================================================
 * RMU 重启记录模块（Utils/rmu.c）
 * ----------------------------------------------------------------------------
 * 职责：boot 上电第一件事 —— 读取全部 RMU 复位状态（RSTF0 所有位）、
 *       分类（故障/正常）、清除粘性标志、更新并写回 FLASH 记录。
 * 记录位置：每个 APP 的状态扇区（APP1=0x16000 / APP2=0x18000）。
 *           +0x000 / +0x008 偏移与原有 WDT_FEED_CONTROL / WDT_COUNT 保持一致。
 * 故障类（SWDT/WDT/MPU_ERR）进 APP 故障计数；其他正常原因（POR/掉电/复位脚/
 * 软件复位等）只记录，不计故障。
 * ========================================================================== */

#define RMU_RECORD_MAGIC        0x524D5531UL   /* "RMU1" */
#define RMU_RECORD_VERSION      1UL
#define RMU_FAULT_MASK          (RMU_FLAG_SWDT | RMU_FLAG_WDT | RMU_FLAG_MPU_ERR)

typedef enum {
    RMU_SLOT_APP1 = 0,
    RMU_SLOT_APP2 = 1
} en_rmu_slot_t;

typedef struct {
    uint32_t u32FeedCtrl;        /* +0x000 兼容原 WDT_FEED_CONTROL_APPx_ADDR */
    uint32_t u32Magic;           /* +0x004 记录有效标志 */
    uint32_t u32FaultCount;      /* +0x008 兼容原 WDT_COUNT_APPx_ADDR */
    uint32_t u32LastResetCause;  /* +0x00C 最近一次上电原始 RSTF0（含正常原因） */
    uint32_t u32LastFaultCause;  /* +0x010 最近一次故障原因，0=无 */
    uint32_t u32NonFaultCount;   /* +0x014 普通复位/掉电累计次数 */
    uint32_t au32Reserved[2];    /* +0x018 / +0x01C */
} stc_rmu_slot_record_t;

void        Rmu_ProcessPowerUp(en_rmu_slot_t eCurrentSlot); /* 启动序列第一件事 */
uint32_t    Rmu_ReadRawStatus(void);                        /* 读 RSTF0 全部状态（不清标志） */
bool        Rmu_IsFaultCause(uint32_t u32RawCause);         /* 按 RMU_FAULT_MASK 分类 */
const char *Rmu_CauseName(uint32_t u32RawCause);            /* 诊断打印用 */
int32_t     Rmu_LoadSlotRecord(en_rmu_slot_t eSlot, stc_rmu_slot_record_t *pstcRec);
int32_t     Rmu_SaveSlotRecord(en_rmu_slot_t eSlot, const stc_rmu_slot_record_t *pstcRec);
int32_t     Rmu_ClearSlotFault(en_rmu_slot_t eSlot);        /* 清除故障记录（OTA 完成后/调试） */
uint32_t    Rmu_GetFaultCount(en_rmu_slot_t eSlot);
uint32_t    Rmu_GetLastResetCause(en_rmu_slot_t eSlot);

#endif /* __RMU_H__ */
