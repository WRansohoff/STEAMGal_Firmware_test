#include "main.h"

/**
 * Main program.
 */
int main(void) {
  // Define starting values for global variables.
  uled_state = 0;
  buzzer_state = 0;
  menu_state = TEST_MENU_LED_TOGGLE;
  draw_color = 0;

  // Enable the GPIOA clock (buttons on pins A2-A7,
  // user LED on pin A12).
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
  // Enable the GPIOB clock (I2C1 used on pins B6/B7,
  // buzzer on pin B0).
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);
  // Enable the I2C1 clock.
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);
  // Enable the SYSCFG clock for hardware interrupts.
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);

  // Setup GPIO pins A2, A3, A4, A5, A6, and A7 as inputs
  // with pullups. OType/Speed should have no effect.
  global_gpio_init_struct.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3 |
                                     GPIO_Pin_4 | GPIO_Pin_5 |
                                     GPIO_Pin_6 | GPIO_Pin_7;
  global_gpio_init_struct.GPIO_Mode = GPIO_Mode_IN;
  global_gpio_init_struct.GPIO_OType = GPIO_OType_PP;
  global_gpio_init_struct.GPIO_Speed = GPIO_Speed_Level_3;
  global_gpio_init_struct.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOA, &global_gpio_init_struct);

  // Setup GPIO pin A12 as push-pull output, no pupdr,
  // 10MHz max speed.
  global_gpio_init_struct.GPIO_Pin = GPIO_Pin_12;
  global_gpio_init_struct.GPIO_Mode = GPIO_Mode_OUT;
  global_gpio_init_struct.GPIO_OType = GPIO_OType_PP;
  global_gpio_init_struct.GPIO_Speed = GPIO_Speed_Level_2;
  global_gpio_init_struct.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOA, &global_gpio_init_struct);

  // Setup GPIO pin B0 as push-pull output, no pupdr,
  // 10MHz max speed.
  global_gpio_init_struct.GPIO_Pin = GPIO_Pin_0;
  global_gpio_init_struct.GPIO_Mode = GPIO_Mode_OUT;
  global_gpio_init_struct.GPIO_OType = GPIO_OType_PP;
  global_gpio_init_struct.GPIO_Speed = GPIO_Speed_Level_2;
  global_gpio_init_struct.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOB, &global_gpio_init_struct);

  // Set GPIO pins B6/B7 as alternate function mode 1 for I2C1.
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource6, GPIO_AF_1);
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource7, GPIO_AF_1);
  // Setup GPIO pins B6, B7 as open-drain alt. func.
  global_gpio_init_struct.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
  global_gpio_init_struct.GPIO_Mode = GPIO_Mode_AF;
  global_gpio_init_struct.GPIO_OType = GPIO_OType_OD;
  global_gpio_init_struct.GPIO_Speed = GPIO_Speed_Level_1;
  global_gpio_init_struct.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOB, &global_gpio_init_struct);

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
  i2c_periph_init(0x40005400, 0x50100103);
  // Initialize the SSD1306 OLED display.
  i2c_init_ssd1306(0x40005400);

  // Setup hardware interrupts on the EXTI lines associated
  // with the 6 button inputs.
  // Pins A2, A3 use the EXTI2_3 interrupt.
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource2);
  global_exti_init_struct.EXTI_Line = EXTI_Line2;
  global_exti_init_struct.EXTI_Mode = EXTI_Mode_Interrupt;
  global_exti_init_struct.EXTI_Trigger = EXTI_Trigger_Falling;
  global_exti_init_struct.EXTI_LineCmd = ENABLE;
  EXTI_Init(&global_exti_init_struct);
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource3);
  global_exti_init_struct.EXTI_Line = EXTI_Line3;
  EXTI_Init(&global_exti_init_struct);
  global_nvic_init_struct.NVIC_IRQChannel = EXTI2_3_IRQn;
  global_nvic_init_struct.NVIC_IRQChannelPriority = 0x03;
  global_nvic_init_struct.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&global_nvic_init_struct);
  // Pins A4, A5, A6, and A7 use the EXTI4_15 interrupt.
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource4);
  global_exti_init_struct.EXTI_Line = EXTI_Line4;
  EXTI_Init(&global_exti_init_struct);
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource5);
  global_exti_init_struct.EXTI_Line = EXTI_Line5;
  EXTI_Init(&global_exti_init_struct);
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource6);
  global_exti_init_struct.EXTI_Line = EXTI_Line6;
  EXTI_Init(&global_exti_init_struct);
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource7);
  global_exti_init_struct.EXTI_Line = EXTI_Line7;
  EXTI_Init(&global_exti_init_struct);
  global_nvic_init_struct.NVIC_IRQChannel = EXTI4_15_IRQn;
  global_nvic_init_struct.NVIC_IRQChannelPriority = 0x03;
  global_nvic_init_struct.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&global_nvic_init_struct);

  while (1) {
    // Clear the screen.
    /*
    oled_draw_rect(0, 0, 128, 64, 0, 0);
    // Draw an outline.
    oled_draw_rect(0, 0, 128, 64, 4, 1);
    // Draw two vertical lines near the screen edges.
    oled_draw_v_line(8, 8, 48, 1);
    oled_draw_v_line(120, 8, 48, 1);
    // Draw a horizontal line near the bottom.
    oled_draw_h_line(12, 46, 104, 1);
    // Draw some small text.
    snprintf(oled_line_buf, 23, "%s", "Small");
    oled_line_buf[23] = '\0';
    oled_draw_text(16, 28, oled_line_buf, 1, 'S');
    // Draw some large text.
    snprintf(oled_line_buf, 23, "%s", "Large");
    oled_line_buf[23] = '\0';
    oled_draw_text(56, 24, oled_line_buf, 1, 'L');
    // Draw two individual pixels.
    oled_write_pixel(16, 52, 1);
    oled_write_pixel(18, 54, 1);
    */
    draw_test_menu();
    // Communicate the framebuffer to the OLED screen.
    i2c_display_framebuffer(0x40005400, &oled_fb);

    // Set the onboard LED.
    if (uled_state) {
      GPIOA->ODR |= GPIO_Pin_12;
    }
    else {
      GPIOA->ODR &= ~GPIO_Pin_12;
    }

    // Play a tone on the buzzer if applicable.
    if (buzzer_state) {
      pulse_out_pin(&GPIOB->ODR, GPIO_Pin_0, 200, 500);
      pulse_out_pin(&GPIOB->ODR, GPIO_Pin_0, 400, 500);
      pulse_out_pin(&GPIOB->ODR, GPIO_Pin_0, 100, 250);
      buzzer_state = 0;
    }
  }
  return 0;
}
