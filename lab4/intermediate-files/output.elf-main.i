# 0 "main.c"
# 1 "/home/penguin/Code/projects/ese381/review/lab4//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 9 "main.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 99 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 37 "/usr/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/14.2.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/14.2.0/include/stdint.h" 3 4
# 1 "/usr/avr/include/stdint.h" 1 3 4
# 125 "/usr/avr/include/stdint.h" 3 4

# 125 "/usr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/14.2.0/include/stdint.h" 2 3 4
# 38 "/usr/avr/include/inttypes.h" 2 3
# 77 "/usr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;





typedef uint32_t uint_farptr_t;
# 127 "/usr/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/avr/include/avr/io.h" 2 3
# 717 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/ioavr128db48.h" 1 3
# 57 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef volatile uint8_t register8_t;
typedef volatile uint16_t register16_t;
typedef volatile uint32_t register32_t;
# 107 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct AC_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t MUXCTRL;
    register8_t reserved_1[2];
    register8_t DACREF;
    register8_t INTCTRL;
    register8_t STATUS;
} AC_t;


typedef enum AC_HYSMODE_enum
{
    AC_HYSMODE_NONE_gc = (0x00<<1),
    AC_HYSMODE_SMALL_gc = (0x01<<1),
    AC_HYSMODE_MEDIUM_gc = (0x02<<1),
    AC_HYSMODE_LARGE_gc = (0x03<<1)
} AC_HYSMODE_t;


typedef enum AC_INITVAL_enum
{
    AC_INITVAL_LOW_gc = (0x00<<6),
    AC_INITVAL_HIGH_gc = (0x01<<6)
} AC_INITVAL_t;


typedef enum AC_INTMODE_NORMAL_enum
{
    AC_INTMODE_NORMAL_BOTHEDGE_gc = (0x00<<4),
    AC_INTMODE_NORMAL_NEGEDGE_gc = (0x02<<4),
    AC_INTMODE_NORMAL_POSEDGE_gc = (0x03<<4)
} AC_INTMODE_NORMAL_t;


typedef enum AC_INTMODE_WINDOW_enum
{
    AC_INTMODE_WINDOW_ABOVE_gc = (0x00<<4),
    AC_INTMODE_WINDOW_INSIDE_gc = (0x01<<4),
    AC_INTMODE_WINDOW_BELOW_gc = (0x02<<4),
    AC_INTMODE_WINDOW_OUTSIDE_gc = (0x03<<4)
} AC_INTMODE_WINDOW_t;


typedef enum AC_MUXNEG_enum
{
    AC_MUXNEG_AINN0_gc = (0x00<<0),
    AC_MUXNEG_AINN1_gc = (0x01<<0),
    AC_MUXNEG_AINN2_gc = (0x02<<0),
    AC_MUXNEG_DACREF_gc = (0x03<<0)
} AC_MUXNEG_t;


typedef enum AC_MUXPOS_enum
{
    AC_MUXPOS_AINP0_gc = (0x00<<3),
    AC_MUXPOS_AINP1_gc = (0x01<<3),
    AC_MUXPOS_AINP2_gc = (0x02<<3),
    AC_MUXPOS_AINP3_gc = (0x03<<3)
} AC_MUXPOS_t;


typedef enum AC_POWER_enum
{
    AC_POWER_PROFILE0_gc = (0x00<<3),
    AC_POWER_PROFILE1_gc = (0x01<<3),
    AC_POWER_PROFILE2_gc = (0x02<<3)
} AC_POWER_t;


typedef enum AC_WINSEL_enum
{
    AC_WINSEL_DISABLED_gc = (0x00<<0),
    AC_WINSEL_UPSEL1_gc = (0x01<<0),
    AC_WINSEL_UPSEL2_gc = (0x02<<0)
} AC_WINSEL_t;


typedef enum AC_WINSTATE_enum
{
    AC_WINSTATE_ABOVE_gc = (0x00<<6),
    AC_WINSTATE_INSIDE_gc = (0x01<<6),
    AC_WINSTATE_BELOW_gc = (0x02<<6)
} AC_WINSTATE_t;
# 200 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct ADC_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLE;
    register8_t SAMPCTRL;
    register8_t reserved_1[2];
    register8_t MUXPOS;
    register8_t MUXNEG;
    register8_t COMMAND;
    register8_t EVCTRL;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t DBGCTRL;
    register8_t TEMP;
    __extension__ union { register16_t RES; struct { register8_t RESL; register8_t RESH; }; };
    __extension__ union { register16_t WINLT; struct { register8_t WINLTL; register8_t WINLTH; }; };
    __extension__ union { register16_t WINHT; struct { register8_t WINHTL; register8_t WINHTH; }; };
    register8_t reserved_2[2];
} ADC_t;


typedef enum ADC_CONVMODE_enum
{
    ADC_CONVMODE_SINGLEENDED_gc = (0x00<<5),
    ADC_CONVMODE_DIFF_gc = (0x01<<5)
} ADC_CONVMODE_t;


typedef enum ADC_INITDLY_enum
{
    ADC_INITDLY_DLY0_gc = (0x00<<5),
    ADC_INITDLY_DLY16_gc = (0x01<<5),
    ADC_INITDLY_DLY32_gc = (0x02<<5),
    ADC_INITDLY_DLY64_gc = (0x03<<5),
    ADC_INITDLY_DLY128_gc = (0x04<<5),
    ADC_INITDLY_DLY256_gc = (0x05<<5)
} ADC_INITDLY_t;


typedef enum ADC_MUXNEG_enum
{
    ADC_MUXNEG_AIN0_gc = (0x00<<0),
    ADC_MUXNEG_AIN1_gc = (0x01<<0),
    ADC_MUXNEG_AIN2_gc = (0x02<<0),
    ADC_MUXNEG_AIN3_gc = (0x03<<0),
    ADC_MUXNEG_AIN4_gc = (0x04<<0),
    ADC_MUXNEG_AIN5_gc = (0x05<<0),
    ADC_MUXNEG_AIN6_gc = (0x06<<0),
    ADC_MUXNEG_AIN7_gc = (0x07<<0),
    ADC_MUXNEG_AIN8_gc = (0x08<<0),
    ADC_MUXNEG_AIN9_gc = (0x09<<0),
    ADC_MUXNEG_AIN10_gc = (0x0A<<0),
    ADC_MUXNEG_AIN11_gc = (0x0B<<0),
    ADC_MUXNEG_AIN12_gc = (0x0C<<0),
    ADC_MUXNEG_AIN13_gc = (0x0D<<0),
    ADC_MUXNEG_AIN14_gc = (0x0E<<0),
    ADC_MUXNEG_AIN15_gc = (0x0F<<0),
    ADC_MUXNEG_GND_gc = (0x40<<0),
    ADC_MUXNEG_DAC0_gc = (0x48<<0)
} ADC_MUXNEG_t;


typedef enum ADC_MUXPOS_enum
{
    ADC_MUXPOS_AIN0_gc = (0x00<<0),
    ADC_MUXPOS_AIN1_gc = (0x01<<0),
    ADC_MUXPOS_AIN2_gc = (0x02<<0),
    ADC_MUXPOS_AIN3_gc = (0x03<<0),
    ADC_MUXPOS_AIN4_gc = (0x04<<0),
    ADC_MUXPOS_AIN5_gc = (0x05<<0),
    ADC_MUXPOS_AIN6_gc = (0x06<<0),
    ADC_MUXPOS_AIN7_gc = (0x07<<0),
    ADC_MUXPOS_AIN8_gc = (0x08<<0),
    ADC_MUXPOS_AIN9_gc = (0x09<<0),
    ADC_MUXPOS_AIN10_gc = (0x0A<<0),
    ADC_MUXPOS_AIN11_gc = (0x0B<<0),
    ADC_MUXPOS_AIN12_gc = (0x0C<<0),
    ADC_MUXPOS_AIN13_gc = (0x0D<<0),
    ADC_MUXPOS_AIN14_gc = (0x0E<<0),
    ADC_MUXPOS_AIN15_gc = (0x0F<<0),
    ADC_MUXPOS_AIN16_gc = (0x10<<0),
    ADC_MUXPOS_AIN17_gc = (0x11<<0),
    ADC_MUXPOS_AIN18_gc = (0x12<<0),
    ADC_MUXPOS_AIN19_gc = (0x13<<0),
    ADC_MUXPOS_AIN20_gc = (0x14<<0),
    ADC_MUXPOS_AIN21_gc = (0x15<<0),
    ADC_MUXPOS_GND_gc = (0x40<<0),
    ADC_MUXPOS_TEMPSENSE_gc = (0x42<<0),
    ADC_MUXPOS_VDDDIV10_gc = (0x44<<0),
    ADC_MUXPOS_VDDIO2DIV10_gc = (0x45<<0),
    ADC_MUXPOS_DAC0_gc = (0x48<<0),
    ADC_MUXPOS_DACREF0_gc = (0x49<<0),
    ADC_MUXPOS_DACREF1_gc = (0x4A<<0),
    ADC_MUXPOS_DACREF2_gc = (0x4B<<0)
} ADC_MUXPOS_t;


typedef enum ADC_PRESC_enum
{
    ADC_PRESC_DIV2_gc = (0x00<<0),
    ADC_PRESC_DIV4_gc = (0x01<<0),
    ADC_PRESC_DIV8_gc = (0x02<<0),
    ADC_PRESC_DIV12_gc = (0x03<<0),
    ADC_PRESC_DIV16_gc = (0x04<<0),
    ADC_PRESC_DIV20_gc = (0x05<<0),
    ADC_PRESC_DIV24_gc = (0x06<<0),
    ADC_PRESC_DIV28_gc = (0x07<<0),
    ADC_PRESC_DIV32_gc = (0x08<<0),
    ADC_PRESC_DIV48_gc = (0x09<<0),
    ADC_PRESC_DIV64_gc = (0x0A<<0),
    ADC_PRESC_DIV96_gc = (0x0B<<0),
    ADC_PRESC_DIV128_gc = (0x0C<<0),
    ADC_PRESC_DIV256_gc = (0x0D<<0)
} ADC_PRESC_t;


typedef enum ADC_RESSEL_enum
{
    ADC_RESSEL_12BIT_gc = (0x00<<2),
    ADC_RESSEL_10BIT_gc = (0x01<<2)
} ADC_RESSEL_t;


typedef enum ADC_SAMPDLY_enum
{
    ADC_SAMPDLY_DLY0_gc = (0x00<<0),
    ADC_SAMPDLY_DLY1_gc = (0x01<<0),
    ADC_SAMPDLY_DLY2_gc = (0x02<<0),
    ADC_SAMPDLY_DLY3_gc = (0x03<<0),
    ADC_SAMPDLY_DLY4_gc = (0x04<<0),
    ADC_SAMPDLY_DLY5_gc = (0x05<<0),
    ADC_SAMPDLY_DLY6_gc = (0x06<<0),
    ADC_SAMPDLY_DLY7_gc = (0x07<<0),
    ADC_SAMPDLY_DLY8_gc = (0x08<<0),
    ADC_SAMPDLY_DLY9_gc = (0x09<<0),
    ADC_SAMPDLY_DLY10_gc = (0x0A<<0),
    ADC_SAMPDLY_DLY11_gc = (0x0B<<0),
    ADC_SAMPDLY_DLY12_gc = (0x0C<<0),
    ADC_SAMPDLY_DLY13_gc = (0x0D<<0),
    ADC_SAMPDLY_DLY14_gc = (0x0E<<0),
    ADC_SAMPDLY_DLY15_gc = (0x0F<<0)
} ADC_SAMPDLY_t;


typedef enum ADC_SAMPNUM_enum
{
    ADC_SAMPNUM_NONE_gc = (0x00<<0),
    ADC_SAMPNUM_ACC2_gc = (0x01<<0),
    ADC_SAMPNUM_ACC4_gc = (0x02<<0),
    ADC_SAMPNUM_ACC8_gc = (0x03<<0),
    ADC_SAMPNUM_ACC16_gc = (0x04<<0),
    ADC_SAMPNUM_ACC32_gc = (0x05<<0),
    ADC_SAMPNUM_ACC64_gc = (0x06<<0),
    ADC_SAMPNUM_ACC128_gc = (0x07<<0)
} ADC_SAMPNUM_t;


typedef enum ADC_WINCM_enum
{
    ADC_WINCM_NONE_gc = (0x00<<0),
    ADC_WINCM_BELOW_gc = (0x01<<0),
    ADC_WINCM_ABOVE_gc = (0x02<<0),
    ADC_WINCM_INSIDE_gc = (0x03<<0),
    ADC_WINCM_OUTSIDE_gc = (0x04<<0)
} ADC_WINCM_t;
# 376 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct BOD_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t reserved_1[6];
    register8_t VLMCTRLA;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t STATUS;
    register8_t reserved_2[4];
} BOD_t;


typedef enum BOD_ACTIVE_enum
{
    BOD_ACTIVE_DIS_gc = (0x00<<2),
    BOD_ACTIVE_ENABLED_gc = (0x01<<2),
    BOD_ACTIVE_SAMPLED_gc = (0x02<<2),
    BOD_ACTIVE_ENWAKE_gc = (0x03<<2)
} BOD_ACTIVE_t;


typedef enum BOD_LVL_enum
{
    BOD_LVL_BODLEVEL0_gc = (0x00<<0),
    BOD_LVL_BODLEVEL1_gc = (0x01<<0),
    BOD_LVL_BODLEVEL2_gc = (0x02<<0),
    BOD_LVL_BODLEVEL3_gc = (0x03<<0)
} BOD_LVL_t;


typedef enum BOD_SAMPFREQ_enum
{
    BOD_SAMPFREQ_128HZ_gc = (0x00<<4),
    BOD_SAMPFREQ_32HZ_gc = (0x01<<4)
} BOD_SAMPFREQ_t;


typedef enum BOD_SLEEP_enum
{
    BOD_SLEEP_DIS_gc = (0x00<<0),
    BOD_SLEEP_ENABLED_gc = (0x01<<0),
    BOD_SLEEP_SAMPLED_gc = (0x02<<0)
} BOD_SLEEP_t;


typedef enum BOD_VLMCFG_enum
{
    BOD_VLMCFG_FALLING_gc = (0x00<<1),
    BOD_VLMCFG_RISING_gc = (0x01<<1),
    BOD_VLMCFG_BOTH_gc = (0x02<<1)
} BOD_VLMCFG_t;


typedef enum BOD_VLMLVL_enum
{
    BOD_VLMLVL_OFF_gc = (0x00<<0),
    BOD_VLMLVL_5ABOVE_gc = (0x01<<0),
    BOD_VLMLVL_15ABOVE_gc = (0x02<<0),
    BOD_VLMLVL_25ABOVE_gc = (0x03<<0)
} BOD_VLMLVL_t;


