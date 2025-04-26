/*
 * Author : Stanley Cokro and Katherine Trusinski
 * ID: 115120484
 * Lab Section: 1
 * Description: code to display the C02, temperature, and relative humidity stats
 *				All using I2C/TWI interface on AVR128DB48
 */

#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

#define F_CPU 4000000UL
#include <util/delay.h>

// for display
char dsp_buff1[21];
char dsp_buff2[21];
char dsp_buff3[21];
char dsp_buff4[21];

#define SCD41_ADDR 0x62
#define SERLCD_ADDR 0x72

#include "serlcd_i2c.h"
#include "scd41_i2c.h"
#include "serlcd_utils.h"


int main(void)
{
	
	uint8_t checksum;
	
    init_twi0_serlcd();
	init_twi0_scd41();

	write_twi0_scd41(SCD41_ADDR, 0x21b1);
	end_communication_twi0_scd41();
	
	/*
	// making custom character
	// run this once, and never again.
	write_twi0_serlcd(SERLCD_ADDR, '|');
	write_twi0_serlcd(SERLCD_ADDR, 27);
	write_twi0_serlcd(SERLCD_ADDR, 0b00000);
	write_twi0_serlcd(SERLCD_ADDR, 0b00000);
	write_twi0_serlcd(SERLCD_ADDR, 0b00000);
	write_twi0_serlcd(SERLCD_ADDR, 0b01100);
	write_twi0_serlcd(SERLCD_ADDR, 0b10010);
	write_twi0_serlcd(SERLCD_ADDR, 0b00100);
	write_twi0_serlcd(SERLCD_ADDR, 0b01000);
	write_twi0_serlcd(SERLCD_ADDR, 0b11110);
	end_communication_twi0_serlcd();
	*/
	_delay_ms(50);
	
	while(1)
	{	
		uint16_t raw;
		
		int co_ppm;
		float temperature;
		float rh;
		
		volatile uint8_t msbyte, lsbyte;
		
		ensure_ready_scd41(SCD41_ADDR);

		// from here on forth, the sensor is ready.
		write_twi0_scd41(SCD41_ADDR, 0xec05);
		
		start_communication_twi0_scd41(SCD41_ADDR, READ);
		msbyte = read_twi0_scd41(SCD41_ADDR,1);
		lsbyte = read_twi0_scd41(SCD41_ADDR,1);
		
		raw = (uint16_t) msbyte << 8 | lsbyte;
		checksum = read_twi0_scd41(SCD41_ADDR,1); // continuously read
		co_ppm = raw;
		
		msbyte = read_twi0_scd41(SCD41_ADDR,1);
		lsbyte = read_twi0_scd41(SCD41_ADDR,1);
		
		raw = (uint16_t) msbyte << 8 | lsbyte;
		checksum = read_twi0_scd41(SCD41_ADDR,1); // continuously read
		temperature = (float)(-45.0 + (175.0 * ((float)raw / 65536.0)));
		
		msbyte = read_twi0_scd41(SCD41_ADDR,1);
		lsbyte = read_twi0_scd41(SCD41_ADDR,1);
		
		raw = (uint16_t) msbyte << 8 | lsbyte;
		checksum = read_twi0_scd41(SCD41_ADDR,0); // terminate reading
		rh = (float)(100.0 * ((float) raw / 65536.0));
		
		_delay_ms(500);

		// |# is subscript 2
		sprintf(dsp_buff1,"%d PPM CO|#", co_ppm);
		// 0xdf is degree symbol
		sprintf(dsp_buff2,"%f %cC", temperature, (char)0xdf);
		sprintf(dsp_buff3,"%f%% RH", rh);
		update_twi0_serlcd(SERLCD_ADDR);
	}
    return 0;
}