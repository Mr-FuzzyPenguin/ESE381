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
#define F_CPU 4000000	// CPU clock in Hz
#define USART1_BAUD_RATE(BAUD_RATE) ((float)(4000000 * 64 / (16 * (float)BAUD_RATE)) + 0.5)

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

//#define RX_BUFFER_MARGIN ((uint8_t)(0.1 * USART_RX_BUFFER_SIZE + 0.5))

/* Static Variables */
static unsigned char USART_RxBuf[USART_RX_BUFFER_SIZE];
static  uint8_t USART_RxHead;  //orig. declared volatile - kls
static  uint8_t USART_RxTail;  //orig. declared volatile - kls
static unsigned char USART_TxBuf[USART_TX_BUFFER_SIZE];
static  uint8_t USART_TxHead;  //orig. declared volatile - kls
static  uint8_t USART_TxTail;  //orig. declared volatile - kls

//uint8_t counter = 0;

/* Function Prototypes */
void USART1_Init(uint32_t baud, uint8_t data_bits, unsigned char parity);
uint8_t USART1_Receive( void );
void USART1_Transmit( uint8_t data );
uint8_t DataInReceiveBuffer(void);

/* Converting to buffer off circular */
#define MAX_BUFF_SIZE 80
uint8_t rx_buff[MAX_BUFF_SIZE] = {0};
uint8_t rx_idx = 0;

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
        //Uncomment next statement to have operation independent of SW0
        USART1_Transmit( USART1_Receive() );

        //Uncomment next statement have operation dependent on SW0
        // if (!(VPORTB_IN & PIN2_bm)) USART1_Transmit( USART1_Receive() );
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

    rx_buff[rx_idx] = data;
    if (data == '\n')
    {
        rx_idx = 0;
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
unsigned char USART1_Receive( void )
{
    uint8_t tmptail;

    while ( USART_RxHead == USART_RxTail );  /* Wait for incomming data */
        tmptail = ( USART_RxTail + 1 ) & USART_RX_BUFFER_MASK;/* Calculate buffer index */
        USART_RxTail = tmptail;                /* Store new index */
        return USART_RxBuf[tmptail];           /* Return data */
}

/* Write function */
void USART1_Transmit( uint8_t data )
{
    uint8_t tmphead;
    /* Calculate buffer index */
    tmphead = ( USART_TxHead + 1 ) & USART_TX_BUFFER_MASK; /* Wait for free space in buffer */
    while ( tmphead == USART_TxTail );
    USART_TxBuf[tmphead] = data;           /* Store data in buffer */
    USART_TxHead = tmphead;                /* Store new index */

    USART1.CTRLA |= USART_DREIE_bm;                    /* Enable UDRE interrupt */
}

uint8_t DataInReceiveBuffer( void )
{
    return ( USART_RxHead != USART_RxTail ); /* Return 0 (FALSE) if the receive buffer is empty */
}