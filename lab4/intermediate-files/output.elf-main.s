	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/penguin/Code/projects/ese381/review/lab4" "main.c"
.global	USART3_init
	.type	USART3_init, @function
USART3_init:
.LFB0:
	.file 1 "main.c"
	.loc 1 11 24 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 15 4 view .LVU1
	.loc 1 15 16 is_stmt 0 view .LVU2
	ldi r30,lo8(96)
	ldi r31,lo8(8)
	ldi r24,lo8(-126)
	ldi r25,lo8(6)
	std Z+8,r24
	std Z+9,r25
	.loc 1 18 4 is_stmt 1 view .LVU3
	.loc 1 18 17 is_stmt 0 view .LVU4
	ldi r24,lo8(3)
	std Z+7,r24
	.loc 1 22 4 is_stmt 1 view .LVU5
	.loc 1 22 17 is_stmt 0 view .LVU6
	ldi r24,lo8(64)
	std Z+6,r24
	.loc 1 25 4 is_stmt 1 view .LVU7
	.loc 1 25 10 is_stmt 0 view .LVU8
	in r24,0x4
	.loc 1 25 15 view .LVU9
	ori r24,lo8(1)
	out 0x4,r24
/* epilogue start */
	.loc 1 26 1 view .LVU10
	ret
	.cfi_endproc
.LFE0:
	.size	USART3_init, .-USART3_init
.global	USART3_sendChar
	.type	USART3_sendChar, @function
USART3_sendChar:
.LFB1:
	.loc 1 28 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.L3:
	.loc 1 30 47 discriminator 1 view .LVU12
	.loc 1 30 12 discriminator 1 view .LVU13
	.loc 1 30 19 is_stmt 0 discriminator 1 view .LVU14
	lds r25,2148
	.loc 1 30 12 discriminator 1 view .LVU15
	sbrs r25,5
	rjmp .L3
	.loc 1 31 4 is_stmt 1 view .LVU16
	.loc 1 31 19 is_stmt 0 view .LVU17
	sts 2146,r24
/* epilogue start */
	.loc 1 32 1 view .LVU18
	ret
	.cfi_endproc
.LFE1:
	.size	USART3_sendChar, .-USART3_sendChar
	.section	.rodata
.LC0:
	.string	"Hello World"
	.string	""
.LC1:
	.string	"What happens now"
	.string	""
	.text
.global	main
	.type	main, @function
main:
.LFB2:
	.loc 1 34 16 is_stmt 1 view -0
	.cfi_startproc
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,31
	.cfi_def_cfa_offset 33
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 31 */
/* stack size = 31 */
.L__stack_usage = 31
	.loc 1 35 5 view .LVU20
	call USART3_init
.LVL1:
	.loc 1 37 5 view .LVU21
	ldi r24,lo8(124)
	call USART3_sendChar
.LVL2:
	.loc 1 38 5 view .LVU22
	ldi r24,lo8(45)
	call USART3_sendChar
.LVL3:
	.loc 1 39 5 view .LVU23
	.loc 1 39 13 is_stmt 0 view .LVU24
	ldi r24,lo8(13)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 40 5 is_stmt 1 view .LVU25
.LVL4:
	.loc 1 41 5 view .LVU26
	.loc 1 40 13 is_stmt 0 view .LVU27
	ldi r16,0
	.loc 1 41 11 view .LVU28
	rjmp .L5
.LVL5:
.L6:
	.loc 1 42 9 is_stmt 1 view .LVU29
	mov r24,r17
	call USART3_sendChar
.LVL6:
	.loc 1 43 9 view .LVU30
	.loc 1 43 10 is_stmt 0 view .LVU31
	subi r16,lo8(-(1))
.LVL7:
.L5:
	.loc 1 41 23 is_stmt 1 view .LVU32
	.loc 1 41 19 is_stmt 0 view .LVU33
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r16
	adc r31,__zero_reg__
	ld r17,Z
	.loc 1 41 23 view .LVU34
	cpse r17,__zero_reg__
	rjmp .L6
	.loc 1 46 5 is_stmt 1 view .LVU35
	ldi r24,lo8(-2)
	call USART3_sendChar
.LVL8:
	.loc 1 47 5 view .LVU36
	ldi r24,lo8(-64)
	call USART3_sendChar
.LVL9:
	.loc 1 48 5 view .LVU37
	.loc 1 48 13 is_stmt 0 view .LVU38
	ldi r24,lo8(18)
	ldi r30,lo8(.LC1)
	ldi r31,hi8(.LC1)
	movw r26,r28
	adiw r26,14
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 49 5 is_stmt 1 view .LVU39
.LVL10:
	.loc 1 50 5 view .LVU40
	.loc 1 50 11 is_stmt 0 view .LVU41
	rjmp .L7
.LVL11:
.L8:
	.loc 1 51 9 is_stmt 1 view .LVU42
	.loc 1 51 32 is_stmt 0 view .LVU43
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r18
	adc r31,r19
	.loc 1 51 9 view .LVU44
	ld r24,Z
	call USART3_sendChar
