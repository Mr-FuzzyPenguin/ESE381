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
	.file 0 "/home/penguin/Code/projects/ese381/review/lab5" "main.c"
.global	init_spi0_SerLCD
	.type	init_spi0_SerLCD, @function
init_spi0_SerLCD:
.LFB5:
	.file 1 "main.c"
	.loc 1 27 30 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 28 1 view .LVU1
	.loc 1 28 6 is_stmt 0 view .LVU2
	ldi r30,0
	ldi r31,lo8(4)
	ld r24,Z
	.loc 1 28 11 view .LVU3
	ori r24,lo8(16)
	st Z,r24
	.loc 1 29 1 is_stmt 1 view .LVU4
	.loc 1 29 6 is_stmt 0 view .LVU5
	ld r24,Z
	.loc 1 29 11 view .LVU6
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 30 1 is_stmt 1 view .LVU7
	.loc 1 30 6 is_stmt 0 view .LVU8
	ld r24,Z
	.loc 1 30 11 view .LVU9
	ori r24,lo8(64)
	st Z,r24
	.loc 1 31 1 is_stmt 1 view .LVU10
	.loc 1 31 6 is_stmt 0 view .LVU11
	ld r24,Z
	.loc 1 31 11 view .LVU12
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 34 1 is_stmt 1 view .LVU13
	.loc 1 34 6 is_stmt 0 view .LVU14
	ldd r24,Z+4
	.loc 1 34 11 view .LVU15
	ori r24,lo8(-128)
	std Z+4,r24
	.loc 1 36 1 is_stmt 1 view .LVU16
	.loc 1 36 12 is_stmt 0 view .LVU17
	ldi r30,lo8(64)
	ldi r31,lo8(9)
	ldi r24,lo8(4)
	std Z+1,r24
	.loc 1 37 1 is_stmt 1 view .LVU18
	.loc 1 37 12 is_stmt 0 view .LVU19
	ldi r24,lo8(37)
	st Z,r24
/* epilogue start */
	.loc 1 39 1 view .LVU20
	ret
	.cfi_endproc
.LFE5:
	.size	init_spi0_SerLCD, .-init_spi0_SerLCD
.global	write_spi0_SerLCD
	.type	write_spi0_SerLCD, @function
write_spi0_SerLCD:
.LVL0:
.LFB6:
	.loc 1 42 44 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 43 1 view .LVU22
	.loc 1 43 6 is_stmt 0 view .LVU23
	ldi r30,0
	ldi r31,lo8(4)
	ldd r25,Z+4
	.loc 1 43 11 view .LVU24
	andi r25,lo8(127)
	std Z+4,r25
	.loc 1 44 1 is_stmt 1 view .LVU25
	.loc 1 44 11 is_stmt 0 view .LVU26
	sts 2372,r24
	.loc 1 45 2 is_stmt 1 view .LVU27
.LVL1:
.L3:
	.loc 1 45 9 discriminator 1 view .LVU28
	.loc 1 45 14 is_stmt 0 discriminator 1 view .LVU29
	lds r24,2371
	.loc 1 45 9 discriminator 1 view .LVU30
	cp r24, __zero_reg__
	brge .L3
	.loc 1 46 1 is_stmt 1 view .LVU31
	.loc 1 46 6 is_stmt 0 view .LVU32
	ldi r30,0
	ldi r31,lo8(4)
	ldd r24,Z+4
	.loc 1 46 11 view .LVU33
	ori r24,lo8(-128)
	std Z+4,r24
.LVL2:
/* epilogue start */
	.loc 1 47 1 view .LVU34
	ret
	.cfi_endproc
.LFE6:
	.size	write_spi0_SerLCD, .-write_spi0_SerLCD
.global	update_SerLCD
	.type	update_SerLCD, @function
update_SerLCD:
.LFB7:
	.loc 1 50 25 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 52 2 view .LVU36
	ldi r24,lo8(124)
	call write_spi0_SerLCD
.LVL3:
	.loc 1 53 2 view .LVU37
	ldi r24,lo8(45)
	call write_spi0_SerLCD
.LVL4:
	.loc 1 56 2 view .LVU38
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL5:
	.loc 1 57 2 view .LVU39
	ldi r24,lo8(-128)
	call write_spi0_SerLCD
.LVL6:
	.loc 1 58 2 view .LVU40
.LBB8:
	.loc 1 58 7 view .LVU41
	.loc 1 58 15 is_stmt 0 view .LVU42
	ldi r28,0
	.loc 1 58 2 view .LVU43
	rjmp .L5
.LVL7:
.L6:
	.loc 1 59 3 is_stmt 1 view .LVU44
	.loc 1 59 32 is_stmt 0 view .LVU45
	subi r28,lo8(-(1))
.LVL8:
	.loc 1 59 3 view .LVU46
	call write_spi0_SerLCD
.LVL9:
.L5:
	.loc 1 58 22 is_stmt 1 discriminator 1 view .LVU47
	.loc 1 58 31 is_stmt 0 discriminator 1 view .LVU48
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff1))
	sbci r31,hi8(-(dsp_buff1))
	ld r24,Z
	.loc 1 58 22 discriminator 1 view .LVU49
	cpse r24,__zero_reg__
	rjmp .L6
.LBE8:
	.loc 1 62 2 is_stmt 1 view .LVU50
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL10:
	.loc 1 63 2 view .LVU51
	ldi r24,lo8(-64)
	call write_spi0_SerLCD
.LVL11:
	.loc 1 64 2 view .LVU52
.LBB9:
	.loc 1 64 7 view .LVU53
	.loc 1 64 15 is_stmt 0 view .LVU54
	ldi r28,0
