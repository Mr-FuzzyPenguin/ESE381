/*
 * SCD41_multfile.c
 *
 * Created: 4/23/2025 7:12:35 PM
 * Author : Katherine Trusinski and Stanley Cokro
 * Description: 
 */ 

#include "serlcd_i2c.h"
#include "scd41_i2c.h"
#include "serlcd_utils.h"

#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

char dsp_buff1[21]; // Declaration f, s, e
char dsp_buff2[21]; // Declaration f, s, e
char dsp_buff3[21]; // Declaration f, s, e
char dsp_buff4[21]; // Declaration f, s, e

// for scd41
uint8_t checksum;

int main(void)
{
	init_twi0_SerLCD();
	init_twi0_scd41();
	
	while(1)
	{
		uint16_t raw;
		uint16_t co_ppm;
		float temperature;
		float rh;
		
		// Send command to start measurement
		write_twi0_scd41(0x72,0xe4);
		write_twi0_scd41(0x72,0xb8);
		
		// Wait until the sensor has valid data
		while (!((read_twi0_scd41(0x72, &checksum) & 0x03) && checksum)) {}
		end_communication_twi0_scd41();

		// from here on forth, the sensor is ready.
		
		// Read CO2 concentration
		write_twi0_scd41(0x72, 0xec);
		write_twi0_scd41(0x72, 0x05);
		raw = read_twi0_scd41(0x72, &checksum);
		co_ppm = raw;
		
		// Read temperature
		write_twi0_scd41(0x72, 0xec);
		write_twi0_scd41(0x72, 0x05);
		raw = read_twi0_scd41(0x72, &checksum);
		temperature = -45 + 175 * (raw / 65536);
		
		// Read relative humidity
		write_twi0_scd41(0x72, 0xec);
		write_twi0_scd41(0x72, 0x05);
		raw = read_twi0_scd41(0x72, &checksum);
		rh = 100 * (raw / 65536);
		
		// Prepare display buffers with sensor data
		sprintf(dsp_buff1, "CO2: %4u ppm", co_ppm);       
		sprintf(dsp_buff2, "Temp: %.2f C", temperature);   
		sprintf(dsp_buff3, "RH: %.2f %%", rh);             

		// Update the SerLCD display
		update_twi0_SerLCD();

		// Small delay to prevent overwhelming the display
		_delay_ms(1000);
	}
	return 0;
}