typedef enum BOD_VLMS_enum
{
    BOD_VLMS_ABOVE_gc = (0x00<<0),
    BOD_VLMS_BELOW_gc = (0x01<<0)
} BOD_VLMS_t;
# 452 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct CCL_struct
{
    register8_t CTRLA;
    register8_t SEQCTRL0;
    register8_t SEQCTRL1;
    register8_t SEQCTRL2;
    register8_t reserved_1[1];
    register8_t INTCTRL0;
    register8_t INTCTRL1;
    register8_t INTFLAGS;
    register8_t LUT0CTRLA;
    register8_t LUT0CTRLB;
    register8_t LUT0CTRLC;
    register8_t TRUTH0;
    register8_t LUT1CTRLA;
    register8_t LUT1CTRLB;
    register8_t LUT1CTRLC;
    register8_t TRUTH1;
    register8_t LUT2CTRLA;
    register8_t LUT2CTRLB;
    register8_t LUT2CTRLC;
    register8_t TRUTH2;
    register8_t LUT3CTRLA;
    register8_t LUT3CTRLB;
    register8_t LUT3CTRLC;
    register8_t TRUTH3;
    register8_t LUT4CTRLA;
    register8_t LUT4CTRLB;
    register8_t LUT4CTRLC;
    register8_t TRUTH4;
    register8_t LUT5CTRLA;
    register8_t LUT5CTRLB;
    register8_t LUT5CTRLC;
    register8_t TRUTH5;
    register8_t reserved_2[32];
} CCL_t;


typedef enum CCL_CLKSRC_enum
{
    CCL_CLKSRC_CLKPER_gc = (0x00<<1),
    CCL_CLKSRC_IN2_gc = (0x01<<1),
    CCL_CLKSRC_OSCHF_gc = (0x04<<1),
    CCL_CLKSRC_OSC32K_gc = (0x05<<1),
    CCL_CLKSRC_OSC1K_gc = (0x06<<1)
} CCL_CLKSRC_t;


typedef enum CCL_EDGEDET_enum
{
    CCL_EDGEDET_DIS_gc = (0x00<<7),
    CCL_EDGEDET_EN_gc = (0x01<<7)
} CCL_EDGEDET_t;


typedef enum CCL_FILTSEL_enum
{
    CCL_FILTSEL_DISABLE_gc = (0x00<<4),
    CCL_FILTSEL_SYNCH_gc = (0x01<<4),
    CCL_FILTSEL_FILTER_gc = (0x02<<4)
} CCL_FILTSEL_t;


typedef enum CCL_INSEL0_enum
{
    CCL_INSEL0_MASK_gc = (0x00<<0),
    CCL_INSEL0_FEEDBACK_gc = (0x01<<0),
    CCL_INSEL0_LINK_gc = (0x02<<0),
    CCL_INSEL0_EVENTA_gc = (0x03<<0),
    CCL_INSEL0_EVENTB_gc = (0x04<<0),
    CCL_INSEL0_IN0_gc = (0x05<<0),
    CCL_INSEL0_AC0_gc = (0x06<<0),
    CCL_INSEL0_ZCD0_gc = (0x07<<0),
    CCL_INSEL0_USART0_gc = (0x08<<0),
    CCL_INSEL0_SPI0_gc = (0x09<<0),
    CCL_INSEL0_TCA0_gc = (0x0A<<0),
    CCL_INSEL0_TCA1_gc = (0x0B<<0),
    CCL_INSEL0_TCB0_gc = (0x0C<<0),
    CCL_INSEL0_TCD0_gc = (0x0D<<0)
} CCL_INSEL0_t;


typedef enum CCL_INSEL1_enum
{
    CCL_INSEL1_MASK_gc = (0x00<<4),
    CCL_INSEL1_FEEDBACK_gc = (0x01<<4),
    CCL_INSEL1_LINK_gc = (0x02<<4),
    CCL_INSEL1_EVENTA_gc = (0x03<<4),
    CCL_INSEL1_EVENTB_gc = (0x04<<4),
    CCL_INSEL1_IN1_gc = (0x05<<4),
    CCL_INSEL1_AC1_gc = (0x06<<4),
    CCL_INSEL1_ZCD1_gc = (0x07<<4),
    CCL_INSEL1_USART1_gc = (0x08<<4),
    CCL_INSEL1_SPI0_gc = (0x09<<4),
    CCL_INSEL1_TCA0_gc = (0x0A<<4),
    CCL_INSEL1_TCA1_gc = (0x0B<<4),
    CCL_INSEL1_TCB1_gc = (0x0C<<4),
    CCL_INSEL1_TCD0_gc = (0x0D<<4)
} CCL_INSEL1_t;


typedef enum CCL_INSEL2_enum
{
    CCL_INSEL2_MASK_gc = (0x00<<0),
    CCL_INSEL2_FEEDBACK_gc = (0x01<<0),
    CCL_INSEL2_LINK_gc = (0x02<<0),
    CCL_INSEL2_EVENTA_gc = (0x03<<0),
    CCL_INSEL2_EVENTB_gc = (0x04<<0),
    CCL_INSEL2_IN2_gc = (0x05<<0),
    CCL_INSEL2_AC2_gc = (0x06<<0),
    CCL_INSEL2_ZCD2_gc = (0x07<<0),
    CCL_INSEL2_USART2_gc = (0x08<<0),
    CCL_INSEL2_SPI0_gc = (0x09<<0),
    CCL_INSEL2_TCA0_gc = (0x0A<<0),
    CCL_INSEL2_TCA1_gc = (0x0B<<0),
    CCL_INSEL2_TCB2_gc = (0x0C<<0),
    CCL_INSEL2_TCD0_gc = (0x0D<<0)
} CCL_INSEL2_t;


typedef enum CCL_INTMODE0_enum
{
    CCL_INTMODE0_INTDISABLE_gc = (0x00<<0),
    CCL_INTMODE0_RISING_gc = (0x01<<0),
    CCL_INTMODE0_FALLING_gc = (0x02<<0),
    CCL_INTMODE0_BOTH_gc = (0x03<<0)
} CCL_INTMODE0_t;


typedef enum CCL_INTMODE1_enum
{
    CCL_INTMODE1_INTDISABLE_gc = (0x00<<2),
    CCL_INTMODE1_RISING_gc = (0x01<<2),
    CCL_INTMODE1_FALLING_gc = (0x02<<2),
    CCL_INTMODE1_BOTH_gc = (0x03<<2)
} CCL_INTMODE1_t;


typedef enum CCL_INTMODE2_enum
{
    CCL_INTMODE2_INTDISABLE_gc = (0x00<<4),
    CCL_INTMODE2_RISING_gc = (0x01<<4),
    CCL_INTMODE2_FALLING_gc = (0x02<<4),
    CCL_INTMODE2_BOTH_gc = (0x03<<4)
} CCL_INTMODE2_t;


typedef enum CCL_INTMODE3_enum
{
    CCL_INTMODE3_INTDISABLE_gc = (0x00<<6),
    CCL_INTMODE3_RISING_gc = (0x01<<6),
    CCL_INTMODE3_FALLING_gc = (0x02<<6),
    CCL_INTMODE3_BOTH_gc = (0x03<<6)
} CCL_INTMODE3_t;


typedef enum CCL_INTMODE4_enum
{
    CCL_INTMODE4_INTDISABLE_gc = (0x00<<0),
    CCL_INTMODE4_RISING_gc = (0x01<<0),
    CCL_INTMODE4_FALLING_gc = (0x02<<0),
    CCL_INTMODE4_BOTH_gc = (0x03<<0)
} CCL_INTMODE4_t;


typedef enum CCL_INTMODE5_enum
{
    CCL_INTMODE5_INTDISABLE_gc = (0x00<<2),
    CCL_INTMODE5_RISING_gc = (0x01<<2),
    CCL_INTMODE5_FALLING_gc = (0x02<<2),
    CCL_INTMODE5_BOTH_gc = (0x03<<2)
} CCL_INTMODE5_t;


typedef enum CCL_SEQSEL_enum
{
    CCL_SEQSEL_DISABLE_gc = (0x00<<0),
    CCL_SEQSEL_DFF_gc = (0x01<<0),
    CCL_SEQSEL_JK_gc = (0x02<<0),
    CCL_SEQSEL_LATCH_gc = (0x03<<0),
    CCL_SEQSEL_RS_gc = (0x04<<0)
} CCL_SEQSEL_t;
# 642 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct CLKCTRL_struct
{
    register8_t MCLKCTRLA;
    register8_t MCLKCTRLB;
    register8_t MCLKCTRLC;
    register8_t MCLKINTCTRL;
    register8_t MCLKINTFLAGS;
    register8_t MCLKSTATUS;
    register8_t reserved_1[2];
    register8_t OSCHFCTRLA;
    register8_t OSCHFTUNE;
    register8_t reserved_2[6];
    register8_t PLLCTRLA;
    register8_t reserved_3[7];
    register8_t OSC32KCTRLA;
    register8_t reserved_4[3];
    register8_t XOSC32KCTRLA;
    register8_t reserved_5[3];
    register8_t XOSCHFCTRLA;
    register8_t reserved_6[31];
} CLKCTRL_t;


typedef enum CLKCTRL_CFDSRC_enum
{
    CLKCTRL_CFDSRC_CLKMAIN_gc = (0x00<<2),
    CLKCTRL_CFDSRC_XOSCHF_gc = (0x01<<2),
    CLKCTRL_CFDSRC_XOSC32K_gc = (0x02<<2)
} CLKCTRL_CFDSRC_t;


typedef enum CLKCTRL_CLKSEL_enum
{
    CLKCTRL_CLKSEL_OSCHF_gc = (0x00<<0),
    CLKCTRL_CLKSEL_OSC32K_gc = (0x01<<0),
    CLKCTRL_CLKSEL_XOSC32K_gc = (0x02<<0),
    CLKCTRL_CLKSEL_EXTCLK_gc = (0x03<<0)
} CLKCTRL_CLKSEL_t;


typedef enum CLKCTRL_CSUT_enum
{
    CLKCTRL_CSUT_1K_gc = (0x00<<4),
    CLKCTRL_CSUT_16K_gc = (0x01<<4),
    CLKCTRL_CSUT_32K_gc = (0x02<<4),
    CLKCTRL_CSUT_64K_gc = (0x03<<4)
} CLKCTRL_CSUT_t;


typedef enum CLKCTRL_CSUTHF_enum
{
    CLKCTRL_CSUTHF_256_gc = (0x00<<4),
    CLKCTRL_CSUTHF_1K_gc = (0x01<<4),
    CLKCTRL_CSUTHF_4K_gc = (0x02<<4)
} CLKCTRL_CSUTHF_t;


typedef enum CLKCTRL_FRQRANGE_enum
{
    CLKCTRL_FRQRANGE_8M_gc = (0x00<<2),
    CLKCTRL_FRQRANGE_16M_gc = (0x01<<2),
    CLKCTRL_FRQRANGE_24M_gc = (0x02<<2),
    CLKCTRL_FRQRANGE_32M_gc = (0x03<<2)
} CLKCTRL_FRQRANGE_t;


typedef enum CLKCTRL_FRQSEL_enum
{
    CLKCTRL_FRQSEL_1M_gc = (0x00<<2),
    CLKCTRL_FRQSEL_2M_gc = (0x01<<2),
    CLKCTRL_FRQSEL_3M_gc = (0x02<<2),
    CLKCTRL_FRQSEL_4M_gc = (0x03<<2),
    CLKCTRL_FRQSEL_8M_gc = (0x05<<2),
    CLKCTRL_FRQSEL_12M_gc = (0x06<<2),
    CLKCTRL_FRQSEL_16M_gc = (0x07<<2),
    CLKCTRL_FRQSEL_20M_gc = (0x08<<2),
    CLKCTRL_FRQSEL_24M_gc = (0x09<<2)
} CLKCTRL_FRQSEL_t;


typedef enum CLKCTRL_INTTYPE_enum
{
    CLKCTRL_INTTYPE_INT_gc = (0x00<<7),
    CLKCTRL_INTTYPE_NMI_gc = (0x01<<7)
} CLKCTRL_INTTYPE_t;


typedef enum CLKCTRL_MULFAC_enum
{
    CLKCTRL_MULFAC_DISABLE_gc = (0x00<<0),
    CLKCTRL_MULFAC_2x_gc = (0x01<<0),
    CLKCTRL_MULFAC_3x_gc = (0x02<<0)
} CLKCTRL_MULFAC_t;


typedef enum CLKCTRL_PDIV_enum
{
    CLKCTRL_PDIV_2X_gc = (0x00<<1),
    CLKCTRL_PDIV_4X_gc = (0x01<<1),
    CLKCTRL_PDIV_8X_gc = (0x02<<1),
    CLKCTRL_PDIV_16X_gc = (0x03<<1),
    CLKCTRL_PDIV_32X_gc = (0x04<<1),
    CLKCTRL_PDIV_64X_gc = (0x05<<1),
    CLKCTRL_PDIV_6X_gc = (0x08<<1),
    CLKCTRL_PDIV_10X_gc = (0x09<<1),
    CLKCTRL_PDIV_12X_gc = (0x0A<<1),
    CLKCTRL_PDIV_24X_gc = (0x0B<<1),
    CLKCTRL_PDIV_48X_gc = (0x0C<<1)
} CLKCTRL_PDIV_t;


typedef enum CLKCTRL_SELHF_enum
{
    CLKCTRL_SELHF_XTAL_gc = (0x00<<1),
    CLKCTRL_SELHF_EXTCLOCK_gc = (0x01<<1)
} CLKCTRL_SELHF_t;


typedef enum CLKCTRL_SOURCE_enum
{
    CLKCTRL_SOURCE_OSCHF_gc = (0x00<<6),
    CLKCTRL_SOURCE_XOSCHF_gc = (0x01<<6)
} CLKCTRL_SOURCE_t;
# 775 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef enum CCP_enum
{
    CCP_SPM_gc = (0x9D<<0),
    CCP_IOREG_gc = (0xD8<<0)
} CCP_t;
# 788 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct CPUINT_struct
{
    register8_t CTRLA;
    register8_t STATUS;
    register8_t LVL0PRI;
    register8_t LVL1VEC;
} CPUINT_t;
# 804 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct CRCSCAN_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t STATUS;
    register8_t reserved_1[1];
} CRCSCAN_t;