.LVL12:
	.loc 1 64 2 view .LVU55
	rjmp .L7
.LVL13:
.L8:
	.loc 1 65 3 is_stmt 1 view .LVU56
	.loc 1 65 32 is_stmt 0 view .LVU57
	subi r28,lo8(-(1))
.LVL14:
	.loc 1 65 3 view .LVU58
	call write_spi0_SerLCD
.LVL15:
.L7:
	.loc 1 64 22 is_stmt 1 discriminator 1 view .LVU59
	.loc 1 64 31 is_stmt 0 discriminator 1 view .LVU60
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff2))
	sbci r31,hi8(-(dsp_buff2))
	ld r24,Z
	.loc 1 64 22 discriminator 1 view .LVU61
	cpse r24,__zero_reg__
	rjmp .L8
.LBE9:
	.loc 1 68 2 is_stmt 1 view .LVU62
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL16:
	.loc 1 69 2 view .LVU63
	ldi r24,lo8(-108)
	call write_spi0_SerLCD
.LVL17:
	.loc 1 70 2 view .LVU64
.LBB10:
	.loc 1 70 7 view .LVU65
	.loc 1 70 15 is_stmt 0 view .LVU66
	ldi r28,0
.LVL18:
	.loc 1 70 2 view .LVU67
	rjmp .L9
.LVL19:
.L10:
	.loc 1 71 3 is_stmt 1 view .LVU68
	.loc 1 71 32 is_stmt 0 view .LVU69
	subi r28,lo8(-(1))
.LVL20:
	.loc 1 71 3 view .LVU70
	call write_spi0_SerLCD
.LVL21:
.L9:
	.loc 1 70 22 is_stmt 1 discriminator 1 view .LVU71
	.loc 1 70 31 is_stmt 0 discriminator 1 view .LVU72
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff3))
	sbci r31,hi8(-(dsp_buff3))
	ld r24,Z
	.loc 1 70 22 discriminator 1 view .LVU73
	cpse r24,__zero_reg__
	rjmp .L10
.LBE10:
	.loc 1 74 2 is_stmt 1 view .LVU74
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL22:
	.loc 1 75 2 view .LVU75
	ldi r24,lo8(-44)
	call write_spi0_SerLCD
.LVL23:
	.loc 1 76 2 view .LVU76
.LBB11:
	.loc 1 76 7 view .LVU77
	.loc 1 76 15 is_stmt 0 view .LVU78
	ldi r28,0
.LVL24:
	.loc 1 76 2 view .LVU79
	rjmp .L11
.LVL25:
.L12:
	.loc 1 77 3 is_stmt 1 view .LVU80
	.loc 1 77 32 is_stmt 0 view .LVU81
	subi r28,lo8(-(1))
.LVL26:
	.loc 1 77 3 view .LVU82
	call write_spi0_SerLCD
.LVL27:
.L11:
	.loc 1 76 22 is_stmt 1 discriminator 1 view .LVU83
	.loc 1 76 31 is_stmt 0 discriminator 1 view .LVU84
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff4))
	sbci r31,hi8(-(dsp_buff4))
	ld r24,Z
	.loc 1 76 22 discriminator 1 view .LVU85
	cpse r24,__zero_reg__
	rjmp .L12
.LBE11:
	.loc 1 81 2 is_stmt 1 view .LVU86
.LVL28:
.LBB12:
.LBI12:
	.file 2 "/usr/avr/include/util/delay.h"
	.loc 2 154 1 view .LVU87
