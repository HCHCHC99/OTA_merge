
  #include "main.h"
  #include "Hardware.h"
  #include "rtt_log.h"
  #include "timer6_timebase.h"
  #include "Motor_hall.h"
  #include "TickTimer.h"
  #include "device_manager.h"
  #include "App_Motor_Project.h"
  #include "param_manager.h"
  #include "Gpio_io.h"
  #include "App_Comm.h"
  #include "Params.h"
  #include "App_FaultHandler.h"
  #include "rtt_manager.h"
  #include "Pwm.h"
  #include "hc32_ll_utility.h"
#if UDS_CAN_ENABLE
  #include "Adapter_Can.h"
  #include "isotp_transport.h"
  #include "uds_diagnostic.h"
  #include "flash_download.h"
#endif
#include "Bootloader_App.h"

#if UDS_CAN_ENABLE
  /* uds_dl_bridge.c 没有独立�?? .h 文件，在此前向声�?? */
  extern void uds_dl_init_fw(void);
#endif

  /* 延迟复位：handler 设置为 DELAYED_RESET_MS，main 循环中倒计时 */
  volatile uint32_t g_delayed_reset_ms = 0;

  /*=============================================================================
   * ȫ��PWMʵ�������������ʹ�ã�?????
   *=============================================================================*/
  pwm_t g_motor_pwm_ch1;  // PB6
  pwm_t g_motor_pwm_ch2;  // PB7
  pwm_t g_motor_pwm_ch3;  // PB8
  pwm_t g_motor_pwm_ch4;  // PB9

  /*=============================================================================
   * ��������
   *=============================================================================*/
  static void Motor_Pwm_Init(void);

  /*=============================================================================
   * ��ʼ����������õ�PWM��4��ͨ����ȫ������Ч��
   *=============================================================================*/
  static void Motor_Pwm_Init(void)
  {
      // ����������?4��ͨ��ȫ������Ч������תͨ��ռ�ձȷ���ʵ�֣�
      // Ƶ�ʣ�20kHz����ʼռ�ձȣ�0%

      // ����GPIO���裨�����޸�GPIO�������ã�
      LL_PERIPH_WE(LL_PERIPH_GPIO);

      // CH1: PB6 - ����Ч
      g_motor_pwm_ch1 = PWM_Init(CM_TMRA_4, FCG2_PERIPH_TMRA_4, TMRA_CH1,
                                  GPIO_PORT_B, GPIO_PIN_06, GPIO_FUNC_4,
                                  TMRA_MD_SAWTOOTH, TMRA_DIR_UP,
                                  6000, 0, PWM_ACTIVE_LOW);

      // CH2: PB7 - ����Ч
      g_motor_pwm_ch2 = PWM_Init(CM_TMRA_4, FCG2_PERIPH_TMRA_4, TMRA_CH2,
                                  GPIO_PORT_B, GPIO_PIN_07, GPIO_FUNC_4,
                                  TMRA_MD_SAWTOOTH, TMRA_DIR_UP,
                                  6000, 0, PWM_ACTIVE_LOW);

      // CH3: PB8 - ����Ч
      g_motor_pwm_ch3 = PWM_Init(CM_TMRA_4, FCG2_PERIPH_TMRA_4, TMRA_CH3,
                                  GPIO_PORT_B, GPIO_PIN_08, GPIO_FUNC_4,
                                  TMRA_MD_SAWTOOTH, TMRA_DIR_UP,
                                  6000, 0, PWM_ACTIVE_LOW);

      // CH4: PB9 - ����Ч
      g_motor_pwm_ch4 = PWM_Init(CM_TMRA_4, FCG2_PERIPH_TMRA_4, TMRA_CH4,
                                  GPIO_PORT_B, GPIO_PIN_09, GPIO_FUNC_4,
                                  TMRA_MD_SAWTOOTH, TMRA_DIR_UP,
                                  6000, 0, PWM_ACTIVE_LOW);

      // ����GPIO���裨������ú�������?????
      LL_PERIPH_WP(LL_PERIPH_GPIO);

      // ����FCG���裨ʹ�ܶ�ʱ��ʱ�ӣ�
      LL_PERIPH_WE(LL_PERIPH_FCG);

      // ��������PWM��ʱ��
      PWM_Start(&g_motor_pwm_ch1);
      PWM_Start(&g_motor_pwm_ch2);
      PWM_Start(&g_motor_pwm_ch3);
      PWM_Start(&g_motor_pwm_ch4);

      // ʹ�����?????
      PWM_OutputCmd(&g_motor_pwm_ch1, PWM_OUTPUT_ENABLE);
      PWM_OutputCmd(&g_motor_pwm_ch2, PWM_OUTPUT_ENABLE);
      PWM_OutputCmd(&g_motor_pwm_ch3, PWM_OUTPUT_ENABLE);
      PWM_OutputCmd(&g_motor_pwm_ch4, PWM_OUTPUT_ENABLE);

      // ����FCG����
      LL_PERIPH_WP(LL_PERIPH_FCG);

      MAIN_D("Motor PWM initialized: 4 channels, 20kHz, low active\r\n");
  }

  /*=============================================================================
   * 调试功能开�??
   *=============================================================================*/

  /* CAN 心跳包：1=开启（每秒发�? 0x12345678），0=关闭 */
  #define CAN_HEARTBEAT_ENABLE       (0U)

