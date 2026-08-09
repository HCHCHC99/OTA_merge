#include "rmu.h"
#include "memory_map.h"
#include "Bootloader_App.h"   /* MAX_APP_FAULT_COUNT / READ_FLASH_DIRECT */
#include "rtt_log.h"
#include <string.h>

#define RMU_RECORD_WORDS   (sizeof(stc_rmu_slot_record_t) / 4UL)

/* 调试用 RAM 镜像（Keil Watch 查看） */
volatile stc_rmu_last_cause_t   g_stcRmuLastCause;
volatile stc_rmu_reason_count_t g_stcRmuReasonCount;

static uint32_t Rmu_SlotToSectorBase(en_rmu_slot_t eSlot)
{
    return (eSlot == RMU_SLOT_APP1) ? APP1_STATE_SECTOR_BASE : APP2_STATE_SECTOR_BASE;
}

/* 按优先级给“主原因”累计 +1（MULTIRF 不算主原因，仅作标志） */
static void Rmu_CountCause(stc_rmu_reason_count_t *pstcCount, uint32_t u32Raw)
{
    if (u32Raw & RMU_FLAG_SWDT)             { pstcCount->u32Swdt++; return; }
    if (u32Raw & RMU_FLAG_WDT)              { pstcCount->u32Wdt++; return; }
    if (u32Raw & RMU_FLAG_MPU_ERR)          { pstcCount->u32Mpu++; return; }
    if (u32Raw & RMU_FLAG_PWR_ON)           { pstcCount->u32Por++; return; }
    if (u32Raw & RMU_FLAG_PIN)              { pstcCount->u32Pin++; return; }
    if (u32Raw & RMU_FLAG_BROWN_OUT)        { pstcCount->u32Bor++; return; }
    if (u32Raw & RMU_FLAG_PVD1)             { pstcCount->u32Pvd1++; return; }
    if (u32Raw & RMU_FLAG_PVD2)             { pstcCount->u32Pvd2++; return; }
    if (u32Raw & RMU_FLAG_PWR_DOWN)         { pstcCount->u32PowerDown++; return; }
    if (u32Raw & RMU_FLAG_SW)               { pstcCount->u32Sw++; return; }
    if (u32Raw & RMU_FLAG_RAM_PARITY_ERR)   { pstcCount->u32RamParity++; return; }
    if (u32Raw & RMU_FLAG_RAM_ECC)          { pstcCount->u32RamEcc++; return; }
    if (u32Raw & RMU_FLAG_CLK_ERR)          { pstcCount->u32ClkErr++; return; }
    if (u32Raw & RMU_FLAG_XTAL_ERR)         { pstcCount->u32XtalErr++; return; }
    if (u32Raw & RMU_FLAG_MX)               { pstcCount->u32Multi++; }
}