.LBB13:
	.loc 2 156 2 view .LVU88
	.loc 2 159 2 view .LVU89
	.loc 2 160 2 view .LVU90
	.loc 2 161 2 view .LVU91
	.loc 2 171 3 view .LVU92
	.loc 2 174 2 view .LVU93
	ldi r18,lo8(399999)
	ldi r24,hi8(399999)
	ldi r25,hlo8(399999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL29:
/* epilogue start */
	.loc 2 174 2 is_stmt 0 view .LVU94
.LBE13:
.LBE12:
	.loc 1 82 1 view .LVU95
	pop r28
.LVL30:
	.loc 1 82 1 view .LVU96
	ret
	.cfi_endproc
.LFE7:
	.size	update_SerLCD, .-update_SerLCD
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"                    "
	.text
.global	clear_display_buffs
	.type	clear_display_buffs, @function
clear_display_buffs:
.LFB8:
	.loc 1 84 31 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 2 view .LVU98
	ldi r24,lo8(21)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	ldi r26,lo8(dsp_buff1)
	ldi r27,hi8(dsp_buff1)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 86 2 view .LVU99
	ldi r24,lo8(21)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	ldi r26,lo8(dsp_buff2)
	ldi r27,hi8(dsp_buff2)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 87 2 view .LVU100
	ldi r24,lo8(21)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	ldi r26,lo8(dsp_buff3)
	ldi r27,hi8(dsp_buff3)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 88 2 view .LVU101
	ldi r24,lo8(21)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	ldi r26,lo8(dsp_buff4)
	ldi r27,hi8(dsp_buff4)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
/* epilogue start */
	.loc 1 89 1 is_stmt 0 view .LVU102
	ret
	.cfi_endproc
.LFE8:
	.size	clear_display_buffs, .-clear_display_buffs
.global	init_spi0_LM74
	.type	init_spi0_LM74, @function
init_spi0_LM74:
.LFB9:
	.loc 1 92 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 93 1 view .LVU104
	.loc 1 93 6 is_stmt 0 view .LVU105
	ldi r30,0
	ldi r31,lo8(4)
	ld r24,Z
	.loc 1 93 11 view .LVU106
	ori r24,lo8(16)
	st Z,r24
	.loc 1 94 1 is_stmt 1 view .LVU107
	.loc 1 94 6 is_stmt 0 view .LVU108
	ld r24,Z
	.loc 1 94 11 view .LVU109
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 95 1 is_stmt 1 view .LVU110
	.loc 1 95 6 is_stmt 0 view .LVU111
	ld r24,Z
	.loc 1 95 11 view .LVU112
	ori r24,lo8(64)
	st Z,r24
	.loc 1 97 1 is_stmt 1 view .LVU113
	.loc 1 97 2 is_stmt 0 view .LVU114
	in r24,0x10
	.loc 1 97 12 view .LVU115
	ori r24,lo8(1)
	out 0x10,r24
	.loc 1 99 1 is_stmt 1 view .LVU116
	.loc 1 99 2 is_stmt 0 view .LVU117
	in r24,0x11
	.loc 1 99 12 view .LVU118
	ori r24,lo8(1)
	out 0x11,r24
	.loc 1 101 1 is_stmt 1 view .LVU119
	.loc 1 101 12 is_stmt 0 view .LVU120
	ldi r30,lo8(64)
	ldi r31,lo8(9)
	ldi r24,lo8(4)
	std Z+1,r24
	.loc 1 102 1 is_stmt 1 view .LVU121
	.loc 1 102 12 is_stmt 0 view .LVU122
	ldi r24,lo8(35)
	st Z,r24
/* epilogue start */
	.loc 1 104 1 view .LVU123
	ret
	.cfi_endproc
.LFE9:
	.size	init_spi0_LM74, .-init_spi0_LM74
.global	read_spi0_LM74
	.type	read_spi0_LM74, @function
read_spi0_LM74:
.LFB10:
	.loc 1 106 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 108 1 view .LVU125
	.loc 1 108 12 is_stmt 0 view .LVU126
	in r24,0x11
	andi r24,lo8(-2)
	out 0x11,r24
	.loc 1 111 2 is_stmt 1 view .LVU127
.LVL31:
	.loc 1 115 1 view .LVU128
	.loc 1 115 11 is_stmt 0 view .LVU129
	ldi r24,lo8(-1)
	sts 2372,r24
	.loc 1 118 2 is_stmt 1 view .LVU130
.L16:
	.loc 1 118 39 discriminator 1 view .LVU131
	.loc 1 118 9 discriminator 1 view .LVU132
	.loc 1 118 14 is_stmt 0 discriminator 1 view .LVU133
	lds r24,2371
	.loc 1 118 9 discriminator 1 view .LVU134
	cp r24, __zero_reg__
	brge .L16
	.loc 1 124 2 is_stmt 1 view .LVU135
	.loc 1 124 14 is_stmt 0 view .LVU136
	ldi r30,lo8(64)
	ldi r31,lo8(9)
	ldd r18,Z+4
	.loc 1 124 9 view .LVU137
	ldi r19,0
.LVL32:
	.loc 1 125 2 is_stmt 1 view .LVU138
	.loc 1 125 9 is_stmt 0 view .LVU139
	mov r19,r18
	clr r18
.LVL33:
	.loc 1 128 1 is_stmt 1 view .LVU140
	.loc 1 128 11 is_stmt 0 view .LVU141
	ldi r24,lo8(-1)
	std Z+4,r24
	.loc 1 129 2 is_stmt 1 view .LVU142
.L17:
	.loc 1 129 39 discriminator 1 view .LVU143
	.loc 1 129 9 discriminator 1 view .LVU144
	.loc 1 129 14 is_stmt 0 discriminator 1 view .LVU145
	lds r25,2371
	.loc 1 129 9 discriminator 1 view .LVU146
	cp r25, __zero_reg__
	brge .L17
	.loc 1 131 2 is_stmt 1 view .LVU147
	.loc 1 131 15 is_stmt 0 view .LVU148
	lds r25,2372
.LVL34:
	.loc 1 134 1 is_stmt 1 view .LVU149
	.loc 1 134 2 is_stmt 0 view .LVU150
	in r24,0x11
	.loc 1 134 12 view .LVU151
	ori r24,lo8(1)
	out 0x11,r24
	.loc 1 136 2 is_stmt 1 view .LVU152
	.loc 1 137 1 is_stmt 0 view .LVU153
	movw r20,r18
	or r20,r25
	movw r24,r20
/* epilogue start */
	ret
	.cfi_endproc
.LFE10:
	.size	read_spi0_LM74, .-read_spi0_LM74
	.section	.rodata.str1.1
.LC1:
	.string	"Human Readable LM74"
.LC2:
	.string	"%g C"
.LC3:
	.string	"%g F"
	.text
.global	main
	.type	main, @function
main:
.LFB11:
	.loc 1 140 1 is_stmt 1 view -0
	.cfi_startproc
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,43
	.cfi_def_cfa_offset 45
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 43 */
/* stack size = 43 */
.L__stack_usage = 43
	.loc 1 142 2 view .LVU155
	call init_spi0_LM74
.LVL35:
	.loc 1 143 2 view .LVU156
	call init_spi0_SerLCD
.LVL36:
	.loc 1 146 2 view .LVU157
	call clear_display_buffs
.LVL37:
	.loc 1 149 2 view .LVU158
	ldi r24,lo8(124)
	call write_spi0_SerLCD
.LVL38:
	.loc 1 150 2 view .LVU159
	ldi r24,lo8(45)
	call write_spi0_SerLCD
.LVL39:
	.loc 1 153 2 view .LVU160
	call update_SerLCD
.LVL40:
	rjmp .L23
.LVL41:
.L20:
.LBB14:
.LBB15:
	.loc 1 168 4 view .LVU161
	.loc 1 168 41 is_stmt 0 view .LVU162
	ldi r24,lo8(1)
	ldi r25,0
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	.loc 1 168 36 view .LVU163
	and r24,r2
	and r25,r3
	.loc 1 168 48 view .LVU164
	mov r0,r18
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	.loc 1 168 16 view .LVU165
	ldi r30,lo8(15)
	ldi r31,0
	sub r30,r18
	sbc r31,r19
	.loc 1 168 23 view .LVU166
	subi r24,lo8(-(48))
	.loc 1 168 19 view .LVU167
	subi r30,lo8(-(dsp_buff4))
	sbci r31,hi8(-(dsp_buff4))
	st Z,r24
	.loc 1 167 28 is_stmt 1 discriminator 3 view .LVU168
	subi r18,-1
	sbci r19,-1
.LVL42:
.L19:
	.loc 1 167 21 discriminator 1 view .LVU169
	cpi r18,16
	cpc r19,__zero_reg__
	brlt .L20
.LBE15:
	.loc 1 172 3 view .LVU170
	.loc 1 172 13 is_stmt 0 view .LVU171
	movw r16,r2
	lsr r17
	ror r16
	lsr r17
	ror r16
	lsr r17
	ror r16
.LVL43:
	.loc 1 175 3 is_stmt 1 view .LVU172
.LBB16:
	.loc 1 175 8 view .LVU173
	.loc 1 175 16 is_stmt 0 view .LVU174
	std Y+42,__zero_reg__
.LBE16:
	.loc 1 162 9 view .LVU175
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r24,lo8(-128)
	ldi r25,lo8(61)
	.loc 1 158 9 view .LVU176
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	std Y+17,__zero_reg__
	std Y+18,__zero_reg__
	std Y+40,r2
	std Y+41,r3
	mov r3,__zero_reg__
	std Y+43,r24
	std Y+39,r25
.LBB17:
	.loc 1 175 3 view .LVU177
	rjmp .L21
.LVL44:
.L22:
	.loc 1 178 4 is_stmt 1 view .LVU178
	.loc 1 178 46 is_stmt 0 view .LVU179
	mov r22,r16
	andi r22,1<<0
	clr r23
	.loc 1 178 33 view .LVU180
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL45:
	mov r4,r14
	mov r5,r15
	ldd r6,Y+43
	ldd r7,Y+39
	movw r20,r6
	movw r18,r4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __mulsf3
.LVL46:
	.loc 1 178 24 view .LVU181
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	std Y+9,r12
	std Y+10,r13
	ldd r24,Y+17
	std Y+11,r24
	ldd r25,Y+18
	std Y+12,r25
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	call __addsf3
.LVL47:
	mov r12,r22
.LVL48:
	.loc 1 178 24 view .LVU182
	mov r13,r23
.LVL49:
	.loc 1 178 24 view .LVU183
	std Y+17,r24
.LVL50:
	.loc 1 178 24 view .LVU184
	std Y+18,r25
.LVL51:
	.loc 1 179 4 is_stmt 1 view .LVU185
	.loc 1 179 13 is_stmt 0 view .LVU186
	lsr r17
	ror r16
.LVL52:
	.loc 1 180 4 is_stmt 1 view .LVU187
	.loc 1 180 10 is_stmt 0 view .LVU188
	mov r8,r14
	mov r9,r15
	mov r10,r6
	mov r11,r7
	movw r20,r10
	movw r18,r8
	std Y+13,r14
	std Y+14,r15
	std Y+15,r6
	std Y+16,r7
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call __addsf3
.LVL53:
	.loc 1 180 10 view .LVU189
	mov r14,r22
.LVL54:
	.loc 1 180 10 view .LVU190
	mov r15,r23
.LVL55:
	.loc 1 180 10 view .LVU191
	std Y+43,r24
.LVL56:
	.loc 1 180 10 view .LVU192
	std Y+39,r25
.LVL57:
	.loc 1 175 28 is_stmt 1 discriminator 3 view .LVU193
	inc r3
.LVL58:
.L21:
	.loc 1 175 22 discriminator 1 view .LVU194
	ldi r24,lo8(12)
	cp r3,r24
	brsh .+2
	rjmp .L22
	.loc 1 175 22 is_stmt 0 discriminator 1 view .LVU195
.LBE17:
	.loc 1 184 3 is_stmt 1 view .LVU196
	.loc 1 184 30 is_stmt 0 view .LVU197
	mov r23,r16
	andi r23,1<<0
	clr r22
	.loc 1 184 23 view .LVU198
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL59:
	std Y+19,r22
	std Y+20,r23
	std Y+21,r24
	std Y+22,r25
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	std Y+23,r12
	std Y+24,r13
	ldd r25,Y+17
	std Y+25,r25
	ldd r24,Y+18
	std Y+26,r24
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	call __subsf3
.LVL60:
	mov r16,r22
.LVL61:
	.loc 1 184 23 view .LVU199
	mov r17,r23
	std Y+18,r24
.LVL62:
	.loc 1 184 23 view .LVU200
	std Y+17,r25
.LVL63:
	.loc 1 186 3 is_stmt 1 view .LVU201
	ldi r24,lo8(20)
.LVL64:
	.loc 1 186 3 is_stmt 0 view .LVU202
	ldi r30,lo8(.LC1)
	ldi r31,hi8(.LC1)
	ldi r26,lo8(dsp_buff1)
	ldi r27,hi8(dsp_buff1)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 187 3 is_stmt 1 view .LVU203
	push r25
.LVL65:
	.loc 1 187 3 is_stmt 0 view .LVU204
	ldd r25,Y+18
	push r25
	push r17
	push r16
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	ldi r24,lo8(dsp_buff2)
	ldi r25,hi8(dsp_buff2)
	push r25
	push r24
	call sprintf
.LVL66:
	.loc 1 188 3 is_stmt 1 view .LVU205
	.loc 1 188 55 is_stmt 0 view .LVU206
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(16)
	ldi r21,lo8(65)
	ldd r24,Y+18
	ldd r25,Y+17
	std Y+27,r16
	std Y+28,r17
	std Y+29,r24
	std Y+30,r25
	ldd r22,Y+27
	ldd r23,Y+28
	ldd r24,Y+29
	ldd r25,Y+30
	call __mulsf3
.LVL67:
	.loc 1 188 59 view .LVU207
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-96)
	ldi r21,lo8(64)
	std Y+31,r22
	std Y+32,r23
	std Y+33,r24
	std Y+34,r25
	ldd r22,Y+31
	ldd r23,Y+32
	ldd r24,Y+33
	ldd r25,Y+34
	call __divsf3
