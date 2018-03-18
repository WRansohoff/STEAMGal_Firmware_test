#include "interrupts_c.h"

// C-language hardware interrupt method definitions.
/*
 * Each EXTI line between 0-15 can map to a GPIO pin.
 * The EXTI line number is the same as the pin number, and
 * each pin number can only have its interrupt active on
 * ONE (1) of its GPIO banks. So for example, you can have
 * an interrupt on pin A0 (EXTI line 0) and pin B1 (EXTI line 1)
 * at the same time, but not on pins A1 (EXTI line 1)
 * and B1 (EXTI line 1), since they share the same interrupt line.
 */
/*
 * EXTI0_1: Handle interrupt lines 0 and 1.
 */
void EXTI0_1_IRQ_handler(void) {
if (EXTI_GetITStatus(EXTI_Line0) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line0);
}
if (EXTI_GetITStatus(EXTI_Line1) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line1);
}
return;
}

/*
 * EXTI2_3: Handle interrupt lines 2 and 3.
 */
void EXTI2_3_IRQ_handler(void) {
if (EXTI_GetITStatus(EXTI_Line2) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line2);
  // 'Left' button.
  if (menu_state == TEST_MENU_SOUND_BUZZER) {
    menu_state = TEST_MENU_LED_TOGGLE;
  }
  else if (menu_state == TEST_MENU_BUZZER_TONE) {
    buzzer_tone -= 5;
  }
}
if (EXTI_GetITStatus(EXTI_Line3) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line3);
  // 'Up' button.
  if (menu_state == TEST_MENU_BUZZER_TONE) {
    menu_state = last_top_row;
  }
}
return;
}

/*
 * EXTI4_15: Handle interrupt lines between [4:15], inclusive.
 */
void EXTI4_15_IRQ_handler(void) {
if (EXTI_GetITStatus(EXTI_Line4) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line4);
  // 'Down' button.
  if (menu_state == TEST_MENU_LED_TOGGLE ||
      menu_state == TEST_MENU_SOUND_BUZZER) {
    last_top_row = menu_state;
    menu_state = TEST_MENU_BUZZER_TONE;
  }
}
if (EXTI_GetITStatus(EXTI_Line5) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line5);
  // 'Right' button.
  if (menu_state == TEST_MENU_LED_TOGGLE) {
    menu_state = TEST_MENU_SOUND_BUZZER;
  }
  else if (menu_state == TEST_MENU_BUZZER_TONE) {
    buzzer_tone += 5;
  }
}
if (EXTI_GetITStatus(EXTI_Line6) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line6);
  // 'B' button.
  // Currently, do nothing.
}
if (EXTI_GetITStatus(EXTI_Line7) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line7);
  // 'A' button.
  // Action depends on menu state.
  if (menu_state == TEST_MENU_LED_TOGGLE) {
    uled_state = !uled_state;
  }
  else if (menu_state == TEST_MENU_SOUND_BUZZER) {
    buzzer_state = 1;
  }
}
if (EXTI_GetITStatus(EXTI_Line8) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line8);
}
if (EXTI_GetITStatus(EXTI_Line9) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line9);
}
if (EXTI_GetITStatus(EXTI_Line10) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line10);
}
if (EXTI_GetITStatus(EXTI_Line11) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line11);
}
if (EXTI_GetITStatus(EXTI_Line12) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line12);
}
if (EXTI_GetITStatus(EXTI_Line13) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line13);
}
if (EXTI_GetITStatus(EXTI_Line14) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line14);
}
if (EXTI_GetITStatus(EXTI_Line15) != RESET) {
  EXTI_ClearITPendingBit(EXTI_Line15);
}
return;
}