.LVL12:
	.loc 1 52 9 is_stmt 1 view .LVU45
	.loc 1 52 10 is_stmt 0 view .LVU46
	subi r17,lo8(-(1))
.LVL13:
.L7:
	.loc 1 50 24 is_stmt 1 view .LVU47
	.loc 1 50 20 is_stmt 0 view .LVU48
	mov r18,r17
	ldi r19,0
	ldi r30,lo8(14)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r17
	adc r31,__zero_reg__
	ld r24,Z
	.loc 1 50 24 view .LVU49
	cpse r24,__zero_reg__
	rjmp .L8
	.loc 1 54 1 view .LVU50
	ldi r24,0
	ldi r25,0
/* epilogue start */
	adiw r28,31
	out __SP_L__,r28
	out __SP_H__,r29
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/avr/include/stdint.h"
	.file 3 "/usr/avr/include/avr/ioavr128db48.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c1
	.word	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x6
	.long	.LASF4
	.byte	0x2
	.byte	0x7e
	.byte	0x16
	.long	0x3e
	.uleb128 0x8
	.long	0x2d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	.LASF5
	.byte	0x2
	.byte	0x80
	.byte	0x16
	.long	0x5d
	.uleb128 0x8
	.long	0x4c
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x39
	.byte	0x1a
	.long	0x39
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x3a
	.byte	0x1b
	.long	0x58
	.uleb128 0x9
	.long	0x80
	.long	0xa8
	.uleb128 0xa
	.long	0x5d
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x98
	.uleb128 0x12
	.byte	0x2
	.byte	0x3
	.word	0xc36
	.byte	0x2e
	.long	0xd2
	.uleb128 0x1
	.long	.LASF13
	.word	0xc36
	.byte	0x43
	.long	0x80
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.word	0xc36
	.byte	0x56
	.long	0x80
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x2
	.byte	0x3
	.word	0xc36
	.byte	0x13
	.long	0xef
	.uleb128 0x14
	.long	.LASF57
	.byte	0x3
	.word	0xc36
	.byte	0x28
	.long	0x8c
	.uleb128 0x15
	.long	0xad
	.byte	0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x10
	.word	0xc2c
	.long	0x1b8
	.uleb128 0x1
	.long	.LASF15
	.word	0xc2e
	.byte	0x11
	.long	0x80
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.word	0xc2f
	.byte	0x11
	.long	0x80
	.byte	0x1
	.uleb128 0x1
	.long	.LASF17
	.word	0xc30
	.byte	0x11
	.long	0x80
	.byte	0x2
	.uleb128 0x1
	.long	.LASF18
	.word	0xc31
	.byte	0x11
	.long	0x80
	.byte	0x3
	.uleb128 0x1
	.long	.LASF19
	.word	0xc32
	.byte	0x11
	.long	0x80
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.word	0xc33
	.byte	0x11
	.long	0x80
	.byte	0x5
	.uleb128 0x1
	.long	.LASF21
	.word	0xc34
	.byte	0x11
	.long	0x80
	.byte	0x6
	.uleb128 0x1
	.long	.LASF22
	.word	0xc35
	.byte	0x11
	.long	0x80
	.byte	0x7
	.uleb128 0x16
	.long	0xd2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF23
	.word	0xc37
	.byte	0x11
	.long	0x80
	.byte	0xa
	.uleb128 0x1
	.long	.LASF24
	.word	0xc38
	.byte	0x11
	.long	0x80
	.byte	0xb
	.uleb128 0x1
	.long	.LASF25
	.word	0xc39
	.byte	0x11
	.long	0x80
	.byte	0xc
	.uleb128 0x1
	.long	.LASF26
	.word	0xc3a
	.byte	0x11
	.long	0x80
	.byte	0xd
	.uleb128 0x1
	.long	.LASF27
	.word	0xc3b
	.byte	0x11
	.long	0x80
	.byte	0xe
	.uleb128 0x1
	.long	.LASF28
	.word	0xc3c
	.byte	0x11
	.long	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.word	0xc3d
	.long	0xef
	.uleb128 0x7
	.long	.LASF36
	.long	0x5d
	.word	0xc49
	.long	0x1f7
	.uleb128 0x2
	.long	.LASF30
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x1
	.uleb128 0x2
	.long	.LASF32
	.byte	0x2
	.uleb128 0x2
	.long	.LASF33
	.byte	0x3
	.uleb128 0x2
	.long	.LASF34
	.byte	0x6
	.uleb128 0x2
	.long	.LASF35
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.long	0x5d
	.word	0xc54
	.long	0x21f
	.uleb128 0x2
	.long	.LASF38
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x40
	.uleb128 0x2
	.long	.LASF40
	.byte	0x80
	.uleb128 0x2
	.long	.LASF41
	.byte	0xc0
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.long	0x5d
	.word	0xc5d
	.long	0x241
	.uleb128 0x2
	.long	.LASF43
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x20
	.uleb128 0x2
	.long	.LASF45
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF46
	.long	0x5d
	.word	0xc75
	.long	0x25d
	.uleb128 0x2
	.long	.LASF47
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x4
	.word	0xcae
	.long	0x29a
	.uleb128 0xb
	.string	"DIR"
	.word	0xcb0
	.long	0x80
	.byte	0
	.uleb128 0xb
	.string	"OUT"
	.word	0xcb1
	.long	0x80
	.byte	0x1
	.uleb128 0xb
	.string	"IN"
	.word	0xcb2
	.long	0x80
	.byte	0x2
	.uleb128 0x1
	.long	.LASF51
	.word	0xcb3
	.byte	0x11
	.long	0x80
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.word	0xcb4
	.long	0x25d
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x45
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x362
	.uleb128 0xe
	.long	.LASF53
	.byte	0x27
	.long	0x362
	.uleb128 0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.long	0x2d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xe
	.long	.LASF54
	.byte	0x30
	.long	0x372
	.uleb128 0x2
	.byte	0x8c
	.sleb128 14
	.uleb128 0xf
	.long	.LVL1
	.long	0x3b2
	.uleb128 0x4
	.long	.LVL2
	.long	0x382
	.long	0x308
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL3
	.long	0x382
	.long	0x31c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.long	.LVL6
	.long	0x382
	.long	0x330
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.long	.LVL8
	.long	0x382
	.long	0x344
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL9
	.long	0x382
	.long	0x358
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0xf
	.long	.LVL12
	.long	0x382
	.byte	0
	.uleb128 0x9
	.long	0x2d
	.long	0x372
	.uleb128 0xa
	.long	0x5d
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x2d
	.long	0x382
	.uleb128 0xa
	.long	0x5d
	.byte	0x11
	.byte	0
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ab
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.byte	0x1b
	.long	0x3ab
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF55
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS1:
	.uleb128 .LVU26
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x60
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS0:
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"INTFLAGS"
.LASF16:
	.string	"RXDATAH"
.LASF15:
	.string	"RXDATAL"
.LASF44:
	.string	"USART_PMODE_EVEN_gc"
.LASF18:
	.string	"TXDATAH"
.LASF17:
	.string	"TXDATAL"
.LASF47:
	.string	"USART_SBMODE_1BIT_gc"
.LASF58:
	.string	"main"
.LASF52:
	.string	"VPORT_t"
.LASF57:
	.string	"BAUD"
.LASF37:
	.string	"USART_CMODE_enum"
.LASF28:
	.string	"reserved_1"
.LASF26:
	.string	"TXPLCTRL"
.LASF4:
	.string	"uint8_t"
.LASF41:
	.string	"USART_CMODE_MSPI_gc"
.LASF6:
	.string	"unsigned int"
.LASF22:
	.string	"CTRLC"
.LASF9:
	.string	"long long int"
.LASF19:
	.string	"STATUS"
.LASF20:
	.string	"CTRLA"
.LASF21:
	.string	"CTRLB"
.LASF31:
	.string	"USART_CHSIZE_6BIT_gc"
.LASF23:
	.string	"CTRLD"
.LASF35:
	.string	"USART_CHSIZE_9BITH_gc"
.LASF38:
	.string	"USART_CMODE_ASYNCHRONOUS_gc"
.LASF56:
	.string	"GNU C17 14.2.0 -mn-flash=2 -mno-skip-bug -mdouble=32 -mlong-double=64 -mmcu=avrxmega4 -mflmap -g -Og"
.LASF40:
	.string	"USART_CMODE_IRCOM_gc"
.LASF43:
	.string	"USART_PMODE_DISABLED_gc"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF27:
	.string	"RXPLCTRL"
.LASF39:
	.string	"USART_CMODE_SYNCHRONOUS_gc"
.LASF5:
	.string	"uint16_t"
.LASF8:
	.string	"long unsigned int"
.LASF12:
	.string	"register16_t"
.LASF45:
	.string	"USART_PMODE_ODD_gc"
.LASF59:
	.string	"USART3_sendChar"
.LASF55:
	.string	"char"
.LASF14:
	.string	"BAUDH"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"BAUDL"
.LASF48:
	.string	"USART_SBMODE_2BIT_gc"
.LASF24:
	.string	"DBGCTRL"
.LASF29:
	.string	"USART_t"
.LASF34:
	.string	"USART_CHSIZE_9BITL_gc"
.LASF53:
	.string	"message"
.LASF60:
	.string	"USART3_init"
.LASF30:
	.string	"USART_CHSIZE_5BIT_gc"
.LASF25:
	.string	"EVCTRL"
.LASF54:
	.string	"message2"
.LASF11:
	.string	"register8_t"
.LASF50:
	.string	"VPORT_struct"
.LASF46:
	.string	"USART_SBMODE_enum"
.LASF32:
	.string	"USART_CHSIZE_7BIT_gc"
.LASF49:
	.string	"USART_struct"
.LASF42:
	.string	"USART_PMODE_enum"
.LASF36:
	.string	"USART_CHSIZE_enum"
.LASF33:
	.string	"USART_CHSIZE_8BIT_gc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/penguin/Code/projects/ese381/review/lab4"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 14.2.0"