.LVL68:
	.loc 1 188 33 view .LVU208
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(66)
	std Y+35,r22
	std Y+36,r23
	std Y+37,r24
	std Y+38,r25
	ldd r22,Y+35
	ldd r23,Y+36
	ldd r24,Y+37
	ldd r25,Y+38
	call __addsf3
.LVL69:
	.loc 1 188 3 view .LVU209
	push r25
	push r24
	push r23
	push r22
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	ldi r24,lo8(dsp_buff3)
	ldi r25,hi8(dsp_buff3)
	push r25
	push r24
	call sprintf
.LVL70:
	.loc 1 189 3 is_stmt 1 view .LVU210
	call update_SerLCD
.LVL71:
.LBE14:
	.loc 1 155 7 view .LVU211
	.loc 1 156 2 is_stmt 0 view .LVU212
	out __SP_L__,r28
	out __SP_H__,r29
.LVL72:
.L23:
	.loc 1 155 2 is_stmt 1 view .LVU213
.LBB19:
	.loc 1 158 3 view .LVU214
	.loc 1 159 3 view .LVU215
	.loc 1 159 24 is_stmt 0 view .LVU216
	call read_spi0_LM74
.LVL73:
	mov r2,r24
	mov r3,r25
.LVL74:
	.loc 1 162 3 is_stmt 1 view .LVU217
	.loc 1 167 3 view .LVU218
