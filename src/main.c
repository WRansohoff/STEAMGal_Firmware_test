#include "main.h"

/**
 * Main program.
 */
int main(void) {
  // Define starting values for global variables.
  uled_state = 0;
  buzzer_state = 0;
  buzzer_tone = 15000;
  buzzer_tone_hz = 15000;
  buzzer_pulses = 500;
  menu_state = TEST_MENU_LED_TOGGLE;
  last_top_row = TEST_MENU_LED_TOGGLE;
  draw_color = 0;

  // Enable the GPIOA clock (buttons on pins A2-A7,
  // user LED on pin A12).
  RCC->AHBENR |= RCC_AHBENR_GPIOAEN;
  // Enable the GPIOB clock (I2C1 used on pins B6/B7,
  // buzzer on pin B0).
  RCC->AHBENR |= RCC_AHBENR_GPIOBEN;
  // Enable the I2C1 clock.
  RCC->APB1ENR |= RCC_APB1ENR_I2C1EN;
  // Enable the SYSCFG clock for hardware interrupts.
  RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;

  // Setup GPIO pins A2, A3, A4, A5, A6, and A7 as inputs
  // with pullups, low-speed.
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_2, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_3, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_4, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_6, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_7, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_2, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_3, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_4, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_5, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_6, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_7, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_2, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_3, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_4, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_5, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_6, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_7, LL_GPIO_PULL_UP);

  // Setup GPIO pin A12 as push-pull output, no pupdr,
  // 10MHz max speed.
  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_12, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinOutputType(GPIOA, LL_GPIO_PIN_12, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_12, LL_GPIO_SPEED_FREQ_MEDIUM);
  LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_12, LL_GPIO_PULL_NO);

  // Setup GPIO pin B0 as push-pull output, no pupdr,
  // 10MHz max speed.
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_0, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_0, LL_GPIO_SPEED_FREQ_MEDIUM);
  LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_0, LL_GPIO_PULL_NO);

  #ifdef VVC_F0
    // Set GPIO pins B6/B7 as alternate function mode 1 for I2C1.
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_6, LL_GPIO_AF_1);
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_7, LL_GPIO_AF_1);
  #elif VVC_F3
    // Set GPIO pins B6/B7 as alternate function mode 4 for I2C1.
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_6, LL_GPIO_AF_4);
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_7, LL_GPIO_AF_4);
  #endif
  // Setup GPIO pins B6, B7 as open-drain alt. func. w/pullup.
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_ALTERNATE);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_ALTERNATE);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_6, LL_GPIO_OUTPUT_OPENDRAIN);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_7, LL_GPIO_OUTPUT_OPENDRAIN);
  LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_6, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_7, LL_GPIO_SPEED_FREQ_LOW);
  LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_6, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_7, LL_GPIO_PULL_UP);

  /*
   * Board connectors:
   * A8/A9:        4-pin JST connector 1
   * A10/A11:      4-pin JST connector 2
   * A15/B3/B4/B5: 'GPIO2' 6-pin header; can be used for SPI1.
   * A0/A1/B0:     'GPIO2' 5-pin header.
   * B6/B7:        I2C1 provided on a 4-pin header.
   * Note: Re-assigning pins B6/B7 will disable the screen!
   * The I2C1 bus is provided for communicating with other
   * devices such as sensors, not for GPIO. I2C supports
   * multiple receiving devices on the same line, so long
   * as they have different addresses.
   * (The screen's address is 0x78)
   */

  // Initialize the I2C peripheral and connected devices.
  // (1MHz @ 48MHz PLL)
  i2c_periph_init(I2C1_BASE, 0x50100103);
  // Initialize the SSD1306 OLED display.
  i2c_init_ssd1306(I2C1_BASE);

  // Setup hardware interrupts on the EXTI lines associated
  // with the 6 button inputs.
  // Pins A2, A3 use the EXTI2_3 interrupt.
  // Pins A4, A5, A6, and A7 use the EXTI4_15 interrupt.
  // Map EXTI lines to the GPIOA port.
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE2);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE3);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE4);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE5);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE6);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA,
                          LL_SYSCFG_EXTI_LINE7);
  exti_init_struct.Line_0_31 = (LL_EXTI_LINE_2 |
                                LL_EXTI_LINE_3 |
                                LL_EXTI_LINE_4 |
                                LL_EXTI_LINE_5 |
                                LL_EXTI_LINE_6 |
                                LL_EXTI_LINE_7);
  exti_init_struct.LineCommand = ENABLE;
  exti_init_struct.Mode = LL_EXTI_MODE_IT;
  exti_init_struct.Trigger = LL_EXTI_TRIGGER_FALLING;
  LL_EXTI_Init(&exti_init_struct);

  // The HAL 'cortex' libraries basically just call these
  // core functions for NVIC stuff, anyways:
  #ifdef VVC_F0
    NVIC_SetPriority(EXTI2_3_IRQn, 0x03);
    NVIC_EnableIRQ(EXTI2_3_IRQn);
    NVIC_SetPriority(EXTI4_15_IRQn, 0x03);
    NVIC_EnableIRQ(EXTI4_15_IRQn);
  #elif VVC_F3
    // On Cortex-M4 cores, we need to set an NVIC priority
    // grouping and subpriorities as well as normal priorities:
    // 0x07: 0 Pri / 4 SubPri
    // 0x06: 1 Pri / 3 SubPri
    // 0x05: 2 Pri / 2 SubPri
    // 0x04: 3 Pri / 1 SubPri
    // 0x03: 4 Pri / 0 SubPri
    // Use 2 bits for 'priority' and 2 bits for 'subpriority'.
    NVIC_SetPriorityGrouping(0x05);
    uint32_t exti_pri_encoding = NVIC_EncodePriority(0x05, 0x03, 0x03);
    NVIC_SetPriority(EXTI2_TSC_IRQn, exti_pri_encoding);
    NVIC_EnableIRQ(EXTI2_TSC_IRQn);
    NVIC_SetPriority(EXTI3_IRQn, exti_pri_encoding);
    NVIC_EnableIRQ(EXTI3_IRQn);
    NVIC_SetPriority(EXTI4_IRQn, exti_pri_encoding);
    NVIC_EnableIRQ(EXTI4_IRQn);
    NVIC_SetPriority(EXTI9_5_IRQn, exti_pri_encoding);
    NVIC_EnableIRQ(EXTI9_5_IRQn);
  #endif

  while (1) {
    draw_test_menu();
    // Communicate the framebuffer to the OLED screen.
    i2c_display_framebuffer(I2C1_BASE, &oled_fb);

    // Set the onboard LED.
    if (uled_state) {
      GPIOA->ODR |= LL_GPIO_PIN_12;
    }
    else {
      GPIOA->ODR &= ~LL_GPIO_PIN_12;
    }

    // Play a tone on the buzzer if applicable.
    if (buzzer_state) {
      // This probably is not actually an accurate conversion
      // to Hertz. But it's a 48MHz clock so...
      buzzer_tone = 48000000 / buzzer_tone_hz;
      // Play for about 1/8-second. So:
      // X pulses * Y cycles = 6000000
      buzzer_pulses = 6000000 / buzzer_tone;
      pulse_out_pin(&GPIOB->ODR,
                    LL_GPIO_PIN_0,
                    buzzer_tone,
                    buzzer_pulses);
      buzzer_state = 0;
    }
  }
  return 0;
}
