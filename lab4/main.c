/*
 * USART_write_message.c
 *
 * Created: 2/26/2025 9:07:51 AM
 * Author : Katherine Trusinski and Stanley Cokro
 * Description: Modifying program from task 3, lab 4, to send message to SerLCD
 */

#include <avr/io.h>

void USART3_init(void) {
    // Set the baud rate (USARTn.BAUD)
    // Using (64 * f_CLKPER) / (16 * f_baud) formula from the datasheet.
    // Clock frequency (f_CLKPER) = 4,000,000 Hz, Baud rate (f_baud) = 9600.
    USART3.BAUD = 5000/3;

    // Set the frame format and mode of operation (USARTn.CTRLC)
    USART3.CTRLC = USART_CMODE_ASYNCHRONOUS_gc | USART_PMODE_DISABLED_gc |
    USART_SBMODE_1BIT_gc | USART_CHSIZE_8BIT_gc;

    // Enable transmitter only (USARTn.CTRLB)
    USART3.CTRLB = USART_TXEN_bm;

    // Set PB0 (TX) as output
    VPORTB.DIR |= PIN0_bm;
}

void USART3_sendChar(char c) {
    // Wait until the transmit buffer is empty (USART_DREIF)
    while (!(USART3.STATUS & USART_DREIF_bm)) {}
    USART3.TXDATAL = c;
}

int main(void) {
    USART3_init(); // Initialize USART3

    USART3_sendChar('|');
    USART3_sendChar('-');
    uint8_t message[] = "Hello World\0"; // Message to be sent, put 9 spaces incase newline does not work
    uint8_t i = 0;
    while (message[i] != '\0') {
        USART3_sendChar(message[i]); // Send the current character
        i++; // Move to the next character
    }
    // some code to move the cursor into the new row
    USART3_sendChar(254);
    USART3_sendChar(128+64);
    uint8_t message2[] = "What happens now\0";
    i = 0;
    while (message2[i] != '\0') {
        USART3_sendChar(message[i]); // Send the current character
        i++; // Move to the next character
    }
}