.LBB18:
	.loc 1 167 8 view .LVU219
	.loc 1 167 12 is_stmt 0 view .LVU220
	ldi r18,0
	ldi r19,0
	.loc 1 167 3 view .LVU221
	rjmp .L19
.LBE18:
.LBE19:
	.cfi_endproc
.LFE11:
	.size	main, .-main
.global	dsp_buff4
	.section .bss
	.type	dsp_buff4, @object
	.size	dsp_buff4, 21
dsp_buff4:
	.zero	21
.global	dsp_buff3
	.type	dsp_buff3, @object
	.size	dsp_buff3, 21
dsp_buff3:
	.zero	21
.global	dsp_buff2
	.type	dsp_buff2, @object
	.size	dsp_buff2, 21
dsp_buff2:
	.zero	21
.global	dsp_buff1
	.type	dsp_buff1, @object
	.size	dsp_buff1, 21
dsp_buff1:
	.zero	21
	.text
.Letext0:
	.file 3 "/usr/avr/include/stdint.h"
	.file 4 "/usr/avr/include/avr/ioavr128db48.h"
	.file 5 "/usr/avr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x764
	.word	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x9
	.long	.LASF5
	.byte	0x3
	.byte	0x7e
	.byte	0x16
	.long	0x2d
	.uleb128 0xa
	.long	0x3b
	.uleb128 0x1d
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	.LASF6
	.byte	0x3
	.byte	0x80
	.byte	0x16
	.long	0x5f
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF9
	.byte	0x3
	.byte	0x82
	.byte	0x16
	.long	0x79
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x39
	.byte	0x1a
	.long	0x47
	.uleb128 0xb
	.long	0x87
	.long	0xa3
	.uleb128 0xc
	.long	0x5f
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x93
	.uleb128 0xb
	.long	0x87
	.long	0xb8
	.uleb128 0xc
	.long	0x5f
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	0xa8
	.uleb128 0x14
	.long	.LASF36
	.byte	0x20
	.word	0x836
	.long	0x1f5
	.uleb128 0x11
	.string	"DIR"
	.word	0x838
	.long	0x87
	.byte	0
	.uleb128 0x1
	.long	.LASF13
	.word	0x839
	.long	0x87
	.byte	0x1
	.uleb128 0x1
	.long	.LASF14
	.word	0x83a
	.long	0x87
	.byte	0x2
	.uleb128 0x1
	.long	.LASF15
	.word	0x83b
	.long	0x87
	.byte	0x3
	.uleb128 0x11
	.string	"OUT"
	.word	0x83c
	.long	0x87
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.word	0x83d
	.long	0x87
	.byte	0x5
	.uleb128 0x1
	.long	.LASF17
	.word	0x83e
	.long	0x87
	.byte	0x6
	.uleb128 0x1
	.long	.LASF18
	.word	0x83f
	.long	0x87
	.byte	0x7
	.uleb128 0x11
	.string	"IN"
	.word	0x840
	.long	0x87
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.word	0x841
	.long	0x87
	.byte	0x9
	.uleb128 0x1
	.long	.LASF20
	.word	0x842
	.long	0x87
	.byte	0xa
	.uleb128 0x1
	.long	.LASF21
	.word	0x843
	.long	0x87
	.byte	0xb
	.uleb128 0x1
	.long	.LASF22
	.word	0x844
	.long	0x87
	.byte	0xc
	.uleb128 0x1
	.long	.LASF23
	.word	0x845
	.long	0x87
	.byte	0xd
	.uleb128 0x1
	.long	.LASF24
	.word	0x846
	.long	0x87
	.byte	0xe
	.uleb128 0x1
	.long	.LASF25
	.word	0x847
	.long	0xa3
	.byte	0xf
	.uleb128 0x1
	.long	.LASF26
	.word	0x848
	.long	0x87
	.byte	0x10
	.uleb128 0x1
	.long	.LASF27
	.word	0x849
	.long	0x87
	.byte	0x11
	.uleb128 0x1
	.long	.LASF28
	.word	0x84a
	.long	0x87
	.byte	0x12
	.uleb128 0x1
	.long	.LASF29
	.word	0x84b
	.long	0x87
	.byte	0x13
	.uleb128 0x1
	.long	.LASF30
	.word	0x84c
	.long	0x87
	.byte	0x14
	.uleb128 0x1
	.long	.LASF31
	.word	0x84d
	.long	0x87
	.byte	0x15
	.uleb128 0x1
	.long	.LASF32
	.word	0x84e
	.long	0x87
	.byte	0x16
	.uleb128 0x1
	.long	.LASF33
	.word	0x84f
	.long	0x87
	.byte	0x17
	.uleb128 0x1
	.long	.LASF34
	.word	0x850
	.long	0x205
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0x87
	.long	0x205
	.uleb128 0xc
	.long	0x5f
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0x1f5
	.uleb128 0x15
	.long	.LASF35
	.word	0x851
	.long	0xbd
	.uleb128 0x14
	.long	.LASF37
	.byte	0x8
	.word	0xa16
	.long	0x26a
	.uleb128 0x1
	.long	.LASF38
	.word	0xa18
	.long	0x87
	.byte	0
	.uleb128 0x1
	.long	.LASF39
	.word	0xa19
	.long	0x87
	.byte	0x1
	.uleb128 0x1
	.long	.LASF40
	.word	0xa1a
	.long	0x87
	.byte	0x2
	.uleb128 0x1
	.long	.LASF19
	.word	0xa1b
	.long	0x87
	.byte	0x3
	.uleb128 0x1
	.long	.LASF41
	.word	0xa1c
	.long	0x87
	.byte	0x4
	.uleb128 0x1
	.long	.LASF25
	.word	0xa1d
	.long	0xb8
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.long	.LASF42
	.word	0xa1e
	.long	0x215
	.uleb128 0x16
	.long	.LASF47
	.long	0x5f
	.word	0xa21
	.long	0x29d
	.uleb128 0x6
	.long	.LASF43
	.byte	0
	.uleb128 0x6
	.long	.LASF44
	.byte	0x1
	.uleb128 0x6
	.long	.LASF45
	.byte	0x2
	.uleb128 0x6
	.long	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF48
	.long	0x5f
	.word	0xa2a
	.long	0x2c5
	.uleb128 0x6
	.long	.LASF49
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x2
	.uleb128 0x6
	.long	.LASF51
	.byte	0x4
	.uleb128 0x6
	.long	.LASF52
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.long	0x2ca
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF53
	.uleb128 0x1e
	.long	0x2ca
	.uleb128 0xb
	.long	0x2ca
	.long	0x2e6
	.uleb128 0xc
	.long	0x5f
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x15
	.long	0x2d6
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff1
	.uleb128 0xd
	.long	.LASF55
	.byte	0x16
	.long	0x2d6
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff2
	.uleb128 0xd
	.long	.LASF56
	.byte	0x17
	.long	0x2d6
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff3
	.uleb128 0xd
	.long	.LASF57
	.byte	0x18
	.long	0x2d6
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff4
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x5
	.word	0x2ac
	.byte	0xc
	.long	0x4c
	.long	0x343
	.uleb128 0xe
	.long	0x2c5
	.uleb128 0xe
	.long	0x343
	.uleb128 0x20
	.byte	0
	.uleb128 0x17
	.long	0x2d1
	.uleb128 0x21
	.long	.LASF80
	.byte	0x2
	.byte	0xf3
	.byte	0xe
	.long	0x35a
	.uleb128 0xe
	.long	0x79
	.byte	0
	.uleb128 0x18
	.long	.LASF62
	.byte	0x8b
	.byte	0x5
	.long	0x4c
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ae
	.uleb128 0x12
	.long	.LLRL9
	.long	0x461
	.uleb128 0xf
	.long	.LASF58
	.byte	0x9e
	.byte	0x9
	.long	0x4ae
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xf
	.long	.LASF59
	.byte	0x9f
	.byte	0xc
	.long	0x53
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa2
	.byte	0x9
	.long	0x4ae
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x12
	.long	.LLRL13
	.long	0x3d0
	.uleb128 0x7
	.string	"i"
	.byte	0xa7
	.byte	0xc
	.long	0x4c
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.uleb128 0x12
	.long	.LLRL15
	.long	0x40f
	.uleb128 0x7
	.string	"i"
	.byte	0xaf
	.byte	0x10
	.long	0x3b
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2
	.long	.LVL45
	.long	0x73a
	.uleb128 0x2
	.long	.LVL46
	.long	0x743
	.uleb128 0x2
	.long	.LVL47
	.long	0x74c
	.uleb128 0x2
	.long	.LVL53
	.long	0x74c
	.byte	0
	.uleb128 0x2
	.long	.LVL59
	.long	0x73a
	.uleb128 0x2
	.long	.LVL60
	.long	0x755
	.uleb128 0x2
	.long	.LVL66
	.long	0x326
	.uleb128 0x2
	.long	.LVL67
	.long	0x743
	.uleb128 0x2
	.long	.LVL68
	.long	0x75e
	.uleb128 0x2
	.long	.LVL69
	.long	0x74c
	.uleb128 0x2
	.long	.LVL70
	.long	0x326
	.uleb128 0x2
	.long	.LVL71
	.long	0x502
	.uleb128 0x2
	.long	.LVL73
	.long	0x4b5
	.byte	0
	.uleb128 0x2
	.long	.LVL35
	.long	0x4e2
	.uleb128 0x2
	.long	.LVL36
	.long	0x6e5
	.uleb128 0x2
	.long	.LVL37
	.long	0x4f2
	.uleb128 0x4
	.long	.LVL38
	.long	0x6bc
	.long	0x490
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL39
	.long	0x6bc
	.long	0x4a4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x2
	.long	.LVL40
	.long	0x502
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x18
	.long	.LASF63
	.byte	0x6a
	.byte	0xa
	.long	0x53
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e2
	.uleb128 0xf
	.long	.LASF64
	.byte	0x6f
	.byte	0xb
	.long	0x53
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.uleb128 0x13
	.long	.LASF65
	.byte	0x5b
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF66
	.byte	0x54
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF67
	.byte	0x32
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bc
	.uleb128 0x10
	.long	.LBB8
	.long	.LBE8-.LBB8
	.long	0x53e
	.uleb128 0x7
	.string	"i"
	.byte	0x3a
	.byte	0xf
	.long	0x3b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2
	.long	.LVL9
	.long	0x6bc
	.byte	0
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9-.LBB9
	.long	0x566
	.uleb128 0x7
	.string	"i"
	.byte	0x40
	.byte	0xf
	.long	0x3b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2
	.long	.LVL15
	.long	0x6bc
	.byte	0
	.uleb128 0x10
	.long	.LBB10
	.long	.LBE10-.LBB10
	.long	0x58e
	.uleb128 0x7
	.string	"i"
	.byte	0x46
	.byte	0xf
	.long	0x3b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2
	.long	.LVL21
	.long	0x6bc
	.byte	0
	.uleb128 0x10
	.long	.LBB11
	.long	.LBE11-.LBB11
	.long	0x5b6
	.uleb128 0x7
	.string	"i"
	.byte	0x4c
	.byte	0xf
	.long	0x3b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2
	.long	.LVL27
	.long	0x6bc
	.byte	0
	.uleb128 0x22
	.long	0x6f5
	.long	.LBI12
	.byte	.LVU87
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.long	0x5f7
	.uleb128 0x23
	.long	0x702
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1a
	.long	0x70e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1a
	.long	0x719
	.long	.LLST7
	.long	.LVUS7
	.byte	0
	.uleb128 0x4
	.long	.LVL3
	.long	0x6bc
	.long	0x60b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL4
	.long	0x6bc
	.long	0x61f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.long	.LVL5
	.long	0x6bc
	.long	0x633
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL6
	.long	0x6bc
	.long	0x647
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4
	.long	.LVL10
	.long	0x6bc
	.long	0x65b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL11
	.long	0x6bc
	.long	0x66f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0x4
	.long	.LVL16
	.long	0x6bc
	.long	0x683
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL17
	.long	0x6bc
	.long	0x697
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0x94
	.byte	0
	.uleb128 0x4
	.long	.LVL22
	.long	0x6bc
	.long	0x6ab
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x24
	.long	.LVL23
	.long	0x6bc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF68
	.byte	0x2a
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e5
	.uleb128 0x25
	.long	.LASF81
	.byte	0x1
	.byte	0x2a
	.byte	0x26
	.long	0x2d
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1b
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF82
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.byte	0x3
	.long	0x733
	.uleb128 0x27
	.long	.LASF83
	.byte	0x2
	.byte	0x9a
	.byte	0x12
	.long	0x733
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x9c
	.byte	0x9
	.long	0x733
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x9f
	.byte	0xb
	.long	0x6d
	.uleb128 0x28
	.long	.LASF80
	.byte	0x2
	.byte	0xa0
	.byte	0xe
	.uleb128 0xe
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF72
	.uleb128 0x8
	.long	.LASF73
	.long	.LASF73
	.uleb128 0x8
	.long	.LASF74
	.long	.LASF74
	.uleb128 0x8
	.long	.LASF75
	.long	.LASF75
	.uleb128 0x8
	.long	.LASF76
	.long	.LASF76
	.uleb128 0x8
	.long	.LASF77
	.long	.LASF77
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
	.sleb128 4
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x28
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
	.uleb128 0x3c
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
.LVUS10:
	.uleb128 .LVU161
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU184
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU204
	.uleb128 .LVU215
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0xe
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0xf
	.byte	0x91
	.sleb128 -38
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x10
	.byte	0x91
	.sleb128 -38
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -37
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL53-1-.Ltext0
	.uleb128 0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL53-1-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0xe
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0xd
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LFE11-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0
.LVUS11:
	.uleb128 .LVU161
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU199
	.uleb128 .LVU217
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE11-.Ltext0
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0
.LVUS12:
	.uleb128 .LVU161
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU204
	.uleb128 .LVU218
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3d800000
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0xe
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0xe
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0xe
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0xc
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0xe
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE11-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3d800000
	.byte	0
