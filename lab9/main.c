/*
 *
 * circular_buffer_avr128_usart3.c
 *
 * Created: 3/1/2024 6:26:29 PM
 * Author : kshort
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdio.h>
#define F_CPU 4000000	// CPU clock in Hz
#define USART1_BAUD_RATE(BAUD_RATE) ((float)(4000000 * 64 / (16 * (float)BAUD_RATE)) + 0.5)

/* Static Variables */
// NOTE TO BE REMOVED

/* UART Buffer Defines */
#define USART_RX_BUFFER_SIZE 16     /* 2,4,8,16,32,64,128 or 256 bytes */
#define USART_TX_BUFFER_SIZE 16     /* 2,4,8,16,32,64,128 or 256 bytes */
#define USART_RX_BUFFER_MASK ( USART_RX_BUFFER_SIZE - 1 )
#define USART_TX_BUFFER_MASK ( USART_TX_BUFFER_SIZE - 1 )

#if ( USART_RX_BUFFER_SIZE & USART_RX_BUFFER_MASK )
#error RX buffer size is not a power of 2
#endif
#if ( USART_TX_BUFFER_SIZE & USART_TX_BUFFER_MASK )
#error TX buffer size is not a power of 2
#endif
static unsigned char USART_RxBuf[USART_RX_BUFFER_SIZE];
static uint8_t USART_RxHead;  //orig. declared volatile - kls
static uint8_t USART_RxTail;  //orig. declared volatile - kls
static unsigned char USART_TxBuf[USART_TX_BUFFER_SIZE];
static uint8_t USART_TxHead;  //orig. declared volatile - kls
static uint8_t USART_TxTail;  //orig. declared volatile - kls


/* Function Prototypes */
// done:
void USART1_Init(uint32_t baud, uint8_t data_bits, unsigned char parity);
void USART1_Receive( void );

// working on it:
void USART1_Transmit( uint8_t data );

// stuck:
// removed
//uint8_t DataInReceiveBuffer(void);

/* Converting to buffer off circular */
#define MAX_PAYLOAD_SIZE 80
#define MAX_BUFF_SIZE MAX_PAYLOAD_SIZE*2
#define RCV_PREAMBLE_SIZE 5

// receive utilities:
static char received_message[MAX_BUFF_SIZE] = {0};
static uint8_t rx_idx = 0;
static uint8_t RCV_preamble[RCV_PREAMBLE_SIZE];
static unsigned int txmtr_address;
static unsigned int rcv_data_len;
static char payload[MAX_PAYLOAD_SIZE];
static int RSSI;
static int SNR;



/* Main - a simple test program*/
int main( void )
{
    USART_RxTail = 0x00;	//clear buffer indexes, not really necessary
    USART_RxHead = 0x00;	//because they are automatically cleared since
    USART_TxTail = 0x00;	//declared as global uninitialized variables
    USART_TxHead = 0x00;

    // SW0 pin an input, must be pressed to transfer data from Rx to Tx buffer
    USART1_Init(115200, 8, 'd');   // Initialize USART1
    sei();           // Enable global interrupts => enable USART interrupts
    for( ; ; )        // Forever
    {
        USART1_Receive();
        //Uncomment next statement to have operation independent of SW0
        // USART1_Transmit( USART1_Receive() );

    }
    return 0;
}


// Function to initialize USART1
void USART1_Init(uint32_t baud, uint8_t data_bits, unsigned char parity)
{
    //Set PB0 as an output (Tx), initially 1, and PB1 as an input (Rx)
    PORTC.DIR &= ~PIN1_bm;	// RXD pin input
    PORTC.DIR |= PIN0_bm;	// TXD pin output
    PORTC.OUT |= PIN0_bm;	// TXD output value = 1

    //Set the baud rate
    USART1.BAUD = USART1_BAUD_RATE(baud);	// Load BAUD register

    //Enable Tx and Rx for operation and Tx and Rx interrupts
    USART1.CTRLB |= (USART_TXEN_bm | USART_RXEN_bm);
    USART1.CTRLA |= (USART_RXCIE_bm); //Enable RXCIE

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
            // error
            return;
    }

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
            // error
            return;
    }

    USART1.CTRLC = USART_CMODE_ASYNCHRONOUS_gc | p | USART_SBMODE_1BIT_gc | d;
}


/* Interrupt handlers */

ISR (USART1_RXC_vect)		//Receive complete interrupt
{
    uint8_t data;

    uint8_t tmphead;

    cli();		// Clear global interrupt flag

    /* Read the received data */
    data = USART1.RXDATAL;

    received_message[rx_idx++] = data;
    if (data == '\n')
    {
        // place a 0 at the end
        received_message[rx_idx] = 0;
    }

    sei();		// re enable global interrupts
}


ISR (USART1_DRE_vect)
{
    uint8_t tmptail;
    cli();		// Clear global interrupts

    /* Check if all data is transmitted */
    if ( USART_TxHead != USART_TxTail )
    {
        // Calculate buffer index
        tmptail = ( USART_TxTail + 1 ) & USART_TX_BUFFER_MASK;
        USART_TxTail = tmptail;      // Store new index

        USART1.TXDATAL = USART_TxBuf[tmptail];  // Start transmission
    }
    else
    {
        USART1.CTRLA &= ~(USART_DREIE_bm);     // Disable UDRE interrupt
    }
    sei();
}


/* Read function */
void USART1_Receive( void )
{
    // (transmission not ended)
    while (received_message[rx_idx] != '\n' ) {}

    // ah we have received something!
    sscanf(received_message, "%[^=]=%u,%u,%[^,],%d,%d,'\r','\n",RCV_preamble, &txmtr_address, &rcv_data_len, payload, &RSSI, &SNR);

    received_message[0] = 0;
    rx_idx = 0;
}

// Working on it:
/* Write function * /
void USART1_Transmit( uint8_t data )
{
    uint8_t tmphead;
    /* Calculate buffer index * /
    /* Wait for free space in buffer * /
    tmphead = ( USART_TxHead + 1 ) & USART_TX_BUFFER_MASK;
    while ( tmphead == USART_TxTail );
    USART_TxBuf[tmphead] = data;           /* Store data in buffer * /
    USART_TxHead = tmphead;                /* Store new index * /

    USART1.CTRLA |= USART_DREIE_bm;                    /* Enable UDRE interrupt * /
}
*/

// NOTE TO BE REMOVED
// uint8_t DataInReceiveBuffer( void )
// {
//     return ( USART_RxHead != USART_RxTail ); /* Return 0 (FALSE) if the receive buffer is empty */
// }