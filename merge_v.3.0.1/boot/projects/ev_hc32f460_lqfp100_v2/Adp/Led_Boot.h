#ifndef __LED_BOOT_H__
#define __LED_BOOT_H__

#include "hc32_ll.h"
#include "Gpio_io.h"   /* PH2_PORT / PH2_PIN 宏 */

/* ===== 双橙色 LED 引脚 ===== */
#define LED_BL1_PORT    GPIO_PORT_C         /* PC13 */
#define LED_BL1_PIN     GPIO_PIN_13
#define LED_BL2_PORT    PH2_PORT            /* PH2, 复用 Gpio_io.h 已有宏 */
#define LED_BL2_PIN     PH2_PIN

/* ===== 极性集中定义：低电平点亮 ===== */
#define LED_ON(port, pin)   GPIO_RESET(port, pin)
#define LED_OFF(port, pin)  GPIO_SET(port, pin)

/* ===== LED 指示状态 ===== */
typedef enum {
    LED_BOOT_IDLE = 0,     /* 上电默认: 1000ms 双闪 */
    LED_BOOT_PROGRAMMING,  /* 固件刷写中: 50ms 双闪 */
    LED_BOOT_DONE,         /* 刷写完成(等0x11): 500ms 双闪 */
    LED_BOOT_FAIL,         /* 刷写失败: PC13 1000ms 闪, PH2 常灭 */
} LedBootState_t;

/* 初始化双 LED GPIO (输出, 初始灭) */
void Led_Boot_Init(void);

/* 非阻塞状态机轮询: 主循环/UdsOta_Poll 调用, 自动映射 FlashDownload 状态 */
void Led_Boot_Task(void);

/* 双灯置灭并停用状态机: 跳转 APP 前调用 */
void Led_Boot_Shutdown(void);

#endif /* __LED_BOOT_H__ */