.LVUS14:
	.uleb128 .LVU161
	.uleb128 .LVU178
	.uleb128 .LVU220
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU174
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU213
.LLST16:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS8:
	.uleb128 .LVU128
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LFE10-.Ltext0
	.uleb128 0x9
	.byte	0x89
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU55
.LLST1:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS2:
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU67
.LLST2:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS3:
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU79
.LLST3:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS4:
	.uleb128 .LVU78
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE7-.Ltext0
	.uleb128 0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	dsp_buff4
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU87
	.uleb128 .LVU94
.LLST5:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43fa0000
	.byte	0
.LVUS6:
	.uleb128 .LVU92
	.uleb128 .LVU94
.LLST6:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x49f42400
	.byte	0
.LVUS7:
	.uleb128 .LVU93
	.uleb128 .LVU94
.LLST7:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.long	0x1e8480
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x3
	.byte	0xa
	.word	0x944
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x18
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
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
.LLRL9:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.LLRL13:
	.byte	0x4
	.uleb128 .LBB15-.Ltext0
	.uleb128 .LBE15-.Ltext0
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0
.LLRL15:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"OUTCLR"
.LASF16:
	.string	"OUTSET"
.LASF64:
	.string	"result"
.LASF32:
	.string	"PIN6CTRL"
.LASF73:
	.string	"__floatunsisf"
