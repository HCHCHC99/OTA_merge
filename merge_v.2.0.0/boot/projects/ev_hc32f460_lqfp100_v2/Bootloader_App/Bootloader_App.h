#ifndef __BOOTLOADER_APP_H__
#define __BOOTLOADER_APP_H__
#include "memory_map.h"

#include "hc32_ll.h"
#include "core_cm4.h"
#include <string.h>

// ###########################################################################
//
//                          ����ʽ�㡿�汾������
//
// ###########################################################################
#define BOOTLOADER_VERSION             "2.00_AB"

// ###########################################################################
//
//                          ����ʽ�㡿Flash ��ַӳ��
//
// ###########################################################################


/* ===== OTA 模式选择 =====
 * 调试模式        (BOOT_OTA_MODE_DEBUG=1, BOOT_OTA_MODE_PLUS=0):
 *                  烧写窗口: 仅 APP2（TBOX 0x08004000~0x08018000 → 0x4C000）
 *                  OTA 完成后始终跳转 APP1（便于反复调试）
 * 调试模式Plus版  (BOOT_OTA_MODE_DEBUG=1, BOOT_OTA_MODE_PLUS=1):
 *                  烧写窗口: APP1 + APP2 双窗口（新增 TBOX 0x08018000~0x0802C000 → 0x1A000）
 *                  OTA 完成后始终跳转 APP1
 * 正式模式        (BOOT_OTA_MODE_DEBUG=0, BOOT_OTA_MODE_PLUS=任意):
 *                  烧写窗口: APP1 + APP2 双窗口
 *                  OTA 完成后跳转实际烧录的槽位（烧到哪里就跳到哪里）
 */
#ifndef BOOT_OTA_MODE_DEBUG
#define BOOT_OTA_MODE_DEBUG                 0U
#endif
#ifndef BOOT_OTA_MODE_PLUS
#define BOOT_OTA_MODE_PLUS                  0U
#endif

/* 双烧写窗口使能: 调试Plus 或 正式模式 */
#if ((BOOT_OTA_MODE_DEBUG == 0U) || (BOOT_OTA_MODE_PLUS == 1U))
#define BOOT_OTA_DUAL_WINDOW_EN             1U
#else
#define BOOT_OTA_DUAL_WINDOW_EN             0U
#endif

#if (BOOT_OTA_MODE_DEBUG == 1U)
  /* 调试模式 / 调试Plus: OTA 完成后始终跳 APP1 */
  #define UDS_TARGET_FLASH_ADDR            APP2_START_ADDR
  #define UDS_POST_FLASH_BOOT_ADDR         APP1_START_ADDR
#else
  /* 正式模式: 烧到哪里就跳到哪里（跳转槽由 FW_UPDATE_COMPLETE 按实际下载地址设置） */
  #define UDS_TARGET_FLASH_ADDR            APP2_START_ADDR
  #define UDS_POST_FLASH_BOOT_ADDR         APP2_START_ADDR
#endif
/* 阶段2/3: 上电强制指令检测 (Boot_StartupSequence 50ms 窗口) */
#define BOOT_FORCE_CMD_CAN_ID            0x18FF5858UL   /* 强制指令 CAN ID */
#define BOOT_FORCE_CMD_ENTER_BL          0xFFU          /* 强制进入 Bootloader 编程模式 (阶段2) */
#define BOOT_FORCE_CMD_BOOT_APP2         0x02U          /* 强制下次启动 APP2 (阶段3) */
#define BOOT_FORCE_CMD_BOOT_APP1         0x01U          /* 强制下次启动 APP1 (阶段3) */
#define BOOT_FORCE_CMD_WINDOW_MS         50U            /* 上电检测窗口 (ms) */
/* 阶段3: 强制指令结果回帧（CAN ID 0x18EF5858，data[0]=状态） */
#define BOOT_FORCE_RESP_CAN_ID       0x18EF5858UL
#define BOOT_FORCE_RESP_APP1_OK      0x01U   /* 已设置下次启动 APP1 */
#define BOOT_FORCE_RESP_APP2_OK      0x02U   /* 已设置下次启动 APP2 */
#define BOOT_FORCE_RESP_BOTH_FAULTY  0x03U   /* 双 APP 均故障，进入编程模式等待刷写 */
#define BOOT_FORCE_RESP_REJECTED     0x04U   /* 目标坏块标记>=3，拒绝强制跳转（不修改自动跳转槽） */



#define SLOT_A_MAGIC                     0x5A5A5A5Au
#define SLOT_B_MAGIC                     0xA5A5A5A5u
#define MAX_WDT_RESET_COUNT              3
#define WDT_FEED_ENABLE                  0x00000000u
#define WDT_FEED_DISABLE                 0xDEADBEEFu

#define MEM_ZERO_STRUCT(x)               memset(&(x), 0, sizeof(x))