/* 填充“上次复位原因”可读性视图：每个字段 0/1 */
static void Rmu_FillLastCauseView(stc_rmu_last_cause_t *pstcView, uint32_t u32Raw)
{
    memset(pstcView, 0, sizeof(*pstcView));
    pstcView->bPor       = (u32Raw & RMU_FLAG_PWR_ON)       ? 1U : 0U;
    pstcView->bPin       = (u32Raw & RMU_FLAG_PIN)          ? 1U : 0U;
    pstcView->bBor       = (u32Raw & RMU_FLAG_BROWN_OUT)    ? 1U : 0U;
    pstcView->bPvd1      = (u32Raw & RMU_FLAG_PVD1)         ? 1U : 0U;
    pstcView->bPvd2      = (u32Raw & RMU_FLAG_PVD2)         ? 1U : 0U;
    pstcView->bWdt       = (u32Raw & RMU_FLAG_WDT)          ? 1U : 0U;
    pstcView->bSwdt      = (u32Raw & RMU_FLAG_SWDT)         ? 1U : 0U;
    pstcView->bPowerDown = (u32Raw & RMU_FLAG_PWR_DOWN)     ? 1U : 0U;
    pstcView->bSw        = (u32Raw & RMU_FLAG_SW)           ? 1U : 0U;
    pstcView->bMpu       = (u32Raw & RMU_FLAG_MPU_ERR)      ? 1U : 0U;
    pstcView->bRamParity = (u32Raw & RMU_FLAG_RAM_PARITY_ERR) ? 1U : 0U;
    pstcView->bRamEcc    = (u32Raw & RMU_FLAG_RAM_ECC)      ? 1U : 0U;
    pstcView->bClkErr    = (u32Raw & RMU_FLAG_CLK_ERR)      ? 1U : 0U;
    pstcView->bXtalErr   = (u32Raw & RMU_FLAG_XTAL_ERR)     ? 1U : 0U;
    pstcView->bMulti     = (u32Raw & RMU_FLAG_MX)           ? 1U : 0U;
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
        memset(&stcRec.stcReasonCount, 0, sizeof(stcRec.stcReasonCount));
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
        memset(&stcRec.stcReasonCount, 0, sizeof(stcRec.stcReasonCount));
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
        if (u32FaultCount < MAX_APP_FAULT_COUNT) {
            stcRec.u32FaultCount = u32FaultCount + 1U;
            stcRec.u32LastFaultCause = (u32Raw & RMU_FAULT_MASK);
        }
    } else {
        /* ?????POR/??/???/??????????????? */
        stcRec.u32NonFaultCount += 1U;
    }

    /* 7. 各复位原因累计计数 +1（按主原因，故障/正常都计） */
    Rmu_CountCause(&stcRec.stcReasonCount, u32Raw);

    /* 8. 更新调试用 RAM 镜像（Keil Watch 直接看这两个全局变量） */
    {
        stc_rmu_last_cause_t stcLastView;
        Rmu_FillLastCauseView(&stcLastView, u32Raw);
        g_stcRmuLastCause = stcLastView;
        g_stcRmuReasonCount = stcRec.stcReasonCount;
    }

    /* 9. 写回 FLASH（每次上电都写；后续可优化为“仅故障/原因变化时写”） */
    Rmu_SaveSlotRecord(eCurrentSlot, &stcRec);

    /* 10. RTT 诊断 */
    MAIN_D("[RMU] raw=0x%04X cause=%s slot=%d fault=%d normal=%d%s\r\n",
           (unsigned int)u32Raw, Rmu_CauseName(u32Raw), (int)eCurrentSlot,
           (unsigned int)stcRec.u32FaultCount, (unsigned int)stcRec.u32NonFaultCount,
           bFault ? " (fault)" : "");
    /* 11. 可读性视图：上次复位原因（0/1） */
    MAIN_D("[RMU] last: POR=%u PIN=%u BOR=%u PVD1=%u PVD2=%u WDT=%u SWDT=%u PWRDN=%u SW=%u MPU=%u RAMP=%u RAMECC=%u CLK=%u XTAL=%u MULTI=%u\r\n",
           (unsigned int)g_stcRmuLastCause.bPor,
           (unsigned int)g_stcRmuLastCause.bPin,
           (unsigned int)g_stcRmuLastCause.bBor,
           (unsigned int)g_stcRmuLastCause.bPvd1,
           (unsigned int)g_stcRmuLastCause.bPvd2,
           (unsigned int)g_stcRmuLastCause.bWdt,
           (unsigned int)g_stcRmuLastCause.bSwdt,
           (unsigned int)g_stcRmuLastCause.bPowerDown,
           (unsigned int)g_stcRmuLastCause.bSw,
           (unsigned int)g_stcRmuLastCause.bMpu,
           (unsigned int)g_stcRmuLastCause.bRamParity,
           (unsigned int)g_stcRmuLastCause.bRamEcc,
           (unsigned int)g_stcRmuLastCause.bClkErr,
           (unsigned int)g_stcRmuLastCause.bXtalErr,
           (unsigned int)g_stcRmuLastCause.bMulti);
    /* 12. 可读性视图：各复位原因累计计数 */
    MAIN_D("[RMU] cnt : POR=%u PIN=%u BOR=%u PVD1=%u PVD2=%u WDT=%u SWDT=%u PWRDN=%u SW=%u MPU=%u RAMP=%u RAMECC=%u CLK=%u XTAL=%u MULTI=%u\r\n",
           (unsigned int)g_stcRmuReasonCount.u32Por,
           (unsigned int)g_stcRmuReasonCount.u32Pin,
           (unsigned int)g_stcRmuReasonCount.u32Bor,
           (unsigned int)g_stcRmuReasonCount.u32Pvd1,
           (unsigned int)g_stcRmuReasonCount.u32Pvd2,
           (unsigned int)g_stcRmuReasonCount.u32Wdt,
           (unsigned int)g_stcRmuReasonCount.u32Swdt,
           (unsigned int)g_stcRmuReasonCount.u32PowerDown,
           (unsigned int)g_stcRmuReasonCount.u32Sw,
           (unsigned int)g_stcRmuReasonCount.u32Mpu,
           (unsigned int)g_stcRmuReasonCount.u32RamParity,
           (unsigned int)g_stcRmuReasonCount.u32RamEcc,
           (unsigned int)g_stcRmuReasonCount.u32ClkErr,
           (unsigned int)g_stcRmuReasonCount.u32XtalErr,
           (unsigned int)g_stcRmuReasonCount.u32Multi);
}
