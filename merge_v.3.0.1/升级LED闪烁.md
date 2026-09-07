# Bootloader 升级 LED 闪烁 (PC13 / PH2)

> **相关文档:** [收发流程.md](收发流程.md) — OTA 三阶段流程 | [APP槽区切换.md](APP槽区切换.md) — 槽位调度
>
> **实现日期:** 2026-09-07 | **适用工程:** boot（仅 Bootloader 工程）

## 1. 需求

Bootloader 工程新增两个橙色 LED（**PC13**、**PH2**），用于指示 OTA 刷写状态：

| 场景 | 表现 |
|------|------|
| 上电进入 main（boot 常驻） | 双灯 1000ms 闪烁（1s 亮 1s 灭） |
| 固件刷写过程 | 双灯 50ms 闪烁（亮 50ms + 灭 50ms） |
| 刷写成功（等 0x11 复位） | 双灯 500ms 闪烁 |
| 刷写失败 | PC13 1000ms 闪烁，PH2 常灭 |
| 跳转 APP 前 | 双灯置灭（由 APP 接管） |

硬件约定：**低电平点亮**。

## 2. 状态映射

LED 状态机不设外部接口，直接轮询 `FlashDownload_GetState()` 自动映射：

| `FlashDownload_GetState()` | LED 状态 | PC13 | PH2 |
|---|---|---|---|
| `IDLE / PREPARING` | `LED_BOOT_IDLE` | 1000ms 闪 | 1000ms 闪 |
| `READY / TRANSFERRING / VERIFYING` | `LED_BOOT_PROGRAMMING` | 50ms 闪 | 50ms 闪 |
| `COMPLETE` | `LED_BOOT_DONE` | 500ms 闪 | 500ms 闪 |
| `ERROR` | `LED_BOOT_FAIL` | 1000ms 闪 | 常灭 |

失败→恢复自动处理，无需额外逻辑：

- TBOX 重新发起 0x34 → 下载状态机回 `READY` → LED 自动回快闪；
- UDS 会话超时 `dl->reset()` → 回 `IDLE` → LED 自动回慢闪。

## 3. 实现设计

### 3.1 模块

新建 `Adp/Led_Boot.c/.h`，与 Gpio_io（底层驱动）、TickTimer（时基）解耦：

```c
/* Led_Boot.h 引脚与极性 */
#define LED_BL1_PORT    GPIO_PORT_C         /* PC13 */
#define LED_BL1_PIN     GPIO_PIN_13
#define LED_BL2_PORT    PH2_PORT            /* PH2, 复用 Gpio_io.h 已有宏 */
#define LED_BL2_PIN     PH2_PIN

#define LED_ON(port,pin)    GPIO_RESET(port,pin)   /* 低电平点亮 */
#define LED_OFF(port,pin)   GPIO_SET(port,pin)

void Led_Boot_Init(void);      /* 双灯输出初始化(初始灭), 即进入 1s 慢闪 */
void Led_Boot_Task(void);      /* 非阻塞状态机轮询 */
void Led_Boot_Shutdown(void);  /* 双灯置灭 + 停用状态机, 跳转 APP 前调用 */
```

### 3.2 非阻塞实现要点

- 时基：`tickTimer_GetCount()`（uint64 毫秒，Timer0_Unit2 中断每 1ms 调 `tickTimer_Update()`），时间戳翻转法，**无回绕问题**；
- 状态切换时重置相位：`s_lastTick = now` 并按新状态设定初始电平（闪灯态从"亮"开始；FAIL 态 PC13 从亮开始、PH2 置灭），避免残留电平；
- 状态切换打印可读日志：`MAIN_D("LED state <-- %s")`，如 `LED state <-- PROGRAMMING(50ms blink)`。

### 3.3 调用点（一处覆盖全部场景）

`UdsOta_Poll()` 是全部三个 `while(1)` 的公共调用点，`Led_Boot_Task()` 加在其 1ms 门控块内：

| while(1) 位置 | LED 效果 |
|---|---|
| main 主循环（正常启动路径, 跳转前短暂经过） | 1s 慢闪 |
| 上电 50ms 强制指令窗口（`Boot_StartupSequence`） | 1s 慢闪 |
| `Bootloader_UdsMain()` UDS 编程模式（常驻） | 随下载状态切换 |

## 4. 改动文件清单

| # | 文件 | 改动 |
|---|------|------|
| 1 | `Adp/Led_Boot.h` | **新建**: 引脚/极性宏 + 状态枚举 + 接口 |
| 2 | `Adp/Led_Boot.c` | **新建**: 非阻塞状态机实现 |
| 3 | `template/source/main.c` | `Hardware_Init()` 后加 `Led_Boot_Init()` |
| 4 | `UDS/uds_ota.c` | `UdsOta_Poll()` 1ms 门控内加 `Led_Boot_Task()` |
| 5 | `Bootloader_App/Bootloader_App.c` | `Bootloader_JumpToApp()` 清除 NVIC 后、设 MSP 前加 `Led_Boot_Shutdown()` |
| 6 | `template/MDK/template - 副本.uvprojx` | 两个 target 的 Adp 分组均插入 `Led_Boot.c` 条目 |

### Keil 工程文件注意

`template.uvprojx` 为加密二进制格式，无法脚本编辑；`Led_Boot.c` 已加入明文的 **`template - 副本.uvprojx`**。若实际使用加密版工程构建，需在 Keil 中手动把 `..\..\Adp\Led_Boot.c` 添加到 Adp 分组（include path `..\..\Adp` 已存在）。

## 5. 跳转灭灯说明

`Bootloader_JumpToApp()` 内插入位置：

```
// 4. 清除中断使能和挂起寄存器 NVIC->ICER/ICPR
// 4.5 Shutdown LEDs before jump
Led_Boot_Shutdown();
// 5. __set_MSP / SCB->VTOR
// 6. 跳转 APP
```

- 跳转路径不返回，LED 冻结在灭态，APP 启动后重新初始化 GPIO 接管；
- Reset vector 非法 abort 返回的场景（理论不发生，`IsAppFirmwareValid` 已提前过滤）LED 保持灭，符合无固件异常语义。

## 6. 验证清单

- [ ] 上电（无下载）：双灯 1s 慢闪
- [ ] 50ms 强制指令窗口期间：仍 1s 慢闪
- [ ] 0x34 接受后：双灯切 50ms 快闪（RTT: `LED state <-- PROGRAMMING(50ms blink)`）
- [ ] 0x37 校验完成：双灯切 500ms 闪（RTT: `LED state <-- DONE(500ms blink)`）
- [ ] 刷写失败（CRC 不匹配等）：PC13 1s 闪、PH2 灭（RTT: `LED state <-- FAIL(...)`)
- [ ] 失败后重新 0x34：自动恢复快闪
- [ ] 0x11 复位跳转瞬间：双灯灭 → APP 接管