.LASF35:
	.string	"PORT_t"
.LASF80:
	.string	"__builtin_avr_delay_cycles"
.LASF70:
	.string	"__tmp"
.LASF62:
	.string	"main"
.LASF67:
	.string	"update_SerLCD"
.LASF45:
	.string	"SPI_MODE_2_gc"
.LASF66:
	.string	"clear_display_buffs"
.LASF23:
	.string	"PINCTRLSET"
.LASF25:
	.string	"reserved_1"
.LASF34:
	.string	"reserved_2"
.LASF5:
	.string	"uint8_t"
.LASF15:
	.string	"DIRTGL"
.LASF42:
	.string	"SPI_t"
.LASF74:
	.string	"__mulsf3"
.LASF27:
	.string	"PIN1CTRL"
.LASF61:
	.string	"float"
.LASF30:
	.string	"PIN4CTRL"
.LASF19:
	.string	"INTFLAGS"
.LASF11:
	.string	"long long int"
.LASF50:
	.string	"SPI_PRESC_DIV16_gc"
.LASF53:
	.string	"char"
.LASF38:
	.string	"CTRLA"
.LASF39:
	.string	"CTRLB"
.LASF82:
	.string	"_delay_ms"
.LASF18:
	.string	"OUTTGL"
.LASF47:
	.string	"SPI_MODE_enum"
