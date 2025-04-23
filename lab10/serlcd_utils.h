/*
 * serlcd_utils.h
 *
 * Created: 4/1/2025 4:53:32 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: This is another header file for the SerLCD module, which declares the function for clearing the display buffers.
 *
 */

extern char dsp_buff1[21];	// Definition f, s, e
extern char dsp_buff2[21];	// Definition f, s, e
extern char dsp_buff3[21];	// Definition f, s, e
extern char dsp_buff4[21];	// Definition f, s, e

void clear_display_buffs(void);	// Function definition