typedef enum CRCSCAN_SRC_enum
{
    CRCSCAN_SRC_FLASH_gc = (0x00<<0),
    CRCSCAN_SRC_APPLICATION_gc = (0x01<<0),
    CRCSCAN_SRC_BOOT_gc = (0x02<<0)
} CRCSCAN_SRC_t;
# 827 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct DAC_struct
{
    register8_t CTRLA;
    register8_t reserved_1[1];
    __extension__ union { register16_t DATA; struct { register8_t DATAL; register8_t DATAH; }; };
} DAC_t;
# 842 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct EVSYS_struct
{
    register8_t SWEVENTA;
    register8_t SWEVENTB;
    register8_t reserved_1[14];
    register8_t CHANNEL0;
    register8_t CHANNEL1;
    register8_t CHANNEL2;
    register8_t CHANNEL3;
    register8_t CHANNEL4;
    register8_t CHANNEL5;
    register8_t CHANNEL6;
    register8_t CHANNEL7;
    register8_t CHANNEL8;
    register8_t CHANNEL9;
    register8_t reserved_2[6];
    register8_t USERCCLLUT0A;
    register8_t USERCCLLUT0B;
    register8_t USERCCLLUT1A;
    register8_t USERCCLLUT1B;
    register8_t USERCCLLUT2A;
    register8_t USERCCLLUT2B;
    register8_t USERCCLLUT3A;
    register8_t USERCCLLUT3B;
    register8_t USERCCLLUT4A;
    register8_t USERCCLLUT4B;
    register8_t USERCCLLUT5A;
    register8_t USERCCLLUT5B;
    register8_t USERADC0START;
    register8_t USEREVSYSEVOUTA;
    register8_t USEREVSYSEVOUTB;
    register8_t USEREVSYSEVOUTC;
    register8_t USEREVSYSEVOUTD;
    register8_t USEREVSYSEVOUTE;
    register8_t USEREVSYSEVOUTF;
    register8_t reserved_3[1];
    register8_t USERUSART0IRDA;
    register8_t USERUSART1IRDA;
    register8_t USERUSART2IRDA;
    register8_t USERUSART3IRDA;
    register8_t USERUSART4IRDA;
    register8_t reserved_4[1];
    register8_t USERTCA0CNTA;
    register8_t USERTCA0CNTB;
    register8_t USERTCA1CNTA;
    register8_t USERTCA1CNTB;
    register8_t USERTCB0CAPT;
    register8_t USERTCB0COUNT;
    register8_t USERTCB1CAPT;
    register8_t USERTCB1COUNT;
    register8_t USERTCB2CAPT;
    register8_t USERTCB2COUNT;
    register8_t USERTCB3CAPT;
    register8_t USERTCB3COUNT;
    register8_t reserved_5[2];
    register8_t USERTCD0INPUTA;
    register8_t USERTCD0INPUTB;
    register8_t USEROPAMP0ENABLE;
    register8_t USEROPAMP0DISABLE;
    register8_t USEROPAMP0DUMP;
    register8_t USEROPAMP0DRIVE;
    register8_t USEROPAMP1ENABLE;
    register8_t USEROPAMP1DISABLE;
    register8_t USEROPAMP1DUMP;
    register8_t USEROPAMP1DRIVE;
    register8_t USEROPAMP2ENABLE;
    register8_t USEROPAMP2DISABLE;
    register8_t USEROPAMP2DUMP;
    register8_t USEROPAMP2DRIVE;
} EVSYS_t;