.LASF46:
	.string	"SPI_MODE_3_gc"
.LASF40:
	.string	"INTCTRL"
.LASF69:
	.string	"init_spi0_SerLCD"
.LASF41:
	.string	"DATA"
.LASF65:
	.string	"init_spi0_LM74"
.LASF78:
	.string	"GNU C17 14.2.0 -mn-flash=2 -mno-skip-bug -mdouble=32 -mlong-double=64 -mmcu=avrxmega4 -mflmap -g -Og"
.LASF79:
	.string	"sprintf"
.LASF48:
	.string	"SPI_PRESC_enum"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"read_spi0_LM74"
.LASF4:
	.string	"signed char"
.LASF21:
	.string	"PINCONFIG"
.LASF2:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF60:
	.string	"scale"
.LASF7:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF14:
	.string	"DIRCLR"
.LASF51:
	.string	"SPI_PRESC_DIV64_gc"
.LASF49:
	.string	"SPI_PRESC_DIV4_gc"
.LASF28:
	.string	"PIN2CTRL"
.LASF76:
	.string	"__subsf3"
.LASF43:
	.string	"SPI_MODE_0_gc"
.LASF8:
	.string	"long int"
.LASF68:
	.string	"write_spi0_SerLCD"
.LASF54:
	.string	"dsp_buff1"
.LASF55:
	.string	"dsp_buff2"
.LASF56:
	.string	"dsp_buff3"
.LASF57:
	.string	"dsp_buff4"
.LASF31:
	.string	"PIN5CTRL"
.LASF58:
	.string	"celcius_accumulator"
.LASF77:
	.string	"__divsf3"
.LASF81:
	.string	"data"
.LASF59:
	.string	"totalread"
.LASF10:
	.string	"long unsigned int"
.LASF75:
	.string	"__addsf3"
.LASF72:
	.string	"double"
.LASF20:
	.string	"PORTCTRL"
.LASF36:
	.string	"PORT_struct"
.LASF33:
	.string	"PIN7CTRL"
.LASF22:
	.string	"PINCTRLUPD"
.LASF83:
	.string	"__ms"
.LASF13:
	.string	"DIRSET"
.LASF37:
	.string	"SPI_struct"
.LASF71:
	.string	"__ticks_dc"
.LASF12:
	.string	"register8_t"
.LASF24:
	.string	"PINCTRLCLR"
.LASF44:
	.string	"SPI_MODE_1_gc"
.LASF26:
	.string	"PIN0CTRL"
.LASF52:
	.string	"SPI_PRESC_DIV128_gc"
.LASF29:
	.string	"PIN3CTRL"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/penguin/Code/projects/ese381/review/lab5"
.LASF0:
	.string	"main.c"
.global	__divsf3
.global	__subsf3
.global	__addsf3
.global	__mulsf3
.global	__floatunsisf
	.ident	"GCC: (GNU) 14.2.0"
.global __do_clear_bss
