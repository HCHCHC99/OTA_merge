/*******************************************
* 文件名: Led_Boot.c
* 功能: Bootloader 双橙色 LED (PC13/PH2) 指示状态机
* 说明: 非阻塞实现, 基于 tickTimer_GetCount() 毫秒时基;
*       状态自动映射 FlashDownload_GetState(), 无需外部设置;
*       调用点: UdsOta_Poll() (覆盖 main 主循环 / Bootloader_UdsMain /
*       上电 50ms 强制指令窗口 三个 while(1))
*******************************************/
#include "Led_Boot.h"
#include "Gpio_io.h"
#include "flash_download.h"
#include "TickTimer.h"
#include "rtt_log.h"

/* ===== 闪烁周期 (ms) ===== */
#define LED_PERIOD_SLOW     1000U   /* IDLE / FAIL: 1s 闪 */
#define LED_PERIOD_FAST     50U     /* PROGRAMMING: 50ms 闪 */
#define LED_PERIOD_DONE     500U    /* DONE: 500ms 闪 */

/* 状态可读名称 (RTT 日志用) */
static const char* Led_StateToStr(LedBootState_t st)
{
    switch (st) {
        case LED_BOOT_IDLE:        return "IDLE(1s blink)";
        case LED_BOOT_PROGRAMMING: return "PROGRAMMING(50ms blink)";
        case LED_BOOT_DONE:        return "DONE(500ms blink)";
        case LED_BOOT_FAIL:        return "FAIL(PC13 blink, PH2 off)";
        default:                   return "UNKNOWN";
    }
}

/* ===== 内部状态 ===== */
static LedBootState_t s_cur = LED_BOOT_IDLE;
static uint64_t s_lastTick = 0;
static bool s_shutdown = false;

/* FlashDownload 状态 → LED 状态映射 */
static LedBootState_t MapDownloadState(FlashDownloadState_t fwState)
{
    switch (fwState) {
        case FW_UPDATE_READY:
        case FW_UPDATE_TRANSFERRING:
        case FW_UPDATE_VERIFYING:
            return LED_BOOT_PROGRAMMING;
        case FW_UPDATE_COMPLETE:
            return LED_BOOT_DONE;
        case FW_UPDATE_ERROR:
            return LED_BOOT_FAIL;
        case FW_UPDATE_IDLE:
        case FW_UPDATE_PREPARING:
        default:
            return LED_BOOT_IDLE;
    }
}

/* 获取当前状态的闪烁周期 */
static uint32_t Led_PeriodOf(LedBootState_t st)
{
    switch (st) {
        case LED_BOOT_PROGRAMMING: return LED_PERIOD_FAST;
        case LED_BOOT_DONE:        return LED_PERIOD_DONE;
        default:                   return LED_PERIOD_SLOW;
    }
}

/* 状态切换时按新状态设定初始电平 (重置相位, 避免残留) */
static void Led_ApplyPhase(LedBootState_t st)
{
    s_lastTick = tickTimer_GetCount();

    if (st == LED_BOOT_FAIL) {
        LED_ON(LED_BL1_PORT, LED_BL1_PIN);    /* PC13 从亮开始闪 */
        LED_OFF(LED_BL2_PORT, LED_BL2_PIN);   /* PH2 常灭 */
    } else {
        LED_ON(LED_BL1_PORT, LED_BL1_PIN);    /* 双灯从亮开始闪 */
        LED_ON(LED_BL2_PORT, LED_BL2_PIN);
    }
}

void Led_Boot_Init(void)
{
    /* 初始化为输出, 初始高电平 = 灭 (低电平点亮) */
    Output_GPIO_Init(GPIO_PORT_C, GPIO_PIN_13, GPIO_INIT_HIGH);
    Output_GPIO_Init(PH2_PORT, PH2_PIN, GPIO_INIT_HIGH);

    s_shutdown = false;
    s_cur = LED_BOOT_IDLE;
    Led_ApplyPhase(LED_BOOT_IDLE);
}

void Led_Boot_Task(void)
{
    if (s_shutdown) {
        return;
    }

    /* 1. 读刷写状态机, 自动映射 LED 状态 */
    LedBootState_t st = MapDownloadState(FlashDownload_GetState());
    if (st != s_cur) {
        s_cur = st;
        MAIN_D("LED state <-- %s\r\n", Led_StateToStr(st));
        Led_ApplyPhase(st);
    }

    /* 2. 周期翻转 (uint64 时间戳, 无回绕问题) */
    if ((tickTimer_GetCount() - s_lastTick) >= Led_PeriodOf(s_cur)) {
        s_lastTick = tickTimer_GetCount();
        if (s_cur == LED_BOOT_FAIL) {
            GPIO_TOGGLE(LED_BL1_PORT, LED_BL1_PIN);   /* 只翻 PC13 */
            LED_OFF(LED_BL2_PORT, LED_BL2_PIN);
        } else {
            GPIO_TOGGLE(LED_BL1_PORT, LED_BL1_PIN);   /* 双灯同步闪 */
            GPIO_TOGGLE(LED_BL2_PORT, LED_BL2_PIN);
        }
    }
}

void Led_Boot_Shutdown(void)
{
    LED_OFF(LED_BL1_PORT, LED_BL1_PIN);
    LED_OFF(LED_BL2_PORT, LED_BL2_PIN);
    s_shutdown = true;
}
