/*
* read_LM74_SPI.c
*
* Created: 3/24/2025 2:49:32 PM
*
* Author : Stanley Cokro and Katherine Trusinski
* ID: 115120484
* Lab Section: 1
* Description: Re-attempting to complete the previous lab
*              due to issues with getting correct display from
*              last time
*/

#include <avr/io.h>
#include <stdio.h>

#define F_CPU 4000000UL
#include <util/delay.h>


char dsp_buff1[21];
char dsp_buff2[21];
char dsp_buff3[21];
char dsp_buff4[21];

// This is code taken from example 7.1 for getting started with SPI
void init_spi0_SerLCD (void) { // Configure SPI0
	PORTA.DIR |= PIN4_bm; // Set MOSI pin to output
	PORTA.DIR &= ~PIN5_bm; // Set MISO pin to input
	PORTA.DIR |= PIN6_bm; // Set SCK pin to output
	PORTA.DIR |= PIN7_bm; // Set SS pin to output
	
	// start it logical high
	PORTA.OUT |= PIN7_bm;

	SPI0.CTRLB = SPI_SSD_bm | SPI_MODE_0_gc;
	SPI0.CTRLA = SPI_ENABLE_bm | SPI_MASTER_bm | SPI_PRESC_DIV64_gc;

}

// writes a single character.
void write_spi0_SerLCD(unsigned char data) { // Writing a character
	PORTA.OUT &= ~PIN7_bm; // Writing data... set SS pin value to LOW
	SPI0.DATA = data; // loads the data register
	while (!(SPI0.INTFLAGS & SPI_IF_bm)); // Waiting for data to be exchanged
	PORTA.OUT |= PIN7_bm; // Done! Set SS pin value to HIGH
}

// all this does is take the dsp_buff* and write it directly into SPI0.DATA
void update_SerLCD(void){
	// clear and write
	write_spi0_SerLCD('|');
	write_spi0_SerLCD('-');
	
	// start at the first line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+0);
	for (uint8_t i = 0; dsp_buff1[i];){
		write_spi0_SerLCD(dsp_buff1[i++]);
	}
	// move to second line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+64);
	for (uint8_t i = 0; dsp_buff2[i];){
		write_spi0_SerLCD(dsp_buff2[i++]);
	}
	// move to third line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+20);
	for (uint8_t i = 0; dsp_buff3[i];){
		write_spi0_SerLCD(dsp_buff3[i++]);
	}
	// move to fourth line	
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+84);
	for (uint8_t i = 0; dsp_buff4[i];){
		write_spi0_SerLCD(dsp_buff4[i++]);
	}
	
	// wait so that it doesn't write too frequently
	_delay_ms(500);
}

void clear_display_buffs(void){
	sprintf(dsp_buff1, "                    ");
	sprintf(dsp_buff2, "                    ");
	sprintf(dsp_buff3, "                    ");
	sprintf(dsp_buff4, "                    ");
}

void init_spi0_LM74(void)
{
	PORTA.DIR |= PIN4_bm; // Set MOSI pin to output
	PORTA.DIR &= ~PIN5_bm; // Set MISO pin to input
	PORTA.DIR |= PIN6_bm; // Set SCK pin to output
	// We are wiring LM74 to chip select of E0
	VPORTE_DIR |= PIN0_bm;
	// start it logical high
	VPORTE_OUT |= PIN0_bm;

	SPI0.CTRLB = SPI_SSD_bm | SPI_MODE_0_gc;
	SPI0.CTRLA = SPI_ENABLE_bm | SPI_MASTER_bm | SPI_PRESC_DIV16_gc;

}

uint16_t read_spi0_LM74(void){
	// Assert chip select!
	VPORTE_OUT &= ~PIN0_bm;
	
	// start the result as 0
	uint16_t result = 0;
	
	// load the data register with a dummy value
	// to get the clock going
	SPI0.DATA = 255;
	
	// check if ready to be read.
	while (!(SPI0.INTFLAGS & SPI_IF_bm)) {}
	// READY! Write to a variable.
	// (also clears the INTFLAGS)
	
	// store the first half of the data into result
	// then bitshift the result to the left 8 spaces
	result = SPI0.DATA;
	result <<= 8;
	
	// load the clock
	SPI0.DATA = 255;
	while (!(SPI0.INTFLAGS & SPI_IF_bm)) {}
	// read once more
	result |= SPI0.DATA;
	
	// communication over. Set the chip select high
	VPORTE_OUT |= PIN0_bm;
	
	return result;
}

int main(void)
{
	// initialize the LCD
	init_spi0_LM74();
	init_spi0_SerLCD();

	// display clear
	clear_display_buffs();

	// Clear board
	write_spi0_SerLCD('|');
	write_spi0_SerLCD('-');

	// alters and writes the clear command
	update_SerLCD();
	
	while(1)
	{		
		// start with a celcius_accumulator
		float celcius_accumulator = 0;
		uint16_t totalread = read_spi0_LM74();

		// scaling and writing
		float scale = 0.0625;

		// the magical two lines of code that I cannot explain why it works
		// but somehow gives us a string in binary. Don't ask how it works
		// because I have absolutely 0 clue.
		for (int i = 0; i < 16; i++)
			dsp_buff4[15-i]='0'+((totalread & (1 << i)) >> i);


		// THE INITIAL OFFSET
		totalread >>= 3;
		
		// loop through 12 times
		for (uint8_t i=0; i<12; i++)
		{
			// magic!
			celcius_accumulator += scale * (totalread % 2);
			totalread>>= 1;
			scale = scale*2;
			
		}
		// THE ENDING FINAL OFFSET
		celcius_accumulator -= 256 * (totalread% 2);			
	
		sprintf(dsp_buff1, "Human Readable LM74");
		sprintf(dsp_buff2, "%g C",celcius_accumulator);
		sprintf(dsp_buff3, "%g F", 32 + celcius_accumulator * 9 / 5);
		update_SerLCD();
	}
	return 0;
}

