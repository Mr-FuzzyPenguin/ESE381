/*
* clk_main_ext_32768Hz.c
*
* Created: 2/20/2025 22:00:15 PM
* Author : Stanley Cokro
* ID: 115120484
* Lab Section: 1
* Description: Testing both internal and crystal oscillators
*              Button roulette edition.
*
*              Start up times are going to be crucial.
*
*              The osc that is being used is Schrodinger's
*              oscillator. There is no way to determine the
*              current oscillator being used.
*
*              You can only determine which is being used on
*              the next button press (taking measurement).
*
*              If it takes a bit of time before oscillating
*              crystal is being used. Else, internal RC.
*
*              This is analogous to Schrodinger's cat. You
*              cannot tell if the cat is dead or alive
*              until the next measured instance which would
*              be when you open the box.
*
* Testing procedure: Press the button an unknown amount of
*                    time (or have a friend or lab partner)
*                    do so. Your mode has been "shuffled"
*                    and you cannot determine whether or
*                    not you are using the internal RC
*                    oscillator or if you are using the
*                    crystal oscillator. Connect an
*                    oscilloscope probe to pin A7. You now
*                    need to observe the waveform carefully.
*                    Press the button, and look carefully at
*                    the oscilloscope. When you hit the
*                    button, if the button causes the screen
*                    to "flick" instantaneously, then that
*                    means that it's an RC oscillator. The RC
*                    oscillator has a startup time of roughly
*                    400 microseconds. However, the crystal
*                    oscillator has a startup time of UP TO
*                    2 seconds, with a minimum of roughly
*                    300 milliseconds. That is a significant
*                    difference that is noticeable with the
*                    human eye. When you eventually wait and
*                    observe the eventual screen flick on the
*                    oscilloscope as if it was displaying a
*                    different waveform, you can be certain
*                    the noticeably longer delay is the
*                    crystal "waking-up".
*/

#include <avr/io.h>

int main(void)
{
    // next (which is first) button press, enables crystal
    uint8_t mode = 0;

    // set B2 as an input
    VPORTB_DIR &= ~PIN2_bm;
    // PULLUP resistor for PB2
    PORTB.PIN2CTRL = PORT_PULLUPEN_bm;

    // loop code goes here
    while(1) {
        // check if button is pressed
        if (!(VPORTB_IN & PIN2_bm))
        {
            // trap button-holding
            while (!(VPORTB_IN & PIN2_bm)) {}

            // when mode is 0, turn on the internal oscillator at 32KHz
            if (mode == 0)
            {
                CPU_CCP = CCP_IOREG_gc; // unlock temporarily
                // Enable CLKOUT and use the internal oscillator 32KHz
                CLKCTRL.MCLKCTRLA = CLKCTRL_CLKOUT_bm | CLKCTRL_CLKSEL_OSC32K_gc;

                CPU_CCP = CCP_IOREG_gc; // unlock temporarily
                // Make the oscillator run unconditionally
                CLKCTRL.OSC32KCTRLA = CLKCTRL_RUNSTDBY_bm;

                // disable everything (and turns off the crystal)
                CPU_CCP = CCP_IOREG_gc; // unlock temporarily
                CLKCTRL.XOSC32KCTRLA = ~CLKCTRL_ENABLE_bm;

                mode = 1;
            }
            // when mode is 1, turn on the crystal oscillator
            else if (mode == 1)
            {
                CPU_CCP = CCP_IOREG_gc; // unlock temporarily
                // Enable CLKOUT and use the crystal oscillator 32KHz
                CLKCTRL.MCLKCTRLA = CLKCTRL_CLKOUT_bm | CLKCTRL_CLKSEL_XOSC32K_gc;

                // Enable CLKOUT and use the crystal oscillator 32KHz
                CPU_CCP = CCP_IOREG_gc; // unlock temporarily
                // Run unconditionally (CLKCTRL_RUNSTDBY_bm),
                // Set Crystal Start-Up Time to 16k cycles
                // Select external crystal
                // Disable low power mode
                // Enable the XOSC32K
                CLKCTRL.XOSC32KCTRLA = CLKCTRL_RUNSTDBY_bm | CLKCTRL_CSUT_64K_gc | CLKCTRL_SELHF_XTAL_gc & (~CLKCTRL_LPMODE_bm) | CLKCTRL_ENABLE_bm;
                mode = 0;
            }

            // obligatory small delay here to prevent bouncing
            // I could use _delay_ms or _delay_us but... I
            // don't want to have to download the .h into the code
            for (int i=0; i<50; i++) {}
        }
    }

    // Patrick Pygoscelis adeliae says, "let me know if there's anything else I can help you with!"
    return 0;
}
