/*
 * Author : Stanley Cokro and Katherine Trusinski
 * ID: 115120484
 * Lab Section: 1
 * Description: code to display the C02, temperature, and relative humidity
 *stats All using I2C/TWI interface on AVR128DB48
 */

#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

// for display
char dsp_buff1[21] = {0};
char dsp_buff2[21] = {0};
char dsp_buff3[21] = {0};
char dsp_buff4[21] = {0};

#define SCD41_ADDR 0x62
#define SERLCD_ADDR 0x72

// includes for the serial lcd
#include "serlcd_i2c.h"
#include "serlcd_utils.h"

// includes for the Sensirion sensor
// proprietary software in use!!
#include "scd4x_i2c.h"
#include "sensirion_common.h"
#include "sensirion_i2c_hal.h"

#define sensirion_hal_sleep_us sensirion_i2c_hal_sleep_usec

void convert_and_print_serial(uint16_t *serial_raw) {
    uint64_t serial_as_int = 0;
    sensirion_common_to_integer((uint8_t *)serial_raw, (uint8_t *)&serial_as_int,
                                LONG_INTEGER, 6);
    // printf("0x%" PRIx64, serial_as_int);
}

int main(void) {
    int16_t error = NO_ERROR;
    sensirion_i2c_hal_init();
    scd4x_init(SCD41_I2C_ADDR_62);

    uint16_t serial_number[3] = {0};
    sensirion_hal_sleep_us(30000);
    // Ensure sensor is in clean state
    error = scd4x_wake_up();
    if (error != NO_ERROR) {
        // printf("error executing wake_up(): %i\n", error);
    }

    error = scd4x_stop_periodic_measurement();
    if (error != NO_ERROR) {
        // printf("error executing stop_periodic_measurement(): %i\n", error);
    }

    error = scd4x_reinit();
    if (error != NO_ERROR) {
        // printf("error executing reinit(): %i\n", error);
    }

    // Read out information about the sensor
    error = scd4x_get_serial_number(serial_number, 3);
    if (error != NO_ERROR) {
        // printf("error executing get_serial_number(): %i\n", error);
        return error;
    }
    // printf("serial number: ");
    convert_and_print_serial(serial_number);
    // printf("\n");
    //
    // If temperature offset and/or sensor altitude compensation
    // is required, you should call the respective functions here.
    // Check out the header file for the function definitions.
    // Start periodic measurements (5sec interval)
    error = scd4x_start_periodic_measurement();
    if (error != NO_ERROR) {
        // printf("error executing start_periodic_measurement(): %i\n", error);
        return error;
    }
    //
    // If low-power mode is required, switch to the low power
    // measurement function instead of the standard measurement
    // function above. Check out the header file for the definition.
    //
    bool data_ready = false;
    uint16_t co2_concentration = 0;
    int32_t temperature = 0;
    int32_t relative_humidity = 0;
    while (1) {
        //
        // Slow down the sampling to 0.2Hz.
        //
        sensirion_hal_sleep_us(5000000);
        update_twi0_serlcd(SERLCD_ADDR);
        //
        // If ambient pressure compensation during measurement
        // is required, you should call the respective functions here.
        // Check out the header file for the function definition.
        error = scd4x_get_data_ready_status(&data_ready);
        if (error != NO_ERROR) {
            // printf("error executing get_data_ready_status(): %i\n", error);
            continue;
        }
        while (!data_ready) {
            sensirion_hal_sleep_us(100000);
            error = scd4x_get_data_ready_status(&data_ready);
            if (error != NO_ERROR) {
                // printf("error executing get_data_ready_status(): %i\n", error);
                continue;
            }
        }
        error = scd4x_read_measurement(&co2_concentration, &temperature,
                                       &relative_humidity);
        if (error != NO_ERROR) {
            // printf("error executing read_measurement(): %i\n", error);
            continue;
        }

        clear_display_buffs();
        sprintf(dsp_buff1,"%d PPM CO|#", co2_concentration);
        // 0xdf is degree symbol
        sprintf(dsp_buff2,"%f %cC", (float) temperature, (char)0xdf);
        sprintf(dsp_buff3,"%f%% RH", (float) relative_humidity);

        //
        // Print results in physical units.
        // printf("CO2 concentration [ppm]: %u\n", co2_concentration);
        // printf("Temperature [m°C] : %i\n", temperature);
        // printf("Humidity [mRH]: %i\n", relative_humidity);
    }

    return NO_ERROR;
}