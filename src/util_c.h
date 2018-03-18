#ifndef _VVC_UTIL_C_H
#define _VVC_UTIL_C_H

#include "global.h"

// C-languages utility method signatures.
void oled_draw_h_line(int x, int y, int w, unsigned char color);
void oled_draw_v_line(int x, int y, int h, unsigned char color);
void oled_draw_rect(int x, int y, int w, int h,
                    int outline, unsigned char color);
void oled_write_pixel(int x, int y, unsigned char color);
void oled_draw_letter(int x, int y, unsigned int w0, unsigned int w1, unsigned char color, char size);
void oled_draw_letter_c(int x, int y, char c, unsigned char color, char size);
void oled_draw_letter_i(int x, int y, int ic, unsigned char color, char size);
void oled_draw_text(int x, int y, char* cc, unsigned char color, char size);

#endif