/* UDS/CAN 功能总开关：1=启用 UDS 诊断+CAN 通信�??0=仅保�?? Bootloader/APP */
/* UDS_CAN_ENABLE moved to main.h */

  /*=============================================================================
   * ISOTP/UDS 集成：CAN RX 回调和缓冲区
   *=============================================================================*/

#if UDS_CAN_ENABLE
  /* ISOTP 重组后的 UDS 消息输出缓冲区（最�?? 4096 字节�?? */
  static uint8_t s_uds_rx_buffer[4100];

  /*
   * ISOTP CAN RX 回调 �?? �?? CanIf 分发层在 RX 中断上下文外调用（main 循环中）�??
   * �?? CAN 帧送入 ISOTP 重组，完成后分发�?? UDS 诊断层�?
   */
  static void ISOTP_RxCallback(const CanMsg_t *pMsg)
  {
      uint16_t out_len = 0;
      int8_t result = isotp_receive_frame(0, pMsg->u32ID,
                                          (uint8_t*)pMsg->au8Data, pMsg->u8DLC,
                                          s_uds_rx_buffer, &out_len);
      if (result == ISOTP_OK) {
          uds_receive_handler(0, pMsg->u32ID, s_uds_rx_buffer, out_len);
      }
  }

  /*
   * 注册 ISOTP 所需�?? 4 �?? CAN ID �?? CanIf 过滤器�?
   * ISOTP 过滤列表�??0x18DA03F1, 0x18DAF103, 0x18FF8118, 0x18DBFFF0
   */
  static void ISOTP_RegisterRxFilters(void)
  {
      static const uint32_t s_isotp_can_ids[4] = {
          0x18DA03F1UL,  /* 物理寻址请求 ID (TBOX �?? 控制�??) */
          0x18DAF103UL,  /* 物理寻址响应 ID (控制�?? �?? TBOX) */
          0x18FF8118UL,  /* OTA 专用 ID */
          0x18DBFFF0UL   /* 功能寻址请求 ID (广播) */
      };

      CanIf_RxFilterEntry_t stcEntry;
      stcEntry.u32CanId   = 0UL;
      stcEntry.u32CanMask = 0UL;  /* 精确匹配 */
      stcEntry.u8Format   = CAN_ID_EXT;
      stcEntry.pfnCallback = &ISOTP_RxCallback;

      for (uint8_t i = 0U; i < 4U; i++) {
          stcEntry.u32CanId = s_isotp_can_ids[i];
          if (!CanIf_RegisterRxFilter(&stcEntry)) {
              MAIN_D("ISOTP: failed to register RX filter for CAN ID 0x%08X\r\n",
                     s_isotp_can_ids[i]);
          }
      }
      MAIN_D("ISOTP: 4 CAN ID RX filters registered\r\n");
  }
#endif /* UDS_CAN_ENABLE */

  /*=============================================================================
   * ������
   *=============================================================================*/

/*=============================================================================
 * APP1 固件 (起始地址 0x0001A000)
 *=============================================================================*/
int main(void)
{
    SCB->VTOR = APP1_START_ADDR;
    __enable_irq();
    Hardware_Init();
    MAIN_D("===== main(): APP1 PATH =====\r\n");
    App_CheckPendingUdsAck();
	tickTimer_DelayMs(500);
	GPIO_TOGGLE(GPIO_PORT_B, GPIO_PIN_07);
	tickTimer_DelayMs(500);
	GPIO_TOGGLE(GPIO_PORT_B, GPIO_PIN_07);
	tickTimer_DelayMs(500);
	GPIO_TOGGLE(GPIO_PORT_B, GPIO_PIN_07);
	tickTimer_DelayMs(500);
	GPIO_TOGGLE(GPIO_PORT_B, GPIO_PIN_07);
	tickTimer_DelayMs(500);
	GPIO_TOGGLE(GPIO_PORT_B, GPIO_PIN_07);
    
#if UDS_CAN_ENABLE
    MAIN_D("=== UDS Stack Init Start ===\r\n");
    isotp_init(0);
    ISOTP_RegisterRxFilters();
    FlashDownload_Init(NULL);
    uds_dl_init_fw();
    uds_init();
    MAIN_D("=== UDS Stack Init Done ===\r\n");
#endif
    
    {
        static uint64_t s_last_ms_tick = 0;
        while (1)
        {
#if UDS_CAN_ENABLE
            {
                uint64_t current_tick = tickTimer_GetCount();
                if (current_tick != s_last_ms_tick) {
                    s_last_ms_tick = current_tick;
                    if (g_delayed_reset_ms > 0) {
                        g_delayed_reset_ms--;
                        if (g_delayed_reset_ms == 0) {
                            MAIN_D("Delayed reset done, resetting...\r\n");
                            NVIC_SystemReset();
                            while(1);
                        }
                    }
                    isotp_ms_update();
                    uds_ms_update();
                    isotp_tx_process();
                }
            }
            FlashDownload_Task();
            CanIf_Poll();
#endif
        }
    }
}
