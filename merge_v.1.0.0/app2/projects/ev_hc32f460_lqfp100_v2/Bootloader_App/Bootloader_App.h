#ifndef __BOOTLOADER_APP_H__
#define __BOOTLOADER_APP_H__

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
// ����RAM���򣨸������ṩ�ĵ�ַ��
#define RAM_START_ADDR      0x1FFF8000UL
#define RAM_SIZE            0x2F000UL    // 188KB
#define RAM_END_ADDR        (RAM_START_ADDR + RAM_SIZE)

#define APP1_START_ADDR                  0x1A000
#define APP2_START_ADDR                  0x4C000
#define APP_RUN_SLOT_ADDR                0x7C000

/* UDS OTA: flash target = APP2, post-flash forced boot = APP1 (macro for now) */
#define UDS_TARGET_FLASH_ADDR            APP2_START_ADDR
#define UDS_POST_FLASH_BOOT_ADDR         APP1_START_ADDR
/* 阶段2/3: 强制OTA指令 (与 boot 一致) */
#define BOOT_FORCE_CMD_CAN_ID            0x18FF5858UL
#define BOOT_FORCE_CMD_ENTER_BL          0xFFU
#define BOOT_FORCE_CMD_BOOT_APP2         0x02U
#define BOOT_FORCE_CMD_BOOT_APP1         0x01U
#define BOOT_FORCE_CMD_WINDOW_MS         50U


#define APP1_STATE_SECTOR_BASE           0x16000
#define APP2_STATE_SECTOR_BASE           0x18000

#define WDT_COUNT_APP1_ADDR              (APP1_STATE_SECTOR_BASE + 0x008)
#define WDT_FEED_CONTROL_APP1_ADDR       (APP1_STATE_SECTOR_BASE + 0x000)
#define WDT_COUNT_APP2_ADDR              (APP2_STATE_SECTOR_BASE + 0x008)
#define WDT_FEED_CONTROL_APP2_ADDR       (APP2_STATE_SECTOR_BASE + 0x000)

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
    WDT_RESET_WDT = 2
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
#define SHARED_RAM_BASE_ADDR             0x1FFF8000
#define SHARED_CTRL_OFFSET               0x2F000
#define SHARED_CTRL_ADDR                 (SHARED_RAM_BASE_ADDR + SHARED_CTRL_OFFSET - 0x100)

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
#define UDS_SHARED_SECTOR_BASE    0x00010000
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