// ###########################################################################
//
//                          ����ʽ�㡿ö�� & �ṹ��
//
// ###########################################################################
typedef uint32_t en_slot_type_t;
#define SLOT_NONE    ((en_slot_type_t)0)
#define SLOT_APP1    ((en_slot_type_t)SLOT_A_MAGIC)
#define SLOT_APP2    ((en_slot_type_t)SLOT_B_MAGIC)

typedef enum {
    APP_STATE_AVAILABLE = 0,
    APP_STATE_DISABLED = 1
} en_app_state_t;

typedef enum {
    WDT_RESET_NONE = 0,
    WDT_RESET_SWDT = 1,
    WDT_RESET_WDT = 2,
    WDT_RESET_MPU_ERR = 3
} en_wdt_reset_type_t;

typedef enum {
    BOOT_STATUS_NORMAL = 0,
    BOOT_STATUS_APP1_DISABLED = 1,
    BOOT_STATUS_APP2_DISABLED = 2,
    BOOT_STATUS_BOTH_DISABLED = 3
} en_boot_status_t;

typedef struct {
    en_slot_type_t eSlot;
    uint32_t u32WdtCount;
    en_app_state_t eState;
    uint32_t u32StartAddr;
} stc_app_info_t;

typedef struct {
    en_wdt_reset_type_t eWdtResetType;
    en_slot_type_t eCurrentSlot;
    en_slot_type_t eTargetSlot;
    stc_app_info_t stcApp1;
    stc_app_info_t stcApp2;
    uint8_t u8NeedUpdateSlotFlag;
} stc_boot_context_t;

// ###########################################################################
//
//                          ����ʽ�㡿����RAM ���ƽṹ
//
// ###########################################################################

typedef struct {
    volatile uint32_t app1_feed_ctrl;
    volatile uint32_t app2_feed_ctrl;
    volatile uint32_t debug_flag;
    volatile uint32_t reserved[5];
} stc_shared_ctrl_t;

static inline stc_shared_ctrl_t* GetSharedCtrl(void)
{
    return (stc_shared_ctrl_t*)SHARED_CTRL_ADDR;
}

// ###########################################################################
//
//                          UDS Flash 共享状态 (Bootloader ↔ APP)
//
// ###########################################################################
#define UDS_SHARED_MAGIC          0x55445300UL   // "UDS\0"

typedef enum {
    UDS_PHASE_IDLE              = 0,   // 正常运行
    UDS_PHASE_ENTER_BOOTLOADER  = 1,   // APP → Bootloader: 31服务触发
    UDS_PHASE_PROGRAMMING_DONE  = 2,   // Bootloader → APP: 下载完成
} en_uds_phase_t;

typedef struct {
    uint32_t magic;             // UDS_SHARED_MAGIC
    uint32_t phase;             // en_uds_phase_t
    uint32_t target_slot;       // SLOT_APP1 / SLOT_APP2
    uint32_t fw_size;           // 固件大小
    uint32_t fw_crc;            // 固件CRC32
    uint32_t result;            // 0=进行中, 1=成功, 0xFF=失败
    uint32_t pending_sid;       // APP启动后需补发的SID (0x31/0x11/0=none)
    uint32_t reserved[7];       // 保留
} stc_uds_shared_t;             // 56字节

// UDS 共享区 Flash 读写
void UdsShared_Read(stc_uds_shared_t *pState);
void UdsShared_Write(const stc_uds_shared_t *pState);
void UdsShared_Clear(void);
void UdsShared_SetPhase(uint32_t phase, uint32_t target_slot);
void App_CheckPendingUdsAck(void);

// Bootloader UDS 编程模式
void Bootloader_UdsMain(void);

//
//                          ����ʽ�㡿����ӿں���
// ###########################################################################
// ###########################################################################
void Boot_StartupSequence(void);                // Bootloader �����

void InitSharedCtrl(void);
void Bootloader_Init(void);
int32_t Bootloader_FlashEraseSector(uint32_t u32Addr);
void DisableAllNVICInterrupts(void);
void Bootloader_JumpToApp(uint32_t u32AppAddr);
void Boot_SwitchAndRunOther(void);
void Boot_SetRunSlotToAddr(uint32_t u32Addr);
void Bootloader_Delay(uint32_t u32Count);

uint32_t GetWdtResetCount(uint32_t u32Addr);
void UpdateWdtResetCount(uint32_t u32Addr, uint32_t u32CurrentCount);
void ClearWdtResetCount(uint32_t u32Addr);

void SetWdtFeedControl(uint32_t u32Addr, uint32_t u32Value);
uint32_t GetWdtFeedControl(uint32_t u32Addr);
void ClearAppStateBySlot(en_slot_type_t eSlot);
uint32_t READ_FLASH_DIRECT(uint32_t addr);


void ClearAllRAM(void);

#endif
