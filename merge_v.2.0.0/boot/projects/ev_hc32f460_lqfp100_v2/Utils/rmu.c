#include "rmu.h"
#include "memory_map.h"
#include "Bootloader_App.h"   /* MAX_WDT_RESET_COUNT / READ_FLASH_DIRECT */
#include "rtt_log.h"

#define RMU_RECORD_WORDS   (sizeof(stc_rmu_slot_record_t) / 4UL)

static uint32_t Rmu_SlotToSectorBase(en_rmu_slot_t eSlot)
{
    return (eSlot == RMU_SLOT_APP1) ? APP1_STATE_SECTOR_BASE : APP2_STATE_SECTOR_BASE;
}

uint32_t Rmu_ReadRawStatus(void)
{
    return (uint32_t)CM_RMU->RSTF0;
}

bool Rmu_IsFaultCause(uint32_t u32RawCause)
{
    return ((u32RawCause & RMU_FAULT_MASK) != 0UL);
}

const char *Rmu_CauseName(uint32_t u32RawCause)
{
    if (u32RawCause & RMU_FLAG_SWDT)             return "SWDT";
    if (u32RawCause & RMU_FLAG_WDT)              return "WDT";
    if (u32RawCause & RMU_FLAG_MPU_ERR)          return "MPU_ERR";
    if (u32RawCause & RMU_FLAG_PWR_ON)           return "POR";
    if (u32RawCause & RMU_FLAG_PIN)              return "PIN_RESET";
    if (u32RawCause & RMU_FLAG_BROWN_OUT)        return "BOR";
    if (u32RawCause & RMU_FLAG_PVD1)             return "PVD1";
    if (u32RawCause & RMU_FLAG_PVD2)             return "PVD2";
    if (u32RawCause & RMU_FLAG_PWR_DOWN)         return "POWER_DOWN";
    if (u32RawCause & RMU_FLAG_SW)               return "SW_RESET";
    if (u32RawCause & RMU_FLAG_RAM_PARITY_ERR)   return "RAM_PARITY_ERR";
    if (u32RawCause & RMU_FLAG_RAM_ECC)          return "RAM_ECC";
    if (u32RawCause & RMU_FLAG_CLK_ERR)          return "CLK_ERR";
    if (u32RawCause & RMU_FLAG_XTAL_ERR)         return "XTAL_ERR";
    return "NONE/UNKNOWN";
}

int32_t Rmu_LoadSlotRecord(en_rmu_slot_t eSlot, stc_rmu_slot_record_t *pstcRec)
{
    const uint32_t *pSrc;
    uint32_t i;

    if ((eSlot != RMU_SLOT_APP1 && eSlot != RMU_SLOT_APP2) || (pstcRec == NULL)) {
        return -1;
    }
    pSrc = (const uint32_t *)(uintptr_t)Rmu_SlotToSectorBase(eSlot);
    for (i = 0U; i < RMU_RECORD_WORDS; i++) {
        ((uint32_t *)pstcRec)[i] = READ_FLASH_DIRECT((uint32_t)(uintptr_t)(pSrc + i));
    }
    return 0;
}

int32_t Rmu_SaveSlotRecord(en_rmu_slot_t eSlot, const stc_rmu_slot_record_t *pstcRec)
{
    const uint32_t *pSrc;
    uint32_t u32Base;
    uint32_t i;

    if ((eSlot != RMU_SLOT_APP1 && eSlot != RMU_SLOT_APP2) || (pstcRec == NULL)) {
        return -1;
    }
    u32Base = Rmu_SlotToSectorBase(eSlot);
    pSrc = (const uint32_t *)pstcRec;

    EFM_REG_Unlock();
    EFM_FWMC_Cmd(ENABLE);
    while (SET != EFM_GetStatus(EFM_FLAG_RDY)) { }
    EFM_SectorErase(u32Base);
    for (i = 0U; i < RMU_RECORD_WORDS; i++) {
        EFM_ProgramWord(u32Base + (i * 4UL), pSrc[i]);
    }
    EFM_REG_Lock();
    return 0;
}

int32_t Rmu_ClearSlotFault(en_rmu_slot_t eSlot)
{
    stc_rmu_slot_record_t stcRec;

    if (Rmu_LoadSlotRecord(eSlot, &stcRec) != 0) {
        return -1;
    }
    if (stcRec.u32Magic != RMU_RECORD_MAGIC) {
        stcRec.u32Magic = RMU_RECORD_MAGIC;
        stcRec.u32LastResetCause = 0U;
        stcRec.u32LastFaultCause = 0U;
        if (stcRec.u32FaultCount == 0xFFFFFFFFUL)    stcRec.u32FaultCount = 0U;
        if (stcRec.u32NonFaultCount == 0xFFFFFFFFUL) stcRec.u32NonFaultCount = 0U;
    }
    stcRec.u32FaultCount = 0U;
    stcRec.u32LastFaultCause = 0U;
    return Rmu_SaveSlotRecord(eSlot, &stcRec);
}

