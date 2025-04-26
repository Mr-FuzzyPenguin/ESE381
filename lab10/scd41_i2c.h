/*
 * scd41_i2c.h
 *
 * Created: 4/23/2025 7:32:22 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: Header file for the SCD41 sensor interface. It declares functions and constants for initializing the sensor and reading/writing data using I2C.
 */ 

#ifndef SCD41_I2C_H
#define SCD41_I2C_H

#include <stdint.h> // For fixed-width integer types

// Constants for SCD41 communication
#define SCD41_ADDR 0x62  // I2C address of the SCD41 sensor
#define READ 1           // Read mode for I2C communication
#define WRITE 0          // Write mode for I2C communication

// Function declarations for init, start, end
void init_twi0_scd41(void); // Initializes the TWI/I2C interface for the SCD41
void start_communication_twi0_scd41(uint8_t saddr, uint8_t rw); // Starts I2C communication with the sensor
void end_communication_twi0_scd41(void);                       // Ends I2C communication with the sensor

// Sends data to the SCD41 sensor
int write_twi0_scd41(uint8_t saddr, uint16_t data); 

// Reads data from the SCD41 sensor
uint8_t read_twi0_scd41(uint8_t saddr, uint8_t continuing);

// ensures the scd41 is ready after the function call 
void ensure_ready_scd41(uint8_t saddr); 

#endif /* SCD41_I2C_H */