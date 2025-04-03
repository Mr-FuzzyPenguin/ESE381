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
	.file 0 "/home/penguin/Code/projects/ese381/review/lab3" "main.c"
.global	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 59 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 61 5 view .LVU1
.LVL0:
	.loc 1 64 4 view .LVU2
	.loc 1 64 15 is_stmt 0 view .LVU3
	in r24,0x4
	andi r24,lo8(-5)
	out 0x4,r24
	.loc 1 66 4 is_stmt 1 view .LVU4
	.loc 1 66 19 is_stmt 0 view .LVU5
	ldi r24,lo8(8)
	sts 1074,r24
	.loc 1 61 13 view .LVU6
	ldi r18,0
	rjmp .L2
.LVL1:
.L4:
	.loc 1 94 18 is_stmt 1 view .LVU7
	.loc 1 94 21 is_stmt 0 view .LVU8
	cpi r18,lo8(1)
	brne .L5
	.loc 1 96 16 is_stmt 1 view .LVU9
	.loc 1 96 24 is_stmt 0 view .LVU10
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 98 16 is_stmt 1 view .LVU11
	.loc 1 98 34 is_stmt 0 view .LVU12
	ldi r30,lo8(96)
	ldi r31,0
	ldi r18,lo8(-126)
.LVL2:
	.loc 1 98 34 view .LVU13
	st Z,r18
	.loc 1 101 16 is_stmt 1 view .LVU14
	.loc 1 101 24 is_stmt 0 view .LVU15
	out __CCP__,r24
	.loc 1 107 16 is_stmt 1 view .LVU16
	.loc 1 107 37 is_stmt 0 view .LVU17
	ldi r24,lo8(-79)
	std Z+28,r24
	.loc 1 108 17 is_stmt 1 view .LVU18
.LVL3:
	.loc 1 108 22 is_stmt 0 view .LVU19
	mov r18,r25
	rjmp .L5
.LVL4:
.L7:
.LBB2:
	.loc 1 114 39 is_stmt 1 discriminator 3 view .LVU20
	.loc 1 114 34 discriminator 3 view .LVU21
	adiw r24,1
.LVL5:
.L6:
	.loc 1 114 28 discriminator 1 view .LVU22
	cpi r24,50
	cpc r25,__zero_reg__
	brlt .L7
.LVL6:
.L2:
	.loc 1 114 28 is_stmt 0 discriminator 1 view .LVU23
.LBE2:
	.loc 1 69 5 is_stmt 1 view .LVU24
	.loc 1 71 9 view .LVU25
	.loc 1 71 15 is_stmt 0 view .LVU26
	in r24,0x6
	mov r25,r24
	andi r25,lo8(4)
	.loc 1 71 12 view .LVU27
	sbrc r24,2
	rjmp .L2
.L3:
	.loc 1 74 44 is_stmt 1 discriminator 1 view .LVU28
	.loc 1 74 20 discriminator 1 view .LVU29
	sbis 0x6,2
	rjmp .L3
	.loc 1 77 13 view .LVU30
	.loc 1 77 16 is_stmt 0 view .LVU31
	cpse r18,__zero_reg__
	rjmp .L4
	.loc 1 79 16 is_stmt 1 view .LVU32
	.loc 1 79 24 is_stmt 0 view .LVU33
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 81 16 is_stmt 1 view .LVU34
	.loc 1 81 34 is_stmt 0 view .LVU35
	ldi r30,lo8(96)
	ldi r31,0
	ldi r25,lo8(-127)
	st Z,r25
	.loc 1 83 16 is_stmt 1 view .LVU36
	.loc 1 83 24 is_stmt 0 view .LVU37
	out __CCP__,r24
	.loc 1 85 16 is_stmt 1 view .LVU38
	.loc 1 85 36 is_stmt 0 view .LVU39
	ldi r25,lo8(-128)
	std Z+24,r25
	.loc 1 88 16 is_stmt 1 view .LVU40
	.loc 1 88 24 is_stmt 0 view .LVU41
	out __CCP__,r24
	.loc 1 89 16 is_stmt 1 view .LVU42
	.loc 1 89 37 is_stmt 0 view .LVU43
	ldi r24,lo8(-2)
	std Z+28,r24
	.loc 1 91 17 is_stmt 1 view .LVU44
.LVL7:
	.loc 1 91 22 is_stmt 0 view .LVU45
	ldi r18,lo8(1)
.LVL8:
.L5:
	.loc 1 114 13 is_stmt 1 view .LVU46
.LBB3:
	.loc 1 114 18 view .LVU47
	.loc 1 114 22 is_stmt 0 view .LVU48
	ldi r24,0
	ldi r25,0
	.loc 1 114 13 view .LVU49
	rjmp .L6
.LBE3:
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/avr/include/stdint.h"
	.file 3 "/usr/avr/include/avr/ioavr128db48.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x409
	.word	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0xc
	.long	.LASF70
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x9
	.long	.LASF9
	.byte	0x2
	.byte	0x7e
	.byte	0x16
	.long	0x3e
	.uleb128 0x3
	.long	0x2d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF10
	.byte	0x3
	.byte	0x39
	.byte	0x1a
	.long	0x39
	.uleb128 0x5
	.long	0x6f
	.long	0x8b
	.uleb128 0x6
	.long	0x4c
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	0x7b
	.uleb128 0x5
	.long	0x6f
	.long	0xa0
	.uleb128 0x6
	.long	0x4c
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	0x90
	.uleb128 0x5
	.long	0x6f
	.long	0xb5
	.uleb128 0x6
	.long	0x4c
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xa5
	.uleb128 0xa
	.long	.LASF46
	.byte	0x40
	.word	0x282
	.long	0x19f
	.uleb128 0x1
	.long	.LASF11
	.word	0x284
	.long	0x6f
	.byte	0
	.uleb128 0x1
	.long	.LASF12
	.word	0x285
	.long	0x6f
	.byte	0x1
	.uleb128 0x1
	.long	.LASF13
	.word	0x286
	.long	0x6f
	.byte	0x2
	.uleb128 0x1
	.long	.LASF14
	.word	0x287
	.long	0x6f
	.byte	0x3
	.uleb128 0x1
	.long	.LASF15
	.word	0x288
	.long	0x6f
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.word	0x289
	.long	0x6f
	.byte	0x5
	.uleb128 0x1
	.long	.LASF17
	.word	0x28a
	.long	0x8b
	.byte	0x6
	.uleb128 0x1
	.long	.LASF18
	.word	0x28b
	.long	0x6f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.word	0x28c
	.long	0x6f
	.byte	0x9
	.uleb128 0x1
	.long	.LASF20
	.word	0x28d
	.long	0xa0
	.byte	0xa
	.uleb128 0x1
	.long	.LASF21
	.word	0x28e
	.long	0x6f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF22
	.word	0x28f
	.long	0x1af
	.byte	0x11
	.uleb128 0x1
	.long	.LASF23
	.word	0x290
	.long	0x6f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF24
	.word	0x291
	.long	0x1c4
	.byte	0x19
	.uleb128 0x1
	.long	.LASF25
	.word	0x292
	.long	0x6f
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF26
	.word	0x293
	.long	0x1c4
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF27
	.word	0x294
	.long	0x6f
	.byte	0x20
	.uleb128 0x1
	.long	.LASF28
	.word	0x295
	.long	0x1d9
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.long	0x6f
	.long	0x1af
	.uleb128 0x6
	.long	0x4c
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	0x19f
	.uleb128 0x5
	.long	0x6f
	.long	0x1c4
	.uleb128 0x6
	.long	0x4c
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	0x1b4
	.uleb128 0x5
	.long	0x6f
	.long	0x1d9
	.uleb128 0x6
	.long	0x4c
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.long	0x1c9
	.uleb128 0xb
	.long	.LASF29
	.word	0x296
	.long	0xba
	.uleb128 0x7
	.long	.LASF34
	.long	0x4c
	.word	0x2a1
	.long	0x211
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
	.byte	0
	.uleb128 0x7
	.long	.LASF35
	.long	0x4c
	.word	0x2aa
	.long	0x239
	.uleb128 0x2
	.long	.LASF36
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x10
	.uleb128 0x2
	.long	.LASF38
	.byte	0x20
	.uleb128 0x2
	.long	.LASF39
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF40
	.long	0x4c
	.word	0x2f1
	.long	0x255
	.uleb128 0x2
	.long	.LASF41
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.long	0x4c
	.word	0x307
	.long	0x271
	.uleb128 0x2
	.long	.LASF44
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF45
	.byte	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x20
	.word	0x836
	.long	0x3a9
	.uleb128 0x8
	.string	"DIR"
	.word	0x838
	.long	0x6f
	.byte	0
	.uleb128 0x1
	.long	.LASF48
	.word	0x839
	.long	0x6f
	.byte	0x1
	.uleb128 0x1
	.long	.LASF49
	.word	0x83a
	.long	0x6f
	.byte	0x2
	.uleb128 0x1
	.long	.LASF50
	.word	0x83b
	.long	0x6f
	.byte	0x3
	.uleb128 0x8
	.string	"OUT"
	.word	0x83c
	.long	0x6f
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.word	0x83d
	.long	0x6f
	.byte	0x5
	.uleb128 0x1
	.long	.LASF52
	.word	0x83e
	.long	0x6f
	.byte	0x6
	.uleb128 0x1
	.long	.LASF53
	.word	0x83f
	.long	0x6f
	.byte	0x7
	.uleb128 0x8
	.string	"IN"
	.word	0x840
	.long	0x6f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF54
	.word	0x841
	.long	0x6f
	.byte	0x9
	.uleb128 0x1
	.long	.LASF55
	.word	0x842
	.long	0x6f
	.byte	0xa
	.uleb128 0x1
	.long	.LASF56
	.word	0x843
	.long	0x6f
	.byte	0xb
	.uleb128 0x1
	.long	.LASF57
	.word	0x844
	.long	0x6f
	.byte	0xc
	.uleb128 0x1
	.long	.LASF58
	.word	0x845
	.long	0x6f
	.byte	0xd
	.uleb128 0x1
	.long	.LASF59
	.word	0x846
	.long	0x6f
	.byte	0xe
	.uleb128 0x1
	.long	.LASF17
	.word	0x847
	.long	0xb5
	.byte	0xf
	.uleb128 0x1
	.long	.LASF60
	.word	0x848
	.long	0x6f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF61
	.word	0x849
	.long	0x6f
	.byte	0x11
	.uleb128 0x1
	.long	.LASF62
	.word	0x84a
	.long	0x6f
	.byte	0x12
	.uleb128 0x1
	.long	.LASF63
	.word	0x84b
	.long	0x6f
	.byte	0x13
	.uleb128 0x1
	.long	.LASF64
	.word	0x84c
	.long	0x6f
	.byte	0x14
	.uleb128 0x1
	.long	.LASF65
	.word	0x84d
	.long	0x6f
	.byte	0x15
	.uleb128 0x1
	.long	.LASF66
	.word	0x84e
	.long	0x6f
	.byte	0x16
	.uleb128 0x1
	.long	.LASF67
	.word	0x84f
	.long	0x6f
	.byte	0x17
	.uleb128 0x1
	.long	.LASF20
	.word	0x850
	.long	0x3b9
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x6f
	.long	0x3b9
	.uleb128 0x6
	.long	0x4c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	0x3a9
	.uleb128 0xb
	.long	.LASF68
	.word	0x851
	.long	0x271
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.long	0x45
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.long	0x2d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x10
	.long	.LLRL1
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x72
	.byte	0x16
	.long	0x45
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
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
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU2
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU13
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS2:
	.uleb128 .LVU20
	.uleb128 .LVU23
	.uleb128 .LVU48
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB2-.Ltext0
	.uleb128 .LBE2-.Ltext0
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"CLKCTRL_CSUT_16K_gc"
.LASF15:
	.string	"MCLKINTFLAGS"
.LASF66:
	.string	"PIN6CTRL"
.LASF45:
	.string	"CCP_IOREG_gc"
.LASF68:
	.string	"PORT_t"
.LASF38:
	.string	"CLKCTRL_CSUT_32K_gc"
.LASF71:
	.string	"main"
.LASF40:
	.string	"CLKCTRL_SELHF_enum"
.LASF69:
	.string	"mode"
.LASF58:
	.string	"PINCTRLSET"
.LASF30:
	.string	"CLKCTRL_CLKSEL_OSCHF_gc"
.LASF23:
	.string	"OSC32KCTRLA"
.LASF20:
	.string	"reserved_2"
.LASF22:
	.string	"reserved_3"
.LASF9:
	.string	"uint8_t"
.LASF50:
	.string	"DIRTGL"
.LASF28:
	.string	"reserved_6"
.LASF49:
	.string	"DIRCLR"
.LASF60:
	.string	"PIN0CTRL"
.LASF61:
	.string	"PIN1CTRL"
.LASF31:
	.string	"CLKCTRL_CLKSEL_OSC32K_gc"
.LASF64:
	.string	"PIN4CTRL"
.LASF7:
	.string	"long long int"
.LASF46:
	.string	"CLKCTRL_struct"
.LASF5:
	.string	"long int"
.LASF67:
	.string	"PIN7CTRL"
.LASF33:
	.string	"CLKCTRL_CLKSEL_EXTCLK_gc"
.LASF18:
	.string	"OSCHFCTRLA"
.LASF53:
	.string	"OUTTGL"
.LASF19:
	.string	"OSCHFTUNE"
.LASF43:
	.string	"CCP_enum"
.LASF70:
	.string	"GNU C17 14.2.0 -mn-flash=2 -mno-skip-bug -mdouble=32 -mlong-double=64 -mmcu=avrxmega4 -mflmap -g -Og"
.LASF41:
	.string	"CLKCTRL_SELHF_XTAL_gc"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"MCLKINTCTRL"
.LASF2:
	.string	"signed char"
.LASF56:
	.string	"PINCONFIG"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"reserved_1"
.LASF24:
	.string	"reserved_4"
.LASF26:
	.string	"reserved_5"
.LASF29:
	.string	"CLKCTRL_t"
.LASF62:
	.string	"PIN2CTRL"
.LASF54:
	.string	"INTFLAGS"
.LASF65:
	.string	"PIN5CTRL"
.LASF21:
	.string	"PLLCTRLA"
.LASF51:
	.string	"OUTSET"
.LASF52:
	.string	"OUTCLR"
.LASF6:
	.string	"long unsigned int"
.LASF36:
	.string	"CLKCTRL_CSUT_1K_gc"
.LASF55:
	.string	"PORTCTRL"
.LASF39:
	.string	"CLKCTRL_CSUT_64K_gc"
.LASF35:
	.string	"CLKCTRL_CSUT_enum"
.LASF47:
	.string	"PORT_struct"
.LASF27:
	.string	"XOSCHFCTRLA"
.LASF32:
	.string	"CLKCTRL_CLKSEL_XOSC32K_gc"
.LASF48:
	.string	"DIRSET"
.LASF34:
	.string	"CLKCTRL_CLKSEL_enum"
.LASF25:
	.string	"XOSC32KCTRLA"
.LASF10:
	.string	"register8_t"
.LASF59:
	.string	"PINCTRLCLR"
.LASF57:
	.string	"PINCTRLUPD"
.LASF16:
	.string	"MCLKSTATUS"
.LASF44:
	.string	"CCP_SPM_gc"
.LASF11:
	.string	"MCLKCTRLA"
.LASF12:
	.string	"MCLKCTRLB"
.LASF13:
	.string	"MCLKCTRLC"
.LASF63:
	.string	"PIN3CTRL"
.LASF42:
	.string	"CLKCTRL_SELHF_EXTCLOCK_gc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/penguin/Code/projects/ese381/review/lab3"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 14.2.0"