uint32_t Rmu_GetFaultCount(en_rmu_slot_t eSlot)
{
    stc_rmu_slot_record_t stcRec;

    if (Rmu_LoadSlotRecord(eSlot, &stcRec) != 0) {
        return 0U;
    }
    return (stcRec.u32FaultCount == 0xFFFFFFFFUL) ? 0U : stcRec.u32FaultCount;
}

uint32_t Rmu_GetLastResetCause(en_rmu_slot_t eSlot)
{
    stc_rmu_slot_record_t stcRec;

    if (Rmu_LoadSlotRecord(eSlot, &stcRec) != 0) {
        return 0U;
    }
    return (stcRec.u32LastResetCause == 0xFFFFFFFFUL) ? 0U : stcRec.u32LastResetCause;
}

void Rmu_ProcessPowerUp(en_rmu_slot_t eCurrentSlot)
{
    uint32_t u32Raw;
    bool bFault;
    stc_rmu_slot_record_t stcRec;
    uint32_t u32FaultCount;

    if (eCurrentSlot != RMU_SLOT_APP1 && eCurrentSlot != RMU_SLOT_APP2) {
        eCurrentSlot = RMU_SLOT_APP1;   /* 安全兜底 */
    }

    /* 1. 读取全部 RMU 复位状态（RSTF0 所有位，不清标志） */
    u32Raw = Rmu_ReadRawStatus();
    bFault = Rmu_IsFaultCause(u32Raw);

    /* 2. 立即清除 RMU 粘性复位标志（RSTF0 受 PWC 保护，先解锁再清） */
    PWC_REG_Unlock(PWC_UNLOCK_CODE1);
    RMU_ClearStatus();
    PWC_REG_Lock(PWC_UNLOCK_CODE1);

    /* 3. 载入当前槽记录；首次上电/旧数据迁移 */
    if (Rmu_LoadSlotRecord(eCurrentSlot, &stcRec) != 0) {
        MAIN_D("[RMU] load record failed, slot=%d\r\n", (int)eCurrentSlot);
        return;
    }
    if (stcRec.u32Magic != RMU_RECORD_MAGIC) {
        /* 保留旧 feed_ctrl / fault_count，初始化新字段 */
        stcRec.u32Magic = RMU_RECORD_MAGIC;
        stcRec.u32LastResetCause = 0U;
        stcRec.u32LastFaultCause = 0U;
        stcRec.u32NonFaultCount = 0U;
    }

    /* 4. 归一化擦除态 */
    if (stcRec.u32FaultCount == 0xFFFFFFFFUL)    stcRec.u32FaultCount = 0U;
    if (stcRec.u32NonFaultCount == 0xFFFFFFFFUL) stcRec.u32NonFaultCount = 0U;

    /* 5. 记录本次复位原因（含正常原因） */
    stcRec.u32LastResetCause = u32Raw;

    /* 6. 分类：故障 → 故障计数（<3 才 +1）；正常 → 普通计数 +1 */
    u32FaultCount = stcRec.u32FaultCount;
    if (bFault) {
        /* ???????????<3?? +1?? DISABLED ???? */
        if (u32FaultCount < MAX_WDT_RESET_COUNT) {
            stcRec.u32FaultCount = u32FaultCount + 1U;
            stcRec.u32LastFaultCause = (u32Raw & RMU_FAULT_MASK);
        }
    } else {
        /* ?????POR/??/???/??????????????? */
        stcRec.u32NonFaultCount += 1U;
    }

    /* 7. 写回 FLASH（每次上电都写；后续可优化为“仅故障/原因变化时写”） */
    Rmu_SaveSlotRecord(eCurrentSlot, &stcRec);

    /* 8. RTT 诊断 */
    MAIN_D("[RMU] raw=0x%04X cause=%s slot=%d fault=%d normal=%d%s\r\n",
           (unsigned int)u32Raw, Rmu_CauseName(u32Raw), (int)eCurrentSlot,
           (unsigned int)stcRec.u32FaultCount, (unsigned int)stcRec.u32NonFaultCount,
           bFault ? " (fault)" : "");
}
