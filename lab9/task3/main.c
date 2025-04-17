/*
 * LoraWAN_reply.c
 *
 * Created: 4/16/2025 2:55:41 PM
 * Author : Katherine Trusinski and Stanley Cokro
 * Description: Bi-directional communication with address-based replies.
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define USART1_BAUD_RATE(BAUD_RATE) ((float)(4000000 * 64 / (16 * (float)BAUD_RATE)) + 0.5)
#define F_CPU 4000000 // CPU clock in Hz

// Buffer sizes
#define RECEIVED_BUFFER_SIZE 80
#define PAYLOAD_BUFFER_SIZE 40
#define REPLY_BUFFER_SIZE 80

// Buffers and control variables
char received_message[RECEIVED_BUFFER_SIZE] = {0}; // Buffer for incoming message
volatile uint8_t received_index = 0;              // Index for incoming message
volatile uint8_t message_complete = 0;            // Flag for completed message

char payload[PAYLOAD_BUFFER_SIZE] = {0};          // Buffer for extracted payload
char reply_message[REPLY_BUFFER_SIZE] = {0};      // Buffer for outgoing reply

volatile uint8_t reply_index = 0;                 // Index for reply transmission
volatile uint8_t reply_length = 0;                // Length of reply message

// Additional fields for parsing
static char RCV_preamble[10] = {0};
static volatile unsigned int txmtr_address = 0;
static volatile unsigned int rcv_data_len = 0;
static volatile int RSSI = 0;
static volatile int SNR = 0;

// Device address for LW1
#define LW1_ADDRESS 2 // Change this to match your bench number

// Function prototypes
void USART1_Init(uint32_t baud, uint8_t data_bits, unsigned char parity);
void parse_received_message(void);
void send_reply_message(void);

int main(void)
{
    USART1_Init(115200, 8, 'd'); // Initialize USART1
    sei(); // Enable global interrupts

    while (1)
    {
        // Check if a message is received
        if (message_complete)
        {
            parse_received_message(); // Parse the message

            // Verify if the message is from PC (bench + 30)
            if (txmtr_address == (LW1_ADDRESS + 30))
            {
                send_reply_message(); // Prepare reply message and start transmission
				message_complete = 0; // Reset the flag
            }
        }
    }

    return 0;
}

// Function to initialize USART1
void USART1_Init(uint32_t baud, uint8_t data_bits, unsigned char parity)
{
    // Configure pins for TX and RX
    PORTC.DIR &= ~PIN1_bm; // RXD as input
    PORTC.DIR |= PIN0_bm;  // TXD as output
    PORTC.OUT |= PIN0_bm;  // TXD idle state high

    // Set the baud rate
    USART1.BAUD = USART1_BAUD_RATE(baud);

    // Enable TX, RX, and RX Complete interrupt
    USART1.CTRLB |= (USART_RXEN_bm | USART_TXEN_bm);
    USART1.CTRLA |= (USART_RXCIE_bm); // Enable RX Complete interrupt

    // Configure parity
    uint8_t p;
    switch (parity)
    {
        case 'd':
            p = USART_PMODE_DISABLED_gc;
            break;
        case 'e':
            p = USART_PMODE_EVEN_gc;
            break;
        case 'o':
            p = USART_PMODE_ODD_gc;
            break;
        default:
            return;
    }

    // Configure data bits
    uint8_t d;
    switch (data_bits)
    {
        case 8:
            d = USART_CHSIZE_8BIT_gc;
            break;
        case 7:
            d = USART_CHSIZE_7BIT_gc;
            break;
        case 6:
            d = USART_CHSIZE_6BIT_gc;
            break;
        case 5:
            d = USART_CHSIZE_5BIT_gc;
            break;
        default:
            return;
    }

    // Configure USART control settings
    USART1.CTRLC = USART_CMODE_ASYNCHRONOUS_gc | p | USART_SBMODE_1BIT_gc | d;
}


// USART RX Complete interrupt service routine
ISR(USART1_RXC_vect)
{
    // Clear global interrupts
    cli();

    char received_char = USART1.RXDATAL; // Read received character
    received_message[received_index] = received_char; // Store character in buffer

    if (received_char == '\n') // End of message
    {
        message_complete = 1; // Mark message as complete
        received_index = 0;   // Reset index for the next message
    }
    // reached the end
    else if (received_index < RECEIVED_BUFFER_SIZE - 1)
    {
        received_message[++received_index] = '\0';            // Null-terminate
    }

    sei(); // Re-enable global interrupts
}

// Data Register Empty interrupt service routine
ISR(USART1_DRE_vect)
{
    if (reply_index < reply_length) // Check if there is data left to send
    {
        USART1.TXDATAL = reply_message[reply_index++]; // Send next byte
    }
    else
    {
        USART1.CTRLA &= ~USART_DREIE_bm; // Disable DRE interrupt when done
    }
}

// Function to parse the received message
// Function to parse the received message
void parse_received_message(void)
{
    sscanf(received_message, "%[^=]=%u,%u,%[^,],%d,%d,'\r''\n'",
           RCV_preamble, &txmtr_address, &rcv_data_len, payload, &RSSI, &SNR);
    char temp = 0+0;
}

// Function to send the reply message
void send_reply_message(void)
{
    // check if the received message is NOT +OK (AKA, actual data)
    if (strcmp("+OK\r\n", received_message)!= 0)
    {
        snprintf(reply_message, REPLY_BUFFER_SIZE, "AT+SEND=%u,%u,%s\r\n", LW1_ADDRESS + 30, (unsigned int) strlen(payload), payload);
        reply_index = 0;
        reply_length = strlen(reply_message);

        USART1.CTRLA |= USART_DREIE_bm; // Enable DRE interrupt to start transmission
    }
}