typedef enum EVSYS_CHANNEL0_enum
{
    EVSYS_CHANNEL0_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL0_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL0_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL0_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL0_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL0_RTC_PIT_DIV8192_gc = (0x08<<0),
    EVSYS_CHANNEL0_RTC_PIT_DIV4096_gc = (0x09<<0),
    EVSYS_CHANNEL0_RTC_PIT_DIV2048_gc = (0x0A<<0),
    EVSYS_CHANNEL0_RTC_PIT_DIV1024_gc = (0x0B<<0),
    EVSYS_CHANNEL0_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL0_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL0_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL0_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL0_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL0_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL0_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL0_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL0_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL0_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL0_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL0_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL0_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL0_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL0_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL0_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL0_PORTA_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL0_PORTA_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL0_PORTA_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL0_PORTA_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL0_PORTA_PIN4_gc = (0x44<<0),
    EVSYS_CHANNEL0_PORTA_PIN5_gc = (0x45<<0),
    EVSYS_CHANNEL0_PORTA_PIN6_gc = (0x46<<0),
    EVSYS_CHANNEL0_PORTA_PIN7_gc = (0x47<<0),
    EVSYS_CHANNEL0_PORTB_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL0_PORTB_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL0_PORTB_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL0_PORTB_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL0_PORTB_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL0_PORTB_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL0_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL0_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL0_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL0_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL0_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL0_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL0_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL0_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL0_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL0_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL0_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL0_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL0_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL0_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL0_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL0_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL0_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL0_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL0_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL0_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL0_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL0_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL0_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL0_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL0_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL0_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL0_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL0_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL0_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL0_t;


typedef enum EVSYS_CHANNEL1_enum
{
    EVSYS_CHANNEL1_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL1_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL1_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL1_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL1_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL1_RTC_PIT_DIV512_gc = (0x08<<0),
    EVSYS_CHANNEL1_RTC_PIT_DIV256_gc = (0x09<<0),
    EVSYS_CHANNEL1_RTC_PIT_DIV128_gc = (0x0A<<0),
    EVSYS_CHANNEL1_RTC_PIT_DIV64_gc = (0x0B<<0),
    EVSYS_CHANNEL1_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL1_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL1_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL1_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL1_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL1_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL1_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL1_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL1_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL1_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL1_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL1_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL1_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL1_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL1_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL1_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL1_PORTA_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL1_PORTA_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL1_PORTA_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL1_PORTA_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL1_PORTA_PIN4_gc = (0x44<<0),
    EVSYS_CHANNEL1_PORTA_PIN5_gc = (0x45<<0),
    EVSYS_CHANNEL1_PORTA_PIN6_gc = (0x46<<0),
    EVSYS_CHANNEL1_PORTA_PIN7_gc = (0x47<<0),
    EVSYS_CHANNEL1_PORTB_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL1_PORTB_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL1_PORTB_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL1_PORTB_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL1_PORTB_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL1_PORTB_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL1_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL1_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL1_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL1_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL1_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL1_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL1_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL1_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL1_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL1_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL1_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL1_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL1_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL1_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL1_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL1_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL1_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL1_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL1_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL1_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL1_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL1_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL1_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL1_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL1_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL1_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL1_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL1_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL1_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL1_t;


typedef enum EVSYS_CHANNEL2_enum
{
    EVSYS_CHANNEL2_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL2_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL2_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL2_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL2_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL2_RTC_PIT_DIV8192_gc = (0x08<<0),
    EVSYS_CHANNEL2_RTC_PIT_DIV4096_gc = (0x09<<0),
    EVSYS_CHANNEL2_RTC_PIT_DIV2048_gc = (0x0A<<0),
    EVSYS_CHANNEL2_RTC_PIT_DIV1024_gc = (0x0B<<0),
    EVSYS_CHANNEL2_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL2_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL2_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL2_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL2_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL2_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL2_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL2_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL2_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL2_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL2_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL2_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL2_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL2_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL2_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL2_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL2_PORTC_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL2_PORTC_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL2_PORTC_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL2_PORTC_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL2_PORTC_PIN4_gc = (0x44<<0),
    EVSYS_CHANNEL2_PORTC_PIN5_gc = (0x45<<0),
    EVSYS_CHANNEL2_PORTC_PIN6_gc = (0x46<<0),
    EVSYS_CHANNEL2_PORTC_PIN7_gc = (0x47<<0),
    EVSYS_CHANNEL2_PORTD_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL2_PORTD_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL2_PORTD_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL2_PORTD_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL2_PORTD_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL2_PORTD_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL2_PORTD_PIN6_gc = (0x4E<<0),
    EVSYS_CHANNEL2_PORTD_PIN7_gc = (0x4F<<0),
    EVSYS_CHANNEL2_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL2_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL2_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL2_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL2_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL2_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL2_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL2_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL2_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL2_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL2_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL2_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL2_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL2_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL2_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL2_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL2_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL2_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL2_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL2_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL2_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL2_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL2_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL2_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL2_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL2_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL2_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL2_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL2_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL2_t;


typedef enum EVSYS_CHANNEL3_enum
{
    EVSYS_CHANNEL3_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL3_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL3_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL3_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL3_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL3_RTC_PIT_DIV512_gc = (0x08<<0),
    EVSYS_CHANNEL3_RTC_PIT_DIV256_gc = (0x09<<0),
    EVSYS_CHANNEL3_RTC_PIT_DIV128_gc = (0x0A<<0),
    EVSYS_CHANNEL3_RTC_PIT_DIV64_gc = (0x0B<<0),
    EVSYS_CHANNEL3_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL3_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL3_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL3_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL3_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL3_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL3_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL3_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL3_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL3_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL3_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL3_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL3_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL3_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL3_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL3_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL3_PORTC_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL3_PORTC_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL3_PORTC_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL3_PORTC_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL3_PORTC_PIN4_gc = (0x44<<0),
    EVSYS_CHANNEL3_PORTC_PIN5_gc = (0x45<<0),
    EVSYS_CHANNEL3_PORTC_PIN6_gc = (0x46<<0),
    EVSYS_CHANNEL3_PORTC_PIN7_gc = (0x47<<0),
    EVSYS_CHANNEL3_PORTD_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL3_PORTD_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL3_PORTD_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL3_PORTD_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL3_PORTD_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL3_PORTD_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL3_PORTD_PIN6_gc = (0x4E<<0),
    EVSYS_CHANNEL3_PORTD_PIN7_gc = (0x4F<<0),
    EVSYS_CHANNEL3_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL3_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL3_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL3_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL3_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL3_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL3_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL3_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL3_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL3_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL3_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL3_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL3_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL3_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL3_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL3_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL3_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL3_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL3_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL3_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL3_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL3_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL3_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL3_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL3_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL3_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL3_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL3_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL3_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL3_t;


typedef enum EVSYS_CHANNEL4_enum
{
    EVSYS_CHANNEL4_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL4_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL4_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL4_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL4_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL4_RTC_PIT_DIV8192_gc = (0x08<<0),
    EVSYS_CHANNEL4_RTC_PIT_DIV4096_gc = (0x09<<0),
    EVSYS_CHANNEL4_RTC_PIT_DIV2048_gc = (0x0A<<0),
    EVSYS_CHANNEL4_RTC_PIT_DIV1024_gc = (0x0B<<0),
    EVSYS_CHANNEL4_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL4_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL4_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL4_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL4_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL4_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL4_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL4_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL4_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL4_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL4_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL4_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL4_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL4_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL4_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL4_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL4_PORTE_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL4_PORTE_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL4_PORTE_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL4_PORTE_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL4_PORTF_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL4_PORTF_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL4_PORTF_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL4_PORTF_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL4_PORTF_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL4_PORTF_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL4_PORTF_PIN6_gc = (0x4E<<0),
    EVSYS_CHANNEL4_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL4_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL4_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL4_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL4_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL4_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL4_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL4_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL4_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL4_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL4_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL4_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL4_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL4_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL4_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL4_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL4_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL4_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL4_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL4_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL4_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL4_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL4_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL4_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL4_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL4_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL4_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL4_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL4_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL4_t;


typedef enum EVSYS_CHANNEL5_enum
{
    EVSYS_CHANNEL5_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL5_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL5_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL5_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL5_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL5_RTC_PIT_DIV512_gc = (0x08<<0),
    EVSYS_CHANNEL5_RTC_PIT_DIV256_gc = (0x09<<0),
    EVSYS_CHANNEL5_RTC_PIT_DIV128_gc = (0x0A<<0),
    EVSYS_CHANNEL5_RTC_PIT_DIV64_gc = (0x0B<<0),
    EVSYS_CHANNEL5_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL5_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL5_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL5_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL5_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL5_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL5_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL5_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL5_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL5_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL5_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL5_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL5_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL5_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL5_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL5_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL5_PORTE_PIN0_gc = (0x40<<0),
    EVSYS_CHANNEL5_PORTE_PIN1_gc = (0x41<<0),
    EVSYS_CHANNEL5_PORTE_PIN2_gc = (0x42<<0),
    EVSYS_CHANNEL5_PORTE_PIN3_gc = (0x43<<0),
    EVSYS_CHANNEL5_PORTF_PIN0_gc = (0x48<<0),
    EVSYS_CHANNEL5_PORTF_PIN1_gc = (0x49<<0),
    EVSYS_CHANNEL5_PORTF_PIN2_gc = (0x4A<<0),
    EVSYS_CHANNEL5_PORTF_PIN3_gc = (0x4B<<0),
    EVSYS_CHANNEL5_PORTF_PIN4_gc = (0x4C<<0),
    EVSYS_CHANNEL5_PORTF_PIN5_gc = (0x4D<<0),
    EVSYS_CHANNEL5_PORTF_PIN6_gc = (0x4E<<0),
    EVSYS_CHANNEL5_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL5_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL5_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL5_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL5_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL5_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL5_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL5_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL5_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL5_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL5_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL5_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL5_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL5_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL5_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL5_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL5_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL5_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL5_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL5_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL5_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL5_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL5_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL5_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL5_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL5_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL5_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL5_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL5_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL5_t;


typedef enum EVSYS_CHANNEL6_enum
{
    EVSYS_CHANNEL6_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL6_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL6_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL6_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL6_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL6_RTC_PIT_DIV8192_gc = (0x08<<0),
    EVSYS_CHANNEL6_RTC_PIT_DIV4096_gc = (0x09<<0),
    EVSYS_CHANNEL6_RTC_PIT_DIV2048_gc = (0x0A<<0),
    EVSYS_CHANNEL6_RTC_PIT_DIV1024_gc = (0x0B<<0),
    EVSYS_CHANNEL6_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL6_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL6_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL6_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL6_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL6_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL6_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL6_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL6_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL6_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL6_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL6_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL6_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL6_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL6_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL6_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL6_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL6_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL6_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL6_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL6_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL6_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL6_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL6_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL6_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL6_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL6_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL6_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL6_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL6_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL6_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL6_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL6_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL6_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL6_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL6_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL6_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL6_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL6_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL6_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL6_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL6_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL6_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL6_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL6_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL6_t;


typedef enum EVSYS_CHANNEL7_enum
{
    EVSYS_CHANNEL7_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL7_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL7_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL7_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL7_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL7_RTC_PIT_DIV512_gc = (0x08<<0),
    EVSYS_CHANNEL7_RTC_PIT_DIV256_gc = (0x09<<0),
    EVSYS_CHANNEL7_RTC_PIT_DIV128_gc = (0x0A<<0),
    EVSYS_CHANNEL7_RTC_PIT_DIV64_gc = (0x0B<<0),
    EVSYS_CHANNEL7_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL7_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL7_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL7_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL7_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL7_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL7_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL7_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL7_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL7_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL7_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL7_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL7_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL7_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL7_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL7_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL7_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL7_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL7_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL7_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL7_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL7_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL7_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL7_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL7_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL7_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL7_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL7_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL7_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL7_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL7_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL7_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL7_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL7_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL7_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL7_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL7_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL7_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL7_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL7_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL7_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL7_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL7_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL7_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL7_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL7_t;


typedef enum EVSYS_CHANNEL8_enum
{
    EVSYS_CHANNEL8_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL8_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL8_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL8_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL8_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL8_RTC_PIT_DIV8192_gc = (0x08<<0),
    EVSYS_CHANNEL8_RTC_PIT_DIV4096_gc = (0x09<<0),
    EVSYS_CHANNEL8_RTC_PIT_DIV2048_gc = (0x0A<<0),
    EVSYS_CHANNEL8_RTC_PIT_DIV1024_gc = (0x0B<<0),
    EVSYS_CHANNEL8_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL8_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL8_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL8_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL8_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL8_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL8_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL8_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL8_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL8_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL8_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL8_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL8_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL8_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL8_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL8_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL8_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL8_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL8_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL8_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL8_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL8_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL8_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL8_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL8_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL8_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL8_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL8_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL8_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL8_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL8_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL8_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL8_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL8_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL8_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL8_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL8_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL8_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL8_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL8_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL8_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL8_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL8_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL8_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL8_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL8_t;


typedef enum EVSYS_CHANNEL9_enum
{
    EVSYS_CHANNEL9_OFF_gc = (0x00<<0),
    EVSYS_CHANNEL9_UPDI_SYNCH_gc = (0x01<<0),
    EVSYS_CHANNEL9_MVIO_gc = (0x05<<0),
    EVSYS_CHANNEL9_RTC_OVF_gc = (0x06<<0),
    EVSYS_CHANNEL9_RTC_CMP_gc = (0x07<<0),
    EVSYS_CHANNEL9_RTC_PIT_DIV512_gc = (0x08<<0),
    EVSYS_CHANNEL9_RTC_PIT_DIV256_gc = (0x09<<0),
    EVSYS_CHANNEL9_RTC_PIT_DIV128_gc = (0x0A<<0),
    EVSYS_CHANNEL9_RTC_PIT_DIV64_gc = (0x0B<<0),
    EVSYS_CHANNEL9_CCL_LUT0_gc = (0x10<<0),
    EVSYS_CHANNEL9_CCL_LUT1_gc = (0x11<<0),
    EVSYS_CHANNEL9_CCL_LUT2_gc = (0x12<<0),
    EVSYS_CHANNEL9_CCL_LUT3_gc = (0x13<<0),
    EVSYS_CHANNEL9_CCL_LUT4_gc = (0x14<<0),
    EVSYS_CHANNEL9_CCL_LUT5_gc = (0x15<<0),
    EVSYS_CHANNEL9_AC0_OUT_gc = (0x20<<0),
    EVSYS_CHANNEL9_AC1_OUT_gc = (0x21<<0),
    EVSYS_CHANNEL9_AC2_OUT_gc = (0x22<<0),
    EVSYS_CHANNEL9_ADC0_RESRDY_gc = (0x24<<0),
    EVSYS_CHANNEL9_ZCD0_gc = (0x30<<0),
    EVSYS_CHANNEL9_ZCD1_gc = (0x31<<0),
    EVSYS_CHANNEL9_ZCD2_gc = (0x32<<0),
    EVSYS_CHANNEL9_OPAMP0_READY_gc = (0x34<<0),
    EVSYS_CHANNEL9_OPAMP1_READY_gc = (0x35<<0),
    EVSYS_CHANNEL9_OPAMP2_READY_gc = (0x36<<0),
    EVSYS_CHANNEL9_USART0_XCK_gc = (0x60<<0),
    EVSYS_CHANNEL9_USART1_XCK_gc = (0x61<<0),
    EVSYS_CHANNEL9_USART2_XCK_gc = (0x62<<0),
    EVSYS_CHANNEL9_USART3_XCK_gc = (0x63<<0),
    EVSYS_CHANNEL9_USART4_XCK_gc = (0x64<<0),
    EVSYS_CHANNEL9_SPI0_SCK_gc = (0x68<<0),
    EVSYS_CHANNEL9_SPI1_SCK_gc = (0x69<<0),
    EVSYS_CHANNEL9_TCA0_OVF_LUNF_gc = (0x80<<0),
    EVSYS_CHANNEL9_TCA0_HUNF_gc = (0x81<<0),
    EVSYS_CHANNEL9_TCA0_CMP0_LCMP0_gc = (0x84<<0),
    EVSYS_CHANNEL9_TCA0_CMP1_LCMP1_gc = (0x85<<0),
    EVSYS_CHANNEL9_TCA0_CMP2_LCMP2_gc = (0x86<<0),
    EVSYS_CHANNEL9_TCA1_OVF_LUNF_gc = (0x88<<0),
    EVSYS_CHANNEL9_TCA1_HUNF_gc = (0x89<<0),
    EVSYS_CHANNEL9_TCA1_CMP0_LCMP0_gc = (0x8C<<0),
    EVSYS_CHANNEL9_TCA1_CMP1_LCMP1_gc = (0x8D<<0),
    EVSYS_CHANNEL9_TCA1_CMP2_LCMP2_gc = (0x8E<<0),
    EVSYS_CHANNEL9_TCB0_CAPT_gc = (0xA0<<0),
    EVSYS_CHANNEL9_TCB0_OVF_gc = (0xA1<<0),
    EVSYS_CHANNEL9_TCB1_CAPT_gc = (0xA2<<0),
    EVSYS_CHANNEL9_TCB1_OVF_gc = (0xA3<<0),
    EVSYS_CHANNEL9_TCB2_CAPT_gc = (0xA4<<0),
    EVSYS_CHANNEL9_TCB2_OVF_gc = (0xA5<<0),
    EVSYS_CHANNEL9_TCB3_CAPT_gc = (0xA6<<0),
    EVSYS_CHANNEL9_TCB3_OVF_gc = (0xA7<<0),
    EVSYS_CHANNEL9_TCD0_CMPBCLR_gc = (0xB0<<0),
    EVSYS_CHANNEL9_TCD0_CMPASET_gc = (0xB1<<0),
    EVSYS_CHANNEL9_TCD0_CMPBSET_gc = (0xB2<<0),
    EVSYS_CHANNEL9_TCD0_PROGEV_gc = (0xB3<<0)
} EVSYS_CHANNEL9_t;


typedef enum EVSYS_SWEVENTA_enum
{
    EVSYS_SWEVENTA_CH0_gc = (0x01<<0),
    EVSYS_SWEVENTA_CH1_gc = (0x02<<0),
    EVSYS_SWEVENTA_CH2_gc = (0x04<<0),
    EVSYS_SWEVENTA_CH3_gc = (0x08<<0),
    EVSYS_SWEVENTA_CH4_gc = (0x10<<0),
    EVSYS_SWEVENTA_CH5_gc = (0x20<<0),
    EVSYS_SWEVENTA_CH6_gc = (0x40<<0),
    EVSYS_SWEVENTA_CH7_gc = (0x80<<0)
} EVSYS_SWEVENTA_t;


typedef enum EVSYS_SWEVENTB_enum
{
    EVSYS_SWEVENTB_CH8_gc = (0x01<<0),
    EVSYS_SWEVENTB_CH9_gc = (0x02<<0)
} EVSYS_SWEVENTB_t;


typedef enum EVSYS_USER_enum
{
    EVSYS_USER_OFF_gc = (0x00<<0),
    EVSYS_USER_CHANNEL0_gc = (0x01<<0),
    EVSYS_USER_CHANNEL1_gc = (0x02<<0),
    EVSYS_USER_CHANNEL2_gc = (0x03<<0),
    EVSYS_USER_CHANNEL3_gc = (0x04<<0),
    EVSYS_USER_CHANNEL4_gc = (0x05<<0),
    EVSYS_USER_CHANNEL5_gc = (0x06<<0),
    EVSYS_USER_CHANNEL6_gc = (0x07<<0),
    EVSYS_USER_CHANNEL7_gc = (0x08<<0),
    EVSYS_USER_CHANNEL8_gc = (0x09<<0),
    EVSYS_USER_CHANNEL9_gc = (0x0A<<0)
} EVSYS_USER_t;
# 1628 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct FUSE_struct
{
    register8_t WDTCFG;
    register8_t BODCFG;
    register8_t OSCCFG;
    register8_t reserved_1[2];
    register8_t SYSCFG0;
    register8_t SYSCFG1;
    register8_t CODESIZE;
    register8_t BOOTSIZE;
} FUSE_t;


typedef FUSE_t NVM_FUSES_t;


typedef enum ACTIVE_enum
{
    ACTIVE_DISABLE_gc = (0x00<<2),
    ACTIVE_ENABLE_gc = (0x01<<2),
    ACTIVE_SAMPLE_gc = (0x02<<2),
    ACTIVE_ENABLEWAIT_gc = (0x03<<2)
} ACTIVE_t;


typedef enum CLKSEL_enum
{
    CLKSEL_OSCHF_gc = (0x00<<0),
    CLKSEL_OSC32K_gc = (0x01<<0)
} CLKSEL_t;


typedef enum CRCSEL_enum
{
    CRCSEL_CRC16_gc = (0x00<<5),
    CRCSEL_CRC32_gc = (0x01<<5)
} CRCSEL_t;


typedef enum CRCSRC_enum
{
    CRCSRC_FLASH_gc = (0x00<<6),
    CRCSRC_BOOT_gc = (0x01<<6),
    CRCSRC_BOOTAPP_gc = (0x02<<6),
    CRCSRC_NOCRC_gc = (0x03<<6)
} CRCSRC_t;


typedef enum LVL_enum
{
    LVL_BODLEVEL0_gc = (0x00<<5),
    LVL_BODLEVEL1_gc = (0x01<<5),
    LVL_BODLEVEL2_gc = (0x02<<5),
    LVL_BODLEVEL3_gc = (0x03<<5)
} LVL_t;


typedef enum MVSYSCFG_enum
{
    MVSYSCFG_DUAL_gc = (0x01<<3),
    MVSYSCFG_SINGLE_gc = (0x02<<3)
} MVSYSCFG_t;


typedef enum PERIOD_enum
{
    PERIOD_OFF_gc = (0x00<<0),
    PERIOD_8CLK_gc = (0x01<<0),
    PERIOD_16CLK_gc = (0x02<<0),
    PERIOD_32CLK_gc = (0x03<<0),
    PERIOD_64CLK_gc = (0x04<<0),
    PERIOD_128CLK_gc = (0x05<<0),
    PERIOD_256CLK_gc = (0x06<<0),
    PERIOD_512CLK_gc = (0x07<<0),
    PERIOD_1KCLK_gc = (0x08<<0),
    PERIOD_2KCLK_gc = (0x09<<0),
    PERIOD_4KCLK_gc = (0x0A<<0),
    PERIOD_8KCLK_gc = (0x0B<<0)
} PERIOD_t;


typedef enum RSTPINCFG_enum
{
    RSTPINCFG_GPIO_gc = (0x00<<2),
    RSTPINCFG_RST_gc = (0x02<<2)
} RSTPINCFG_t;


typedef enum SAMPFREQ_enum
{
    SAMPFREQ_128Hz_gc = (0x00<<4),
    SAMPFREQ_32Hz_gc = (0x01<<4)
} SAMPFREQ_t;


typedef enum SLEEP_enum
{
    SLEEP_DISABLE_gc = (0x00<<0),
    SLEEP_ENABLE_gc = (0x01<<0),
    SLEEP_SAMPLE_gc = (0x02<<0)
} SLEEP_t;


typedef enum SUT_enum
{
    SUT_0MS_gc = (0x00<<0),
    SUT_1MS_gc = (0x01<<0),
    SUT_2MS_gc = (0x02<<0),
    SUT_4MS_gc = (0x03<<0),
    SUT_8MS_gc = (0x04<<0),
    SUT_16MS_gc = (0x05<<0),
    SUT_32MS_gc = (0x06<<0),
    SUT_64MS_gc = (0x07<<0)
} SUT_t;


typedef enum WINDOW_enum
{
    WINDOW_OFF_gc = (0x00<<4),
    WINDOW_8CLK_gc = (0x01<<4),
    WINDOW_16CLK_gc = (0x02<<4),
    WINDOW_32CLK_gc = (0x03<<4),
    WINDOW_64CLK_gc = (0x04<<4),
    WINDOW_128CLK_gc = (0x05<<4),
    WINDOW_256CLK_gc = (0x06<<4),
    WINDOW_512CLK_gc = (0x07<<4),
    WINDOW_1KCLK_gc = (0x08<<4),
    WINDOW_2KCLK_gc = (0x09<<4),
    WINDOW_4KCLK_gc = (0x0A<<4),
    WINDOW_8KCLK_gc = (0x0B<<4)
} WINDOW_t;
# 1767 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct GPR_struct
{
    register8_t GPR0;
    register8_t GPR1;
    register8_t GPR2;
    register8_t GPR3;
} GPR_t;
# 1783 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct LOCK_struct
{
    __extension__ union { register32_t KEY; struct { register8_t KEY0; register8_t KEY1; register8_t KEY2; register8_t KEY3; }; };
} LOCK_t;


typedef enum LOCK_KEY_enum
{
    LOCK_KEY_NOLOCK_gc = (0x5CC5C55C<<0),
    LOCK_KEY_RWLOCK_gc = (0xA33A3AA3<<0)
} LOCK_KEY_t;
# 1802 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct MVIO_struct
{
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t STATUS;
    register8_t reserved_1[1];
} MVIO_t;
# 1818 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct NVMCTRL_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t STATUS;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t reserved_1[1];
    __extension__ union { register16_t DATA; struct { register8_t DATAL; register8_t DATAH; }; };
    __extension__ union { register32_t ADDR; struct { register8_t ADDR0; register8_t ADDR1; register8_t ADDR2; register8_t ADDR3; }; };
    register8_t reserved_2[4];
} NVMCTRL_t;


typedef enum NVMCTRL_CMD_enum
{
    NVMCTRL_CMD_NONE_gc = (0x00<<0),
    NVMCTRL_CMD_NOOP_gc = (0x01<<0),
    NVMCTRL_CMD_FLWR_gc = (0x02<<0),
    NVMCTRL_CMD_FLPER_gc = (0x08<<0),
    NVMCTRL_CMD_FLMPER2_gc = (0x09<<0),
    NVMCTRL_CMD_FLMPER4_gc = (0x0A<<0),
    NVMCTRL_CMD_FLMPER8_gc = (0x0B<<0),
    NVMCTRL_CMD_FLMPER16_gc = (0x0C<<0),
    NVMCTRL_CMD_FLMPER32_gc = (0x0D<<0),
    NVMCTRL_CMD_EEWR_gc = (0x12<<0),
    NVMCTRL_CMD_EEERWR_gc = (0x13<<0),
    NVMCTRL_CMD_EEBER_gc = (0x18<<0),
    NVMCTRL_CMD_EEMBER2_gc = (0x19<<0),
    NVMCTRL_CMD_EEMBER4_gc = (0x1A<<0),
    NVMCTRL_CMD_EEMBER8_gc = (0x1B<<0),
    NVMCTRL_CMD_EEMBER16_gc = (0x1C<<0),
    NVMCTRL_CMD_EEMBER32_gc = (0x1D<<0),
    NVMCTRL_CMD_CHER_gc = (0x20<<0),
    NVMCTRL_CMD_EECHER_gc = (0x30<<0)
} NVMCTRL_CMD_t;


typedef enum NVMCTRL_ERROR_enum
{
    NVMCTRL_ERROR_NOERROR_gc = (0x00<<4),
    NVMCTRL_ERROR_ILLEGALCMD_gc = (0x01<<4),
    NVMCTRL_ERROR_ILLEGALSADDR_gc = (0x02<<4),
    NVMCTRL_ERROR_DOUBLESELECT_gc = (0x03<<4),
    NVMCTRL_ERROR_ONGOINGPROG_gc = (0x04<<4)
} NVMCTRL_ERROR_t;


typedef enum NVMCTRL_FLMAP_enum
{
    NVMCTRL_FLMAP_SECTION0_gc = (0x00<<4),
    NVMCTRL_FLMAP_SECTION1_gc = (0x01<<4),
    NVMCTRL_FLMAP_SECTION2_gc = (0x02<<4),
    NVMCTRL_FLMAP_SECTION3_gc = (0x03<<4)
} NVMCTRL_FLMAP_t;
# 1881 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct OPAMP_struct
{
    register8_t CTRLA;
    register8_t DBGCTRL;
    register8_t TIMEBASE;
    register8_t reserved_1[12];
    register8_t PWRCTRL;
    register8_t OP0CTRLA;
    register8_t OP0STATUS;
    register8_t OP0RESMUX;
    register8_t OP0INMUX;
    register8_t OP0SETTLE;
    register8_t OP0CAL;
    register8_t reserved_2[2];
    register8_t OP1CTRLA;
    register8_t OP1STATUS;
    register8_t OP1RESMUX;
    register8_t OP1INMUX;
    register8_t OP1SETTLE;
    register8_t OP1CAL;
    register8_t reserved_3[2];
    register8_t OP2CTRLA;
    register8_t OP2STATUS;
    register8_t OP2RESMUX;
    register8_t OP2INMUX;
    register8_t OP2SETTLE;
    register8_t OP2CAL;
    register8_t reserved_4[26];
} OPAMP_t;


typedef enum OPAMP_OP0CTRLA_OUTMODE_enum
{
    OPAMP_OP0CTRLA_OUTMODE_OFF_gc = (0x00<<2),
    OPAMP_OP0CTRLA_OUTMODE_NORMAL_gc = (0x01<<2)
} OPAMP_OP0CTRLA_OUTMODE_t;


typedef enum OPAMP_OP0INMUX_MUXNEG_enum
{
    OPAMP_OP0INMUX_MUXNEG_INN_gc = (0x00<<4),
    OPAMP_OP0INMUX_MUXNEG_WIP_gc = (0x01<<4),
    OPAMP_OP0INMUX_MUXNEG_OUT_gc = (0x02<<4),
    OPAMP_OP0INMUX_MUXNEG_DAC_gc = (0x03<<4)
} OPAMP_OP0INMUX_MUXNEG_t;


typedef enum OPAMP_OP0INMUX_MUXPOS_enum
{
    OPAMP_OP0INMUX_MUXPOS_INP_gc = (0x00<<0),
    OPAMP_OP0INMUX_MUXPOS_WIP_gc = (0x01<<0),
    OPAMP_OP0INMUX_MUXPOS_DAC_gc = (0x02<<0),
    OPAMP_OP0INMUX_MUXPOS_GND_gc = (0x03<<0),
    OPAMP_OP0INMUX_MUXPOS_VDDDIV2_gc = (0x04<<0)
} OPAMP_OP0INMUX_MUXPOS_t;


typedef enum OPAMP_OP0RESMUX_MUXBOT_enum
{
    OPAMP_OP0RESMUX_MUXBOT_OFF_gc = (0x00<<2),
    OPAMP_OP0RESMUX_MUXBOT_INP_gc = (0x01<<2),
    OPAMP_OP0RESMUX_MUXBOT_INN_gc = (0x02<<2),
    OPAMP_OP0RESMUX_MUXBOT_DAC_gc = (0x03<<2),
    OPAMP_OP0RESMUX_MUXBOT_LINKOUT_gc = (0x04<<2),
    OPAMP_OP0RESMUX_MUXBOT_GND_gc = (0x05<<2)
} OPAMP_OP0RESMUX_MUXBOT_t;


typedef enum OPAMP_OP0RESMUX_MUXTOP_enum
{
    OPAMP_OP0RESMUX_MUXTOP_OFF_gc = (0x00<<0),
    OPAMP_OP0RESMUX_MUXTOP_OUT_gc = (0x01<<0),
    OPAMP_OP0RESMUX_MUXTOP_VDD_gc = (0x02<<0)
} OPAMP_OP0RESMUX_MUXTOP_t;


typedef enum OPAMP_OP0RESMUX_MUXWIP_enum
{
    OPAMP_OP0RESMUX_MUXWIP_WIP0_gc = (0x00<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP1_gc = (0x01<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP2_gc = (0x02<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP3_gc = (0x03<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP4_gc = (0x04<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP5_gc = (0x05<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP6_gc = (0x06<<5),
    OPAMP_OP0RESMUX_MUXWIP_WIP7_gc = (0x07<<5)
} OPAMP_OP0RESMUX_MUXWIP_t;


typedef enum OPAMP_OP1CTRLA_OUTMODE_enum
{
    OPAMP_OP1CTRLA_OUTMODE_OFF_gc = (0x00<<2),
    OPAMP_OP1CTRLA_OUTMODE_NORMAL_gc = (0x01<<2)
} OPAMP_OP1CTRLA_OUTMODE_t;


typedef enum OPAMP_OP1INMUX_MUXNEG_enum
{
    OPAMP_OP1INMUX_MUXNEG_INN_gc = (0x00<<4),
    OPAMP_OP1INMUX_MUXNEG_WIP_gc = (0x01<<4),
    OPAMP_OP1INMUX_MUXNEG_OUT_gc = (0x02<<4),
    OPAMP_OP1INMUX_MUXNEG_DAC_gc = (0x03<<4)
} OPAMP_OP1INMUX_MUXNEG_t;


typedef enum OPAMP_OP1INMUX_MUXPOS_enum
{
    OPAMP_OP1INMUX_MUXPOS_INP_gc = (0x00<<0),
    OPAMP_OP1INMUX_MUXPOS_WIP_gc = (0x01<<0),
    OPAMP_OP1INMUX_MUXPOS_DAC_gc = (0x02<<0),
    OPAMP_OP1INMUX_MUXPOS_GND_gc = (0x03<<0),
    OPAMP_OP1INMUX_MUXPOS_VDDDIV2_gc = (0x04<<0),
    OPAMP_OP1INMUX_MUXPOS_LINKOUT_gc = (0x05<<0)
} OPAMP_OP1INMUX_MUXPOS_t;


typedef enum OPAMP_OP1RESMUX_MUXBOT_enum
{
    OPAMP_OP1RESMUX_MUXBOT_OFF_gc = (0x00<<2),
    OPAMP_OP1RESMUX_MUXBOT_INP_gc = (0x01<<2),
    OPAMP_OP1RESMUX_MUXBOT_INN_gc = (0x02<<2),
    OPAMP_OP1RESMUX_MUXBOT_DAC_gc = (0x03<<2),
    OPAMP_OP1RESMUX_MUXBOT_LINKOUT_gc = (0x04<<2),
    OPAMP_OP1RESMUX_MUXBOT_GND_gc = (0x05<<2)
} OPAMP_OP1RESMUX_MUXBOT_t;


typedef enum OPAMP_OP1RESMUX_MUXTOP_enum
{
    OPAMP_OP1RESMUX_MUXTOP_OFF_gc = (0x00<<0),
    OPAMP_OP1RESMUX_MUXTOP_OUT_gc = (0x01<<0),
    OPAMP_OP1RESMUX_MUXTOP_VDD_gc = (0x02<<0)
} OPAMP_OP1RESMUX_MUXTOP_t;


typedef enum OPAMP_OP1RESMUX_MUXWIP_enum
{
    OPAMP_OP1RESMUX_MUXWIP_WIP0_gc = (0x00<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP1_gc = (0x01<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP2_gc = (0x02<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP3_gc = (0x03<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP4_gc = (0x04<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP5_gc = (0x05<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP6_gc = (0x06<<5),
    OPAMP_OP1RESMUX_MUXWIP_WIP7_gc = (0x07<<5)
} OPAMP_OP1RESMUX_MUXWIP_t;


typedef enum OPAMP_OP2CTRLA_OUTMODE_enum
{
    OPAMP_OP2CTRLA_OUTMODE_OFF_gc = (0x00<<2),
    OPAMP_OP2CTRLA_OUTMODE_NORMAL_gc = (0x01<<2)
} OPAMP_OP2CTRLA_OUTMODE_t;


typedef enum OPAMP_OP2INMUX_MUXNEG_enum
{
    OPAMP_OP2INMUX_MUXNEG_INN_gc = (0x00<<4),
    OPAMP_OP2INMUX_MUXNEG_WIP_gc = (0x01<<4),
    OPAMP_OP2INMUX_MUXNEG_OUT_gc = (0x02<<4),
    OPAMP_OP2INMUX_MUXNEG_DAC_gc = (0x03<<4)
} OPAMP_OP2INMUX_MUXNEG_t;


typedef enum OPAMP_OP2INMUX_MUXPOS_enum
{
    OPAMP_OP2INMUX_MUXPOS_INP_gc = (0x00<<0),
    OPAMP_OP2INMUX_MUXPOS_WIP_gc = (0x01<<0),
    OPAMP_OP2INMUX_MUXPOS_DAC_gc = (0x02<<0),
    OPAMP_OP2INMUX_MUXPOS_GND_gc = (0x03<<0),
    OPAMP_OP2INMUX_MUXPOS_VDDDIV2_gc = (0x04<<0),
    OPAMP_OP2INMUX_MUXPOS_LINKOUT_gc = (0x05<<0),
    OPAMP_OP2INMUX_MUXPOS_LINKWIP_gc = (0x06<<0)
} OPAMP_OP2INMUX_MUXPOS_t;


typedef enum OPAMP_OP2RESMUX_MUXBOT_enum
{
    OPAMP_OP2RESMUX_MUXBOT_OFF_gc = (0x00<<2),
    OPAMP_OP2RESMUX_MUXBOT_INP_gc = (0x01<<2),
    OPAMP_OP2RESMUX_MUXBOT_INN_gc = (0x02<<2),
    OPAMP_OP2RESMUX_MUXBOT_DAC_gc = (0x03<<2),
    OPAMP_OP2RESMUX_MUXBOT_LINKOUT_gc = (0x04<<2),
    OPAMP_OP2RESMUX_MUXBOT_GND_gc = (0x05<<2)
} OPAMP_OP2RESMUX_MUXBOT_t;


typedef enum OPAMP_OP2RESMUX_MUXTOP_enum
{
    OPAMP_OP2RESMUX_MUXTOP_OFF_gc = (0x00<<0),
    OPAMP_OP2RESMUX_MUXTOP_OUT_gc = (0x01<<0),
    OPAMP_OP2RESMUX_MUXTOP_VDD_gc = (0x02<<0)
} OPAMP_OP2RESMUX_MUXTOP_t;


typedef enum OPAMP_OP2RESMUX_MUXWIP_enum
{
    OPAMP_OP2RESMUX_MUXWIP_WIP0_gc = (0x00<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP1_gc = (0x01<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP2_gc = (0x02<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP3_gc = (0x03<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP4_gc = (0x04<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP5_gc = (0x05<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP6_gc = (0x06<<5),
    OPAMP_OP2RESMUX_MUXWIP_WIP7_gc = (0x07<<5)
} OPAMP_OP2RESMUX_MUXWIP_t;


typedef enum OPAMP_PWRCTRL_IRSEL_enum
{
    OPAMP_PWRCTRL_IRSEL_FULL_gc = (0x00<<0),
    OPAMP_PWRCTRL_IRSEL_REDUCED_gc = (0x01<<0)
} OPAMP_PWRCTRL_IRSEL_t;
# 2102 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct PORT_struct
{
    register8_t DIR;
    register8_t DIRSET;
    register8_t DIRCLR;
    register8_t DIRTGL;
    register8_t OUT;
    register8_t OUTSET;
    register8_t OUTCLR;
    register8_t OUTTGL;
    register8_t IN;
    register8_t INTFLAGS;
    register8_t PORTCTRL;
    register8_t PINCONFIG;
    register8_t PINCTRLUPD;
    register8_t PINCTRLSET;
    register8_t PINCTRLCLR;
    register8_t reserved_1[1];
    register8_t PIN0CTRL;
    register8_t PIN1CTRL;
    register8_t PIN2CTRL;
    register8_t PIN3CTRL;
    register8_t PIN4CTRL;
    register8_t PIN5CTRL;
    register8_t PIN6CTRL;
    register8_t PIN7CTRL;
    register8_t reserved_2[8];
} PORT_t;


typedef enum PORT_ISC_enum
{
    PORT_ISC_INTDISABLE_gc = (0x00<<0),
    PORT_ISC_BOTHEDGES_gc = (0x01<<0),
    PORT_ISC_RISING_gc = (0x02<<0),
    PORT_ISC_FALLING_gc = (0x03<<0),
    PORT_ISC_INPUT_DISABLE_gc = (0x04<<0),
    PORT_ISC_LEVEL_gc = (0x05<<0)
} PORT_ISC_t;
# 2149 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct PORTMUX_struct
{
    register8_t EVSYSROUTEA;
    register8_t CCLROUTEA;
    register8_t USARTROUTEA;
    register8_t USARTROUTEB;
    register8_t SPIROUTEA;
    register8_t TWIROUTEA;
    register8_t TCAROUTEA;
    register8_t TCBROUTEA;
    register8_t TCDROUTEA;
    register8_t ACROUTEA;
    register8_t ZCDROUTEA;
    register8_t reserved_1[5];
} PORTMUX_t;


typedef enum PORTMUX_AC0_enum
{
    PORTMUX_AC0_DEFAULT_gc = (0x00<<0),
    PORTMUX_AC0_ALT1_gc = (0x01<<0)
} PORTMUX_AC0_t;


typedef enum PORTMUX_AC1_enum
{
    PORTMUX_AC1_DEFAULT_gc = (0x00<<1),
    PORTMUX_AC1_ALT1_gc = (0x01<<1)
} PORTMUX_AC1_t;


typedef enum PORTMUX_AC2_enum
{
    PORTMUX_AC2_DEFAULT_gc = (0x00<<2),
    PORTMUX_AC2_ALT1_gc = (0x01<<2)
} PORTMUX_AC2_t;


typedef enum PORTMUX_EVOUTA_enum
{
    PORTMUX_EVOUTA_DEFAULT_gc = (0x00<<0),
    PORTMUX_EVOUTA_ALT1_gc = (0x01<<0)
} PORTMUX_EVOUTA_t;


typedef enum PORTMUX_EVOUTB_enum
{
    PORTMUX_EVOUTB_DEFAULT_gc = (0x00<<1)
} PORTMUX_EVOUTB_t;


typedef enum PORTMUX_EVOUTC_enum
{
    PORTMUX_EVOUTC_DEFAULT_gc = (0x00<<2),
    PORTMUX_EVOUTC_ALT1_gc = (0x01<<2)
} PORTMUX_EVOUTC_t;


typedef enum PORTMUX_EVOUTD_enum
{
    PORTMUX_EVOUTD_DEFAULT_gc = (0x00<<3),
    PORTMUX_EVOUTD_ALT1_gc = (0x01<<3)
} PORTMUX_EVOUTD_t;


typedef enum PORTMUX_EVOUTE_enum
{
    PORTMUX_EVOUTE_DEFAULT_gc = (0x00<<4)
} PORTMUX_EVOUTE_t;


typedef enum PORTMUX_EVOUTF_enum
{
    PORTMUX_EVOUTF_DEFAULT_gc = (0x00<<5)
} PORTMUX_EVOUTF_t;


typedef enum PORTMUX_LUT0_enum
{
    PORTMUX_LUT0_DEFAULT_gc = (0x00<<0),
    PORTMUX_LUT0_ALT1_gc = (0x01<<0)
} PORTMUX_LUT0_t;


typedef enum PORTMUX_LUT1_enum
{
    PORTMUX_LUT1_DEFAULT_gc = (0x00<<1),
    PORTMUX_LUT1_ALT1_gc = (0x01<<1)
} PORTMUX_LUT1_t;


typedef enum PORTMUX_LUT2_enum
{
    PORTMUX_LUT2_DEFAULT_gc = (0x00<<2),
    PORTMUX_LUT2_ALT1_gc = (0x01<<2)
} PORTMUX_LUT2_t;


typedef enum PORTMUX_LUT3_enum
{
    PORTMUX_LUT3_DEFAULT_gc = (0x00<<3)
} PORTMUX_LUT3_t;


typedef enum PORTMUX_LUT4_enum
{
    PORTMUX_LUT4_DEFAULT_gc = (0x00<<4),
    PORTMUX_LUT4_ALT1_gc = (0x01<<4)
} PORTMUX_LUT4_t;


typedef enum PORTMUX_SPI0_enum
{
    PORTMUX_SPI0_DEFAULT_gc = (0x00<<0),
    PORTMUX_SPI0_ALT1_gc = (0x01<<0),
    PORTMUX_SPI0_NONE_gc = (0x03<<0)
} PORTMUX_SPI0_t;


typedef enum PORTMUX_SPI1_enum
{
    PORTMUX_SPI1_DEFAULT_gc = (0x00<<2),
    PORTMUX_SPI1_ALT1_gc = (0x01<<2),
    PORTMUX_SPI1_ALT2_gc = (0x02<<2),
    PORTMUX_SPI1_NONE_gc = (0x03<<2)
} PORTMUX_SPI1_t;


typedef enum PORTMUX_TCA0_enum
{
    PORTMUX_TCA0_PORTA_gc = (0x00<<0),
    PORTMUX_TCA0_PORTB_gc = (0x01<<0),
    PORTMUX_TCA0_PORTC_gc = (0x02<<0),
    PORTMUX_TCA0_PORTD_gc = (0x03<<0),
    PORTMUX_TCA0_PORTE_gc = (0x04<<0),
    PORTMUX_TCA0_PORTF_gc = (0x05<<0)
} PORTMUX_TCA0_t;


typedef enum PORTMUX_TCA1_enum
{
    PORTMUX_TCA1_PORTB_gc = (0x00<<3),
    PORTMUX_TCA1_PORTC_gc = (0x01<<3)
} PORTMUX_TCA1_t;


typedef enum PORTMUX_TCB0_enum
{
    PORTMUX_TCB0_DEFAULT_gc = (0x00<<0),
    PORTMUX_TCB0_ALT1_gc = (0x01<<0)
} PORTMUX_TCB0_t;


typedef enum PORTMUX_TCB1_enum
{
    PORTMUX_TCB1_DEFAULT_gc = (0x00<<1),
    PORTMUX_TCB1_ALT1_gc = (0x01<<1)
} PORTMUX_TCB1_t;


typedef enum PORTMUX_TCB2_enum
{
    PORTMUX_TCB2_DEFAULT_gc = (0x00<<2),
    PORTMUX_TCB2_ALT1_gc = (0x01<<2)
} PORTMUX_TCB2_t;


typedef enum PORTMUX_TCB3_enum
{
    PORTMUX_TCB3_DEFAULT_gc = (0x00<<3),
    PORTMUX_TCB3_ALT1_gc = (0x01<<3)
} PORTMUX_TCB3_t;


typedef enum PORTMUX_TCD0_enum
{
    PORTMUX_TCD0_DEFAULT_gc = (0x00<<0),
    PORTMUX_TCD0_ALT1_gc = (0x01<<0),
    PORTMUX_TCD0_ALT2_gc = (0x02<<0)
} PORTMUX_TCD0_t;


typedef enum PORTMUX_TWI0_enum
{
    PORTMUX_TWI0_DEFAULT_gc = (0x00<<0),
    PORTMUX_TWI0_ALT1_gc = (0x01<<0),
    PORTMUX_TWI0_ALT2_gc = (0x02<<0)
} PORTMUX_TWI0_t;


typedef enum PORTMUX_TWI1_enum
{
    PORTMUX_TWI1_DEFAULT_gc = (0x00<<2),
    PORTMUX_TWI1_ALT1_gc = (0x01<<2),
    PORTMUX_TWI1_ALT2_gc = (0x02<<2)
} PORTMUX_TWI1_t;


typedef enum PORTMUX_USART0_enum
{
    PORTMUX_USART0_DEFAULT_gc = (0x00<<0),
    PORTMUX_USART0_ALT1_gc = (0x01<<0),
    PORTMUX_USART0_NONE_gc = (0x03<<0)
} PORTMUX_USART0_t;


typedef enum PORTMUX_USART1_enum
{
    PORTMUX_USART1_DEFAULT_gc = (0x00<<2),
    PORTMUX_USART1_ALT1_gc = (0x01<<2),
    PORTMUX_USART1_NONE_gc = (0x03<<2)
} PORTMUX_USART1_t;


typedef enum PORTMUX_USART2_enum
{
    PORTMUX_USART2_DEFAULT_gc = (0x00<<4),
    PORTMUX_USART2_ALT1_gc = (0x01<<4),
    PORTMUX_USART2_NONE_gc = (0x03<<4)
} PORTMUX_USART2_t;


typedef enum PORTMUX_USART3_enum
{
    PORTMUX_USART3_DEFAULT_gc = (0x00<<6),
    PORTMUX_USART3_ALT1_gc = (0x01<<6),
    PORTMUX_USART3_NONE_gc = (0x03<<6)
} PORTMUX_USART3_t;


typedef enum PORTMUX_USART4_enum
{
    PORTMUX_USART4_DEFAULT_gc = (0x00<<0),
    PORTMUX_USART4_NONE_gc = (0x03<<0)
} PORTMUX_USART4_t;


typedef enum PORTMUX_ZCD0_enum
{
    PORTMUX_ZCD0_DEFAULT_gc = (0x00<<0),
    PORTMUX_ZCD0_ALT1_gc = (0x01<<0)
} PORTMUX_ZCD0_t;


typedef enum PORTMUX_ZCD1_enum
{
    PORTMUX_ZCD1_DEFAULT_gc = (0x00<<1),
    PORTMUX_ZCD1_ALT1_gc = (0x01<<1)
} PORTMUX_ZCD1_t;


typedef enum PORTMUX_ZCD2_enum
{
    PORTMUX_ZCD2_DEFAULT_gc = (0x00<<2),
    PORTMUX_ZCD2_ALT1_gc = (0x01<<2)
} PORTMUX_ZCD2_t;
# 2413 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct RSTCTRL_struct
{
    register8_t RSTFR;
    register8_t SWRR;
    register8_t reserved_1[2];
} RSTCTRL_t;
# 2428 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct RTC_struct
{
    register8_t CTRLA;
    register8_t STATUS;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t TEMP;
    register8_t DBGCTRL;
    register8_t CALIB;
    register8_t CLKSEL;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    __extension__ union { register16_t PER; struct { register8_t PERL; register8_t PERH; }; };
    __extension__ union { register16_t CMP; struct { register8_t CMPL; register8_t CMPH; }; };
    register8_t reserved_1[2];
    register8_t PITCTRLA;
    register8_t PITSTATUS;
    register8_t PITINTCTRL;
    register8_t PITINTFLAGS;
    register8_t reserved_2[1];
    register8_t PITDBGCTRL;
    register8_t reserved_3[10];
} RTC_t;


typedef enum RTC_CLKSEL_enum
{
    RTC_CLKSEL_OSC32K_gc = (0x00<<0),
    RTC_CLKSEL_OSC1K_gc = (0x01<<0),
    RTC_CLKSEL_XOSC32K_gc = (0x02<<0),
    RTC_CLKSEL_EXTCLK_gc = (0x03<<0)
} RTC_CLKSEL_t;


typedef enum RTC_PERIOD_enum
{
    RTC_PERIOD_OFF_gc = (0x00<<3),
    RTC_PERIOD_CYC4_gc = (0x01<<3),
    RTC_PERIOD_CYC8_gc = (0x02<<3),
    RTC_PERIOD_CYC16_gc = (0x03<<3),
    RTC_PERIOD_CYC32_gc = (0x04<<3),
    RTC_PERIOD_CYC64_gc = (0x05<<3),
    RTC_PERIOD_CYC128_gc = (0x06<<3),
    RTC_PERIOD_CYC256_gc = (0x07<<3),
    RTC_PERIOD_CYC512_gc = (0x08<<3),
    RTC_PERIOD_CYC1024_gc = (0x09<<3),
    RTC_PERIOD_CYC2048_gc = (0x0A<<3),
    RTC_PERIOD_CYC4096_gc = (0x0B<<3),
    RTC_PERIOD_CYC8192_gc = (0x0C<<3),
    RTC_PERIOD_CYC16384_gc = (0x0D<<3),
    RTC_PERIOD_CYC32768_gc = (0x0E<<3)
} RTC_PERIOD_t;


typedef enum RTC_PRESCALER_enum
{
    RTC_PRESCALER_DIV1_gc = (0x00<<3),
    RTC_PRESCALER_DIV2_gc = (0x01<<3),
    RTC_PRESCALER_DIV4_gc = (0x02<<3),
    RTC_PRESCALER_DIV8_gc = (0x03<<3),
    RTC_PRESCALER_DIV16_gc = (0x04<<3),
    RTC_PRESCALER_DIV32_gc = (0x05<<3),
    RTC_PRESCALER_DIV64_gc = (0x06<<3),
    RTC_PRESCALER_DIV128_gc = (0x07<<3),
    RTC_PRESCALER_DIV256_gc = (0x08<<3),
    RTC_PRESCALER_DIV512_gc = (0x09<<3),
    RTC_PRESCALER_DIV1024_gc = (0x0A<<3),
    RTC_PRESCALER_DIV2048_gc = (0x0B<<3),
    RTC_PRESCALER_DIV4096_gc = (0x0C<<3),
    RTC_PRESCALER_DIV8192_gc = (0x0D<<3),
    RTC_PRESCALER_DIV16384_gc = (0x0E<<3),
    RTC_PRESCALER_DIV32768_gc = (0x0F<<3)
} RTC_PRESCALER_t;
# 2508 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct SIGROW_struct
{
    register8_t DEVICEID0;
    register8_t DEVICEID1;
    register8_t DEVICEID2;
    register8_t reserved_1[1];
    __extension__ union { register16_t TEMPSENSE0; struct { register8_t TEMPSENSE0L; register8_t TEMPSENSE0H; }; };
    __extension__ union { register16_t TEMPSENSE1; struct { register8_t TEMPSENSE1L; register8_t TEMPSENSE1H; }; };
    register8_t reserved_2[8];
    register8_t SERNUM0;
    register8_t SERNUM1;
    register8_t SERNUM2;
    register8_t SERNUM3;
    register8_t SERNUM4;
    register8_t SERNUM5;
    register8_t SERNUM6;
    register8_t SERNUM7;
    register8_t SERNUM8;
    register8_t SERNUM9;
    register8_t SERNUM10;
    register8_t SERNUM11;
    register8_t SERNUM12;
    register8_t SERNUM13;
    register8_t SERNUM14;
    register8_t SERNUM15;
    register8_t reserved_3[32];
} SIGROW_t;
# 2544 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct SLPCTRL_struct
{
    register8_t CTRLA;
    register8_t VREGCTRL;
} SLPCTRL_t;


typedef enum SLPCTRL_HTLLEN_enum
{
    SLPCTRL_HTLLEN_OFF_gc = (0x00<<4),
    SLPCTRL_HTLLEN_ON_gc = (0x01<<4)
} SLPCTRL_HTLLEN_t;


typedef enum SLPCTRL_PMODE_enum
{
    SLPCTRL_PMODE_AUTO_gc = (0x00<<0),
    SLPCTRL_PMODE_FULL_gc = (0x01<<0)
} SLPCTRL_PMODE_t;


typedef enum SLPCTRL_SMODE_enum
{
    SLPCTRL_SMODE_IDLE_gc = (0x00<<1),
    SLPCTRL_SMODE_STDBY_gc = (0x01<<1),
    SLPCTRL_SMODE_PDOWN_gc = (0x02<<1)
} SLPCTRL_SMODE_t;
# 2582 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct SPI_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t DATA;
    register8_t reserved_1[3];
} SPI_t;


typedef enum SPI_MODE_enum
{
    SPI_MODE_0_gc = (0x00<<0),
    SPI_MODE_1_gc = (0x01<<0),
    SPI_MODE_2_gc = (0x02<<0),
    SPI_MODE_3_gc = (0x03<<0)
} SPI_MODE_t;


typedef enum SPI_PRESC_enum
{
    SPI_PRESC_DIV4_gc = (0x00<<1),
    SPI_PRESC_DIV16_gc = (0x01<<1),
    SPI_PRESC_DIV64_gc = (0x02<<1),
    SPI_PRESC_DIV128_gc = (0x03<<1)
} SPI_PRESC_t;
# 2617 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct SYSCFG_struct
{
    register8_t reserved_1[1];
    register8_t REVID;
    register8_t reserved_2[22];
    register8_t OCDMCTRL;
    register8_t OCDMSTATUS;
    register8_t reserved_3[6];
} SYSCFG_t;
# 2635 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct TCA_SINGLE_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLECLR;
    register8_t CTRLESET;
    register8_t CTRLFCLR;
    register8_t CTRLFSET;
    register8_t reserved_1[1];
    register8_t EVCTRL;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t reserved_2[2];
    register8_t DBGCTRL;
    register8_t TEMP;
    register8_t reserved_3[16];
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    register8_t reserved_4[4];
    __extension__ union { register16_t PER; struct { register8_t PERL; register8_t PERH; }; };
    __extension__ union { register16_t CMP0; struct { register8_t CMP0L; register8_t CMP0H; }; };
    __extension__ union { register16_t CMP1; struct { register8_t CMP1L; register8_t CMP1H; }; };
    __extension__ union { register16_t CMP2; struct { register8_t CMP2L; register8_t CMP2H; }; };
    register8_t reserved_5[8];
    __extension__ union { register16_t PERBUF; struct { register8_t PERBUFL; register8_t PERBUFH; }; };
    __extension__ union { register16_t CMP0BUF; struct { register8_t CMP0BUFL; register8_t CMP0BUFH; }; };
    __extension__ union { register16_t CMP1BUF; struct { register8_t CMP1BUFL; register8_t CMP1BUFH; }; };
    __extension__ union { register16_t CMP2BUF; struct { register8_t CMP2BUFL; register8_t CMP2BUFH; }; };
    register8_t reserved_6[2];
} TCA_SINGLE_t;


typedef struct TCA_SPLIT_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLECLR;
    register8_t CTRLESET;
    register8_t reserved_1[4];
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t reserved_2[2];
    register8_t DBGCTRL;
    register8_t reserved_3[17];
    register8_t LCNT;
    register8_t HCNT;
    register8_t reserved_4[4];
    register8_t LPER;
    register8_t HPER;
    register8_t LCMP0;
    register8_t HCMP0;
    register8_t LCMP1;
    register8_t HCMP1;
    register8_t LCMP2;
    register8_t HCMP2;
    register8_t reserved_5[18];
} TCA_SPLIT_t;


typedef union TCA_union
{
    TCA_SINGLE_t SINGLE;
    TCA_SPLIT_t SPLIT;
} TCA_t;


typedef enum TCA_SINGLE_CLKSEL_enum
{
    TCA_SINGLE_CLKSEL_DIV1_gc = (0x00<<1),
    TCA_SINGLE_CLKSEL_DIV2_gc = (0x01<<1),
    TCA_SINGLE_CLKSEL_DIV4_gc = (0x02<<1),
    TCA_SINGLE_CLKSEL_DIV8_gc = (0x03<<1),
    TCA_SINGLE_CLKSEL_DIV16_gc = (0x04<<1),
    TCA_SINGLE_CLKSEL_DIV64_gc = (0x05<<1),
    TCA_SINGLE_CLKSEL_DIV256_gc = (0x06<<1),
    TCA_SINGLE_CLKSEL_DIV1024_gc = (0x07<<1)
} TCA_SINGLE_CLKSEL_t;


typedef enum TCA_SINGLE_CMD_enum
{
    TCA_SINGLE_CMD_NONE_gc = (0x00<<2),
    TCA_SINGLE_CMD_UPDATE_gc = (0x01<<2),
    TCA_SINGLE_CMD_RESTART_gc = (0x02<<2),
    TCA_SINGLE_CMD_RESET_gc = (0x03<<2)
} TCA_SINGLE_CMD_t;


typedef enum TCA_SINGLE_DIR_enum
{
    TCA_SINGLE_DIR_UP_gc = (0x00<<0),
    TCA_SINGLE_DIR_DOWN_gc = (0x01<<0)
} TCA_SINGLE_DIR_t;


typedef enum TCA_SINGLE_EVACTA_enum
{
    TCA_SINGLE_EVACTA_CNT_POSEDGE_gc = (0x00<<1),
    TCA_SINGLE_EVACTA_CNT_ANYEDGE_gc = (0x01<<1),
    TCA_SINGLE_EVACTA_CNT_HIGHLVL_gc = (0x02<<1),
    TCA_SINGLE_EVACTA_UPDOWN_gc = (0x03<<1)
} TCA_SINGLE_EVACTA_t;


typedef enum TCA_SINGLE_EVACTB_enum
{
    TCA_SINGLE_EVACTB_NONE_gc = (0x00<<5),
    TCA_SINGLE_EVACTB_UPDOWN_gc = (0x03<<5),
    TCA_SINGLE_EVACTB_RESTART_POSEDGE_gc = (0x04<<5),
    TCA_SINGLE_EVACTB_RESTART_ANYEDGE_gc = (0x05<<5),
    TCA_SINGLE_EVACTB_RESTART_HIGHLVL_gc = (0x06<<5)
} TCA_SINGLE_EVACTB_t;


typedef enum TCA_SINGLE_WGMODE_enum
{
    TCA_SINGLE_WGMODE_NORMAL_gc = (0x00<<0),
    TCA_SINGLE_WGMODE_FRQ_gc = (0x01<<0),
    TCA_SINGLE_WGMODE_SINGLESLOPE_gc = (0x03<<0),
    TCA_SINGLE_WGMODE_DSTOP_gc = (0x05<<0),
    TCA_SINGLE_WGMODE_DSBOTH_gc = (0x06<<0),
    TCA_SINGLE_WGMODE_DSBOTTOM_gc = (0x07<<0)
} TCA_SINGLE_WGMODE_t;


typedef enum TCA_SPLIT_CLKSEL_enum
{
    TCA_SPLIT_CLKSEL_DIV1_gc = (0x00<<1),
    TCA_SPLIT_CLKSEL_DIV2_gc = (0x01<<1),
    TCA_SPLIT_CLKSEL_DIV4_gc = (0x02<<1),
    TCA_SPLIT_CLKSEL_DIV8_gc = (0x03<<1),
    TCA_SPLIT_CLKSEL_DIV16_gc = (0x04<<1),
    TCA_SPLIT_CLKSEL_DIV64_gc = (0x05<<1),
    TCA_SPLIT_CLKSEL_DIV256_gc = (0x06<<1),
    TCA_SPLIT_CLKSEL_DIV1024_gc = (0x07<<1)
} TCA_SPLIT_CLKSEL_t;


typedef enum TCA_SPLIT_CMD_enum
{
    TCA_SPLIT_CMD_NONE_gc = (0x00<<2),
    TCA_SPLIT_CMD_UPDATE_gc = (0x01<<2),
    TCA_SPLIT_CMD_RESTART_gc = (0x02<<2),
    TCA_SPLIT_CMD_RESET_gc = (0x03<<2)
} TCA_SPLIT_CMD_t;


typedef enum TCA_SPLIT_CMDEN_enum
{
    TCA_SPLIT_CMDEN_NONE_gc = (0x00<<0),
    TCA_SPLIT_CMDEN_BOTH_gc = (0x03<<0)
} TCA_SPLIT_CMDEN_t;
# 2798 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct TCB_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t reserved_1[2];
    register8_t EVCTRL;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t STATUS;
    register8_t DBGCTRL;
    register8_t TEMP;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    __extension__ union { register16_t CCMP; struct { register8_t CCMPL; register8_t CCMPH; }; };
    register8_t reserved_2[2];
} TCB_t;


typedef enum TCB_CLKSEL_enum
{
    TCB_CLKSEL_DIV1_gc = (0x00<<1),
    TCB_CLKSEL_DIV2_gc = (0x01<<1),
    TCB_CLKSEL_TCA0_gc = (0x02<<1),
    TCB_CLKSEL_TCA1_gc = (0x03<<1),
    TCB_CLKSEL_EVENT_gc = (0x07<<1)
} TCB_CLKSEL_t;


typedef enum TCB_CNTMODE_enum
{
    TCB_CNTMODE_INT_gc = (0x00<<0),
    TCB_CNTMODE_TIMEOUT_gc = (0x01<<0),
    TCB_CNTMODE_CAPT_gc = (0x02<<0),
    TCB_CNTMODE_FRQ_gc = (0x03<<0),
    TCB_CNTMODE_PW_gc = (0x04<<0),
    TCB_CNTMODE_FRQPW_gc = (0x05<<0),
    TCB_CNTMODE_SINGLE_gc = (0x06<<0),
    TCB_CNTMODE_PWM8_gc = (0x07<<0)
} TCB_CNTMODE_t;
# 2844 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct TCD_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLE;
    register8_t reserved_1[3];
    register8_t EVCTRLA;
    register8_t EVCTRLB;
    register8_t reserved_2[2];
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t STATUS;
    register8_t reserved_3[1];
    register8_t INPUTCTRLA;
    register8_t INPUTCTRLB;
    register8_t FAULTCTRL;
    register8_t reserved_4[1];
    register8_t DLYCTRL;
    register8_t DLYVAL;
    register8_t reserved_5[2];
    register8_t DITCTRL;
    register8_t DITVAL;
    register8_t reserved_6[4];
    register8_t DBGCTRL;
    register8_t reserved_7[3];
    __extension__ union { register16_t CAPTUREA; struct { register8_t CAPTUREAL; register8_t CAPTUREAH; }; };
    __extension__ union { register16_t CAPTUREB; struct { register8_t CAPTUREBL; register8_t CAPTUREBH; }; };
    register8_t reserved_8[2];
    __extension__ union { register16_t CMPASET; struct { register8_t CMPASETL; register8_t CMPASETH; }; };
    __extension__ union { register16_t CMPACLR; struct { register8_t CMPACLRL; register8_t CMPACLRH; }; };
    __extension__ union { register16_t CMPBSET; struct { register8_t CMPBSETL; register8_t CMPBSETH; }; };
    __extension__ union { register16_t CMPBCLR; struct { register8_t CMPBCLRL; register8_t CMPBCLRH; }; };
    register8_t reserved_9[16];
} TCD_t;


typedef enum TCD_ACTION_enum
{
    TCD_ACTION_FAULT_gc = (0x00<<2),
    TCD_ACTION_CAPTURE_gc = (0x01<<2)
} TCD_ACTION_t;


typedef enum TCD_CFG_enum
{
    TCD_CFG_NEITHER_gc = (0x00<<6),
    TCD_CFG_FILTER_gc = (0x01<<6),
    TCD_CFG_ASYNC_gc = (0x02<<6)
} TCD_CFG_t;


typedef enum TCD_CLKSEL_enum
{
    TCD_CLKSEL_OSCHF_gc = (0x00<<5),
    TCD_CLKSEL_PLL_gc = (0x01<<5),
    TCD_CLKSEL_EXTCLK_gc = (0x02<<5),
    TCD_CLKSEL_CLKPER_gc = (0x03<<5)
} TCD_CLKSEL_t;


typedef enum TCD_CMPCSEL_enum
{
    TCD_CMPCSEL_PWMA_gc = (0x00<<6),
    TCD_CMPCSEL_PWMB_gc = (0x01<<6)
} TCD_CMPCSEL_t;


typedef enum TCD_CMPDSEL_enum
{
    TCD_CMPDSEL_PWMA_gc = (0x00<<7),
    TCD_CMPDSEL_PWMB_gc = (0x01<<7)
} TCD_CMPDSEL_t;


typedef enum TCD_CNTPRES_enum
{
    TCD_CNTPRES_DIV1_gc = (0x00<<3),
    TCD_CNTPRES_DIV4_gc = (0x01<<3),
    TCD_CNTPRES_DIV32_gc = (0x02<<3)
} TCD_CNTPRES_t;


typedef enum TCD_DITHERSEL_enum
{
    TCD_DITHERSEL_ONTIMEB_gc = (0x00<<0),
    TCD_DITHERSEL_ONTIMEAB_gc = (0x01<<0),
    TCD_DITHERSEL_DEADTIMEB_gc = (0x02<<0),
    TCD_DITHERSEL_DEADTIMEAB_gc = (0x03<<0)
} TCD_DITHERSEL_t;


typedef enum TCD_DLYPRESC_enum
{
    TCD_DLYPRESC_DIV1_gc = (0x00<<4),
    TCD_DLYPRESC_DIV2_gc = (0x01<<4),
    TCD_DLYPRESC_DIV4_gc = (0x02<<4),
    TCD_DLYPRESC_DIV8_gc = (0x03<<4)
} TCD_DLYPRESC_t;


typedef enum TCD_DLYSEL_enum
{
    TCD_DLYSEL_OFF_gc = (0x00<<0),
    TCD_DLYSEL_INBLANK_gc = (0x01<<0),
    TCD_DLYSEL_EVENT_gc = (0x02<<0)
} TCD_DLYSEL_t;


typedef enum TCD_DLYTRIG_enum
{
    TCD_DLYTRIG_CMPASET_gc = (0x00<<2),
    TCD_DLYTRIG_CMPACLR_gc = (0x01<<2),
    TCD_DLYTRIG_CMPBSET_gc = (0x02<<2),
    TCD_DLYTRIG_CMPBCLR_gc = (0x03<<2)
} TCD_DLYTRIG_t;


typedef enum TCD_EDGE_enum
{
    TCD_EDGE_FALL_LOW_gc = (0x00<<4),
    TCD_EDGE_RISE_HIGH_gc = (0x01<<4)
} TCD_EDGE_t;


typedef enum TCD_INPUTMODE_enum
{
    TCD_INPUTMODE_NONE_gc = (0x00<<0),
    TCD_INPUTMODE_JMPWAIT_gc = (0x01<<0),
    TCD_INPUTMODE_EXECWAIT_gc = (0x02<<0),
    TCD_INPUTMODE_EXECFAULT_gc = (0x03<<0),
    TCD_INPUTMODE_FREQ_gc = (0x04<<0),
    TCD_INPUTMODE_EXECDT_gc = (0x05<<0),
    TCD_INPUTMODE_WAIT_gc = (0x06<<0),
    TCD_INPUTMODE_WAITSW_gc = (0x07<<0),
    TCD_INPUTMODE_EDGETRIG_gc = (0x08<<0),
    TCD_INPUTMODE_EDGETRIGFREQ_gc = (0x09<<0),
    TCD_INPUTMODE_LVLTRIGFREQ_gc = (0x0A<<0)
} TCD_INPUTMODE_t;


typedef enum TCD_SYNCPRES_enum
{
    TCD_SYNCPRES_DIV1_gc = (0x00<<1),
    TCD_SYNCPRES_DIV2_gc = (0x01<<1),
    TCD_SYNCPRES_DIV4_gc = (0x02<<1),
    TCD_SYNCPRES_DIV8_gc = (0x03<<1)
} TCD_SYNCPRES_t;


typedef enum TCD_WGMODE_enum
{
    TCD_WGMODE_ONERAMP_gc = (0x00<<0),
    TCD_WGMODE_TWORAMP_gc = (0x01<<0),
    TCD_WGMODE_FOURRAMP_gc = (0x02<<0),
    TCD_WGMODE_DS_gc = (0x03<<0)
} TCD_WGMODE_t;
# 3010 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct TWI_struct
{
    register8_t CTRLA;
    register8_t DUALCTRL;
    register8_t DBGCTRL;
    register8_t MCTRLA;
    register8_t MCTRLB;
    register8_t MSTATUS;
    register8_t MBAUD;
    register8_t MADDR;
    register8_t MDATA;
    register8_t SCTRLA;
    register8_t SCTRLB;
    register8_t SSTATUS;
    register8_t SADDR;
    register8_t SDATA;
    register8_t SADDRMASK;
    register8_t reserved_1[1];
} TWI_t;


typedef enum TWI_ACKACT_enum
{
    TWI_ACKACT_ACK_gc = (0x00<<2),
    TWI_ACKACT_NACK_gc = (0x01<<2)
} TWI_ACKACT_t;


typedef enum TWI_AP_enum
{
    TWI_AP_STOP_gc = (0x00<<0),
    TWI_AP_ADR_gc = (0x01<<0)
} TWI_AP_t;


typedef enum TWI_BUSSTATE_enum
{
    TWI_BUSSTATE_UNKNOWN_gc = (0x00<<0),
    TWI_BUSSTATE_IDLE_gc = (0x01<<0),
    TWI_BUSSTATE_OWNER_gc = (0x02<<0),
    TWI_BUSSTATE_BUSY_gc = (0x03<<0)
} TWI_BUSSTATE_t;


typedef enum TWI_FMPEN_enum
{
    TWI_FMPEN_OFF_gc = (0x00<<1),
    TWI_FMPEN_ON_gc = (0x01<<1)
} TWI_FMPEN_t;


typedef enum TWI_INPUTLVL_enum
{
    TWI_INPUTLVL_I2C_gc = (0x00<<6),
    TWI_INPUTLVL_SMBUS_gc = (0x01<<6)
} TWI_INPUTLVL_t;


typedef enum TWI_MCMD_enum
{
    TWI_MCMD_NOACT_gc = (0x00<<0),
    TWI_MCMD_REPSTART_gc = (0x01<<0),
    TWI_MCMD_RECVTRANS_gc = (0x02<<0),
    TWI_MCMD_STOP_gc = (0x03<<0)
} TWI_MCMD_t;


typedef enum TWI_SCMD_enum
{
    TWI_SCMD_NOACT_gc = (0x00<<0),
    TWI_SCMD_COMPTRANS_gc = (0x02<<0),
    TWI_SCMD_RESPONSE_gc = (0x03<<0)
} TWI_SCMD_t;


typedef enum TWI_SDAHOLD_enum
{
    TWI_SDAHOLD_OFF_gc = (0x00<<2),
    TWI_SDAHOLD_50NS_gc = (0x01<<2),
    TWI_SDAHOLD_300NS_gc = (0x02<<2),
    TWI_SDAHOLD_500NS_gc = (0x03<<2)
} TWI_SDAHOLD_t;


typedef enum TWI_SDASETUP_enum
{
    TWI_SDASETUP_4CYC_gc = (0x00<<4),
    TWI_SDASETUP_8CYC_gc = (0x01<<4)
} TWI_SDASETUP_t;


typedef enum TWI_TIMEOUT_enum
{
    TWI_TIMEOUT_DISABLED_gc = (0x00<<2),
    TWI_TIMEOUT_50US_gc = (0x01<<2),
    TWI_TIMEOUT_100US_gc = (0x02<<2),
    TWI_TIMEOUT_200US_gc = (0x03<<2)
} TWI_TIMEOUT_t;
# 3116 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct USART_struct
{
    register8_t RXDATAL;
    register8_t RXDATAH;
    register8_t TXDATAL;
    register8_t TXDATAH;
    register8_t STATUS;
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    __extension__ union { register16_t BAUD; struct { register8_t BAUDL; register8_t BAUDH; }; };
    register8_t CTRLD;
    register8_t DBGCTRL;
    register8_t EVCTRL;
    register8_t TXPLCTRL;
    register8_t RXPLCTRL;
    register8_t reserved_1[1];
} USART_t;


typedef enum USART_ABW_enum
{
    USART_ABW_WDW0_gc = (0x00<<6),
    USART_ABW_WDW1_gc = (0x01<<6),
    USART_ABW_WDW2_gc = (0x02<<6),
    USART_ABW_WDW3_gc = (0x03<<6)
} USART_ABW_t;


typedef enum USART_CHSIZE_enum
{
    USART_CHSIZE_5BIT_gc = (0x00<<0),
    USART_CHSIZE_6BIT_gc = (0x01<<0),
    USART_CHSIZE_7BIT_gc = (0x02<<0),
    USART_CHSIZE_8BIT_gc = (0x03<<0),
    USART_CHSIZE_9BITL_gc = (0x06<<0),
    USART_CHSIZE_9BITH_gc = (0x07<<0)
} USART_CHSIZE_t;


typedef enum USART_CMODE_enum
{
    USART_CMODE_ASYNCHRONOUS_gc = (0x00<<6),
    USART_CMODE_SYNCHRONOUS_gc = (0x01<<6),
    USART_CMODE_IRCOM_gc = (0x02<<6),
    USART_CMODE_MSPI_gc = (0x03<<6)
} USART_CMODE_t;


typedef enum USART_PMODE_enum
{
    USART_PMODE_DISABLED_gc = (0x00<<4),
    USART_PMODE_EVEN_gc = (0x02<<4),
    USART_PMODE_ODD_gc = (0x03<<4)
} USART_PMODE_t;


typedef enum USART_RS485_enum
{
    USART_RS485_DISABLE_gc = (0x00<<0),
    USART_RS485_ENABLE_gc = (0x01<<0)
} USART_RS485_t;


typedef enum USART_RXMODE_enum
{
    USART_RXMODE_NORMAL_gc = (0x00<<1),
    USART_RXMODE_CLK2X_gc = (0x01<<1),
    USART_RXMODE_GENAUTO_gc = (0x02<<1),
    USART_RXMODE_LINAUTO_gc = (0x03<<1)
} USART_RXMODE_t;


typedef enum USART_SBMODE_enum
{
    USART_SBMODE_1BIT_gc = (0x00<<3),
    USART_SBMODE_2BIT_gc = (0x01<<3)
} USART_SBMODE_t;
# 3202 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct USERROW_struct
{
    register8_t USERROW0;
    register8_t USERROW1;
    register8_t USERROW2;
    register8_t USERROW3;
    register8_t USERROW4;
    register8_t USERROW5;
    register8_t USERROW6;
    register8_t USERROW7;
    register8_t USERROW8;
    register8_t USERROW9;
    register8_t USERROW10;
    register8_t USERROW11;
    register8_t USERROW12;
    register8_t USERROW13;
    register8_t USERROW14;
    register8_t USERROW15;
    register8_t USERROW16;
    register8_t USERROW17;
    register8_t USERROW18;
    register8_t USERROW19;
    register8_t USERROW20;
    register8_t USERROW21;
    register8_t USERROW22;
    register8_t USERROW23;
    register8_t USERROW24;
    register8_t USERROW25;
    register8_t USERROW26;
    register8_t USERROW27;
    register8_t USERROW28;
    register8_t USERROW29;
    register8_t USERROW30;
    register8_t USERROW31;
} USERROW_t;
# 3246 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct VPORT_struct
{
    register8_t DIR;
    register8_t OUT;
    register8_t IN;
    register8_t INTFLAGS;
} VPORT_t;
# 3262 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct VREF_struct
{
    register8_t ADC0REF;
    register8_t reserved_1[1];
    register8_t DAC0REF;
    register8_t reserved_2[1];
    register8_t ACREF;
} VREF_t;


typedef enum VREF_REFSEL_enum
{
    VREF_REFSEL_1V024_gc = (0x00<<0),
    VREF_REFSEL_2V048_gc = (0x01<<0),
    VREF_REFSEL_4V096_gc = (0x02<<0),
    VREF_REFSEL_2V500_gc = (0x03<<0),
    VREF_REFSEL_VDD_gc = (0x05<<0),
    VREF_REFSEL_VREFA_gc = (0x06<<0)
} VREF_REFSEL_t;
# 3289 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct WDT_struct
{
    register8_t CTRLA;
    register8_t STATUS;
} WDT_t;


typedef enum WDT_PERIOD_enum
{
    WDT_PERIOD_OFF_gc = (0x00<<0),
    WDT_PERIOD_8CLK_gc = (0x01<<0),
    WDT_PERIOD_16CLK_gc = (0x02<<0),
    WDT_PERIOD_32CLK_gc = (0x03<<0),
    WDT_PERIOD_64CLK_gc = (0x04<<0),
    WDT_PERIOD_128CLK_gc = (0x05<<0),
    WDT_PERIOD_256CLK_gc = (0x06<<0),
    WDT_PERIOD_512CLK_gc = (0x07<<0),
    WDT_PERIOD_1KCLK_gc = (0x08<<0),
    WDT_PERIOD_2KCLK_gc = (0x09<<0),
    WDT_PERIOD_4KCLK_gc = (0x0A<<0),
    WDT_PERIOD_8KCLK_gc = (0x0B<<0)
} WDT_PERIOD_t;


typedef enum WDT_WINDOW_enum
{
    WDT_WINDOW_OFF_gc = (0x00<<4),
    WDT_WINDOW_8CLK_gc = (0x01<<4),
    WDT_WINDOW_16CLK_gc = (0x02<<4),
    WDT_WINDOW_32CLK_gc = (0x03<<4),
    WDT_WINDOW_64CLK_gc = (0x04<<4),
    WDT_WINDOW_128CLK_gc = (0x05<<4),
    WDT_WINDOW_256CLK_gc = (0x06<<4),
    WDT_WINDOW_512CLK_gc = (0x07<<4),
    WDT_WINDOW_1KCLK_gc = (0x08<<4),
    WDT_WINDOW_2KCLK_gc = (0x09<<4),
    WDT_WINDOW_4KCLK_gc = (0x0A<<4),
    WDT_WINDOW_8KCLK_gc = (0x0B<<4)
} WDT_WINDOW_t;
# 3336 "/usr/avr/include/avr/ioavr128db48.h" 3
typedef struct ZCD_struct
{
    register8_t CTRLA;
    register8_t reserved_1[1];
    register8_t INTCTRL;
    register8_t STATUS;
    register8_t reserved_2[4];
} ZCD_t;


typedef enum ZCD_INTMODE_enum
{
    ZCD_INTMODE_NONE_gc = (0x00<<0),
    ZCD_INTMODE_RISING_gc = (0x01<<0),
    ZCD_INTMODE_FALLING_gc = (0x02<<0),
    ZCD_INTMODE_BOTH_gc = (0x03<<0)
} ZCD_INTMODE_t;


typedef enum ZCD_STATE_enum
{
    ZCD_STATE_LOW_gc = (0x00<<4),
    ZCD_STATE_HIGH_gc = (0x01<<4)
} ZCD_STATE_t;
# 718 "/usr/avr/include/avr/io.h" 2 3
# 785 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/portpins.h" 1 3
# 786 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/common.h" 1 3
# 788 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/version.h" 1 3
# 790 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/xmega.h" 1 3
# 793 "/usr/avr/include/avr/io.h" 2 3



# 1 "/usr/avr/include/avr/fuse.h" 1 3
# 231 "/usr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char byte[16];
} __fuse_t;
# 797 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/lock.h" 1 3
# 800 "/usr/avr/include/avr/io.h" 2 3
# 10 "main.c" 2


# 11 "main.c"
void USART3_init(void) {



    
# 15 "main.c" 3
   (*(USART_t *) 0x0860)
# 15 "main.c"
         .BAUD = 5000/3;


    
# 18 "main.c" 3
   (*(USART_t *) 0x0860)
# 18 "main.c"
         .CTRLC = USART_CMODE_ASYNCHRONOUS_gc | USART_PMODE_DISABLED_gc |
    USART_SBMODE_1BIT_gc | USART_CHSIZE_8BIT_gc;


    
# 22 "main.c" 3
   (*(USART_t *) 0x0860)
# 22 "main.c"
         .CTRLB = 
# 22 "main.c" 3
                  0x40
# 22 "main.c"
                               ;


    
# 25 "main.c" 3
   (*(VPORT_t *) 0x0004)
# 25 "main.c"
         .DIR |= 
# 25 "main.c" 3
                 0x01
# 25 "main.c"
                        ;
}

void USART3_sendChar(char c) {

    while (!(
# 30 "main.c" 3
            (*(USART_t *) 0x0860)
# 30 "main.c"
                  .STATUS & 
# 30 "main.c" 3
                            0x20
# 30 "main.c"
                                          )) {}
    
# 31 "main.c" 3
   (*(USART_t *) 0x0860)
# 31 "main.c"
         .TXDATAL = c;
}

int main(void) {
    USART3_init();

    USART3_sendChar('|');
    USART3_sendChar('-');
    uint8_t message[] = "Hello World\0";
    uint8_t i = 0;
    while (message[i] != '\0') {
        USART3_sendChar(message[i]);
        i++;
    }

    USART3_sendChar(254);
    USART3_sendChar(128+64);
    uint8_t message2[] = "What happens now\0";
    i = 0;
    while (message2[i] != '\0') {
        USART3_sendChar(message[i]);
        i++;
    }
}
