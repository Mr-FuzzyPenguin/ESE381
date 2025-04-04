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
	.file 0 "/home/penguin/Code/projects/ese381/review/lab6" "main.c"
.global	init_twi0_SerLCD
	.type	init_twi0_SerLCD, @function
init_twi0_SerLCD:
.LFB5:
	.file 1 "main.c"
	.loc 1 27 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 32 4 view .LVU1
	.loc 1 32 15 is_stmt 0 view .LVU2
	ldi r30,0
	ldi r31,lo8(9)
	ldi r24,lo8(20)
	st Z,r24
	.loc 1 39 4 is_stmt 1 view .LVU3
	.loc 1 39 15 is_stmt 0 view .LVU4
	ldi r24,lo8(1)
	std Z+6,r24
	.loc 1 43 4 is_stmt 1 view .LVU5
	.loc 1 43 16 is_stmt 0 view .LVU6
	std Z+3,r24
	.loc 1 46 4 is_stmt 1 view .LVU7
	.loc 1 46 17 is_stmt 0 view .LVU8
	std Z+5,r24
/* epilogue start */
	.loc 1 47 1 view .LVU9
	ret
	.cfi_endproc
.LFE5:
	.size	init_twi0_SerLCD, .-init_twi0_SerLCD
.global	write_twi0_SerLCD
	.type	write_twi0_SerLCD, @function
write_twi0_SerLCD:
.LVL0:
.LFB6:
	.loc 1 50 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 4 view .LVU11
	.loc 1 68 28 is_stmt 0 view .LVU12
	lsl r24
.LVL1:
	.loc 1 68 15 view .LVU13
	sts 2311,r24
	.loc 1 72 5 is_stmt 1 view .LVU14
.L3:
	.loc 1 72 41 discriminator 1 view .LVU15
	.loc 1 72 12 discriminator 1 view .LVU16
	.loc 1 72 17 is_stmt 0 discriminator 1 view .LVU17
	lds r24,2309
	.loc 1 72 12 discriminator 1 view .LVU18
	sbrs r24,6
	rjmp .L3
	.loc 1 84 5 is_stmt 1 view .LVU19
	.loc 1 84 12 is_stmt 0 view .LVU20
	lds r24,2309
	.loc 1 84 8 view .LVU21
	sbrc r24,4
	rjmp .L6
	.loc 1 90 4 is_stmt 1 view .LVU22
	.loc 1 90 15 is_stmt 0 view .LVU23
	sts 2312,r22
	.loc 1 93 5 is_stmt 1 view .LVU24
.L5:
	.loc 1 93 41 discriminator 1 view .LVU25
	.loc 1 93 12 discriminator 1 view .LVU26
	.loc 1 93 17 is_stmt 0 discriminator 1 view .LVU27
	lds r24,2309
	.loc 1 93 12 discriminator 1 view .LVU28
	sbrs r24,6
	rjmp .L5
	.loc 1 96 5 is_stmt 1 view .LVU29
	.loc 1 96 12 is_stmt 0 view .LVU30
	lds r24,2309
	.loc 1 96 8 view .LVU31
	sbrc r24,4
	rjmp .L7
	.loc 1 102 4 is_stmt 1 view .LVU32
	.loc 1 102 8 is_stmt 0 view .LVU33
	ldi r30,0
	ldi r31,lo8(9)
	ldd r24,Z+4
	.loc 1 102 16 view .LVU34
	ori r24,lo8(3)
	std Z+4,r24
	.loc 1 105 5 is_stmt 1 view .LVU35
.LVL2:
.LBB10:
.LBI10:
	.file 2 "/usr/avr/include/util/delay.h"
	.loc 2 154 1 view .LVU36
.LBB11:
	.loc 2 156 2 view .LVU37
	.loc 2 159 2 view .LVU38
	.loc 2 160 2 view .LVU39
	.loc 2 161 2 view .LVU40
	.loc 2 171 3 view .LVU41
	.loc 2 174 2 view .LVU42
	ldi r24,lo8(999)
	ldi r25,hi8(999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL3:
	.loc 2 174 2 is_stmt 0 view .LVU43
.LBE11:
.LBE10:
	.loc 1 106 5 is_stmt 1 view .LVU44
	.loc 1 106 12 is_stmt 0 view .LVU45
	ldi r24,0
	ldi r25,0
	ret
.L6:
	.loc 1 86 16 view .LVU46
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L7:
	.loc 1 98 16 view .LVU47
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	.loc 1 107 1 view .LVU48
	ret
	.cfi_endproc
.LFE6:
	.size	write_twi0_SerLCD, .-write_twi0_SerLCD
.global	init_twi0_LM75
	.type	init_twi0_LM75, @function
init_twi0_LM75:
.LFB7:
	.loc 1 110 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 115 4 view .LVU50
	.loc 1 115 15 is_stmt 0 view .LVU51
	ldi r30,0
	ldi r31,lo8(9)
	ldi r24,lo8(20)
	st Z,r24
	.loc 1 122 4 is_stmt 1 view .LVU52
	.loc 1 122 15 is_stmt 0 view .LVU53
	ldi r24,lo8(1)
	std Z+6,r24
	.loc 1 126 4 is_stmt 1 view .LVU54
	.loc 1 126 16 is_stmt 0 view .LVU55
	std Z+3,r24
	.loc 1 129 4 is_stmt 1 view .LVU56
	.loc 1 129 17 is_stmt 0 view .LVU57
	std Z+5,r24
/* epilogue start */
	.loc 1 130 1 view .LVU58
	ret
	.cfi_endproc
.LFE7:
	.size	init_twi0_LM75, .-init_twi0_LM75
.global	TWI0_LM75_read
	.type	TWI0_LM75_read, @function
TWI0_LM75_read:
.LVL4:
.LFB8:
	.loc 1 137 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 137 1 is_stmt 0 view .LVU60
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 139 4 is_stmt 1 view .LVU61
	.loc 1 139 31 is_stmt 0 view .LVU62
	lsl r24
.LVL5:
	.loc 1 139 31 view .LVU63
	ori r24,lo8(1)
	.loc 1 139 15 view .LVU64
	sts 2311,r24
	.loc 1 142 5 is_stmt 1 view .LVU65
.L10:
	.loc 1 142 12 discriminator 1 view .LVU66
	.loc 1 142 17 is_stmt 0 discriminator 1 view .LVU67
	lds r24,2309
	.loc 1 142 12 discriminator 1 view .LVU68
	cp r24, __zero_reg__
	brge .L10
	.loc 1 145 5 is_stmt 1 view .LVU69
	.loc 1 145 24 is_stmt 0 view .LVU70
	ldi r30,0
	ldi r31,lo8(9)
	ldd r25,Z+8
	.loc 1 145 19 view .LVU71
	sts temp_reg_high,r25
	.loc 1 148 4 is_stmt 1 view .LVU72
	.loc 1 148 16 is_stmt 0 view .LVU73
	ldi r24,lo8(2)
	std Z+4,r24
	.loc 1 151 5 is_stmt 1 view .LVU74
.L11:
	.loc 1 151 12 discriminator 1 view .LVU75
	.loc 1 151 17 is_stmt 0 discriminator 1 view .LVU76
	lds r24,2309
	.loc 1 151 12 discriminator 1 view .LVU77
	cp r24, __zero_reg__
	brge .L11
	.loc 1 154 5 is_stmt 1 view .LVU78
	.loc 1 154 23 is_stmt 0 view .LVU79
	ldi r30,0
	ldi r31,lo8(9)
	ldd r18,Z+8
	.loc 1 154 18 view .LVU80
	sts temp_reg_low,r18
	.loc 1 157 4 is_stmt 1 view .LVU81
	.loc 1 157 16 is_stmt 0 view .LVU82
	ldi r24,lo8(7)
	std Z+4,r24
	.loc 1 160 5 is_stmt 1 view .LVU83
.L12:
	.loc 1 160 33 discriminator 1 view .LVU84
	.loc 1 160 16 is_stmt 0 discriminator 1 view .LVU85
	lds r24,2309
	.loc 1 160 33 discriminator 1 view .LVU86
	andi r24,lo8(3)
	cpi r24,lo8(1)
	brne .L12
	.loc 1 163 5 is_stmt 1 view .LVU87
	.loc 1 163 80 is_stmt 0 view .LVU88
	andi r18,lo8(-128)
	.loc 1 163 64 view .LVU89
	mov r19,r25
	.loc 1 163 23 view .LVU90
	std Y+1,r18
	std Y+2,r19
	.loc 1 165 5 is_stmt 1 view .LVU91
	.loc 1 165 12 is_stmt 0 view .LVU92
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	.loc 1 166 1 view .LVU93
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE8:
	.size	TWI0_LM75_read, .-TWI0_LM75_read
.global	init_spi0_SerLCD
	.type	init_spi0_SerLCD, @function
init_spi0_SerLCD:
.LFB9:
	.loc 1 169 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 170 4 view .LVU95
	.loc 1 170 9 is_stmt 0 view .LVU96
	ldi r30,0
	ldi r31,lo8(4)
	ld r24,Z
	.loc 1 170 14 view .LVU97
	ori r24,lo8(16)
	st Z,r24
	.loc 1 171 4 is_stmt 1 view .LVU98
	.loc 1 171 9 is_stmt 0 view .LVU99
	ld r24,Z
	.loc 1 171 14 view .LVU100
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 172 4 is_stmt 1 view .LVU101
	.loc 1 172 9 is_stmt 0 view .LVU102
	ld r24,Z
	.loc 1 172 14 view .LVU103
	ori r24,lo8(64)
	st Z,r24
	.loc 1 173 4 is_stmt 1 view .LVU104
	.loc 1 173 9 is_stmt 0 view .LVU105
	ld r24,Z
	.loc 1 173 14 view .LVU106
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 176 4 is_stmt 1 view .LVU107
	.loc 1 176 9 is_stmt 0 view .LVU108
	ldd r24,Z+4
	.loc 1 176 14 view .LVU109
	ori r24,lo8(-128)
	std Z+4,r24
	.loc 1 178 4 is_stmt 1 view .LVU110
	.loc 1 178 15 is_stmt 0 view .LVU111
	ldi r30,lo8(64)
	ldi r31,lo8(9)
	ldi r24,lo8(4)
	std Z+1,r24
	.loc 1 179 4 is_stmt 1 view .LVU112
	.loc 1 179 15 is_stmt 0 view .LVU113
	ldi r24,lo8(37)
	st Z,r24
/* epilogue start */
	.loc 1 181 1 view .LVU114
	ret
	.cfi_endproc
.LFE9:
	.size	init_spi0_SerLCD, .-init_spi0_SerLCD
.global	write_spi0_SerLCD
	.type	write_spi0_SerLCD, @function
write_spi0_SerLCD:
.LVL6:
.LFB10:
	.loc 1 185 44 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 186 4 view .LVU116
	.loc 1 186 9 is_stmt 0 view .LVU117
	ldi r30,0
	ldi r31,lo8(4)
	ldd r25,Z+4
	.loc 1 186 14 view .LVU118
	andi r25,lo8(127)
	std Z+4,r25
	.loc 1 187 4 is_stmt 1 view .LVU119
	.loc 1 187 14 is_stmt 0 view .LVU120
	sts 2372,r24
	.loc 1 188 5 is_stmt 1 view .LVU121
.LVL7:
.L15:
	.loc 1 188 12 discriminator 1 view .LVU122
	.loc 1 188 17 is_stmt 0 discriminator 1 view .LVU123
	lds r24,2371
	.loc 1 188 12 discriminator 1 view .LVU124
	cp r24, __zero_reg__
	brge .L15
	.loc 1 189 4 is_stmt 1 view .LVU125
	.loc 1 189 9 is_stmt 0 view .LVU126
	ldi r30,0
	ldi r31,lo8(4)
	ldd r24,Z+4
	.loc 1 189 14 view .LVU127
	ori r24,lo8(-128)
	std Z+4,r24
.LVL8:
/* epilogue start */
	.loc 1 190 1 view .LVU128
	ret
	.cfi_endproc
.LFE10:
	.size	write_spi0_SerLCD, .-write_spi0_SerLCD
.global	update_twi0_SerLCD
	.type	update_twi0_SerLCD, @function
update_twi0_SerLCD:
.LFB11:
	.loc 1 192 30 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 194 5 view .LVU130
	ldi r22,lo8(124)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL9:
	.loc 1 195 5 view .LVU131
	ldi r22,lo8(45)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL10:
	.loc 1 198 5 view .LVU132
	ldi r22,lo8(-2)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL11:
	.loc 1 199 5 view .LVU133
	ldi r22,lo8(-128)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL12:
	.loc 1 200 5 view .LVU134
.LBB12:
	.loc 1 200 10 view .LVU135
	.loc 1 200 18 is_stmt 0 view .LVU136
	ldi r28,0
	.loc 1 200 5 view .LVU137
	rjmp .L17
.LVL13:
.L18:
	.loc 1 201 9 is_stmt 1 view .LVU138
	.loc 1 201 44 is_stmt 0 view .LVU139
	subi r28,lo8(-(1))
.LVL14:
	.loc 1 201 9 view .LVU140
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL15:
.L17:
	.loc 1 200 25 is_stmt 1 discriminator 1 view .LVU141
	.loc 1 200 34 is_stmt 0 discriminator 1 view .LVU142
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff1))
	sbci r31,hi8(-(dsp_buff1))
	ld r22,Z
	.loc 1 200 25 discriminator 1 view .LVU143
	cpse r22,__zero_reg__
	rjmp .L18
.LBE12:
	.loc 1 204 5 is_stmt 1 view .LVU144
	ldi r22,lo8(-2)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL16:
	.loc 1 205 5 view .LVU145
	ldi r22,lo8(-64)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL17:
	.loc 1 206 5 view .LVU146
.LBB13:
	.loc 1 206 10 view .LVU147
	.loc 1 206 18 is_stmt 0 view .LVU148
	ldi r28,0
.LVL18:
	.loc 1 206 5 view .LVU149
	rjmp .L19
.LVL19:
.L20:
	.loc 1 207 9 is_stmt 1 view .LVU150
	.loc 1 207 44 is_stmt 0 view .LVU151
	subi r28,lo8(-(1))
.LVL20:
	.loc 1 207 9 view .LVU152
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL21:
.L19:
	.loc 1 206 25 is_stmt 1 discriminator 1 view .LVU153
	.loc 1 206 34 is_stmt 0 discriminator 1 view .LVU154
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff2))
	sbci r31,hi8(-(dsp_buff2))
	ld r22,Z
	.loc 1 206 25 discriminator 1 view .LVU155
	cpse r22,__zero_reg__
	rjmp .L20
.LBE13:
	.loc 1 210 5 is_stmt 1 view .LVU156
	ldi r22,lo8(-2)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL22:
	.loc 1 211 5 view .LVU157
	ldi r22,lo8(-108)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL23:
	.loc 1 212 5 view .LVU158
.LBB14:
	.loc 1 212 10 view .LVU159
	.loc 1 212 18 is_stmt 0 view .LVU160
	ldi r28,0
.LVL24:
	.loc 1 212 5 view .LVU161
	rjmp .L21
.LVL25:
.L22:
	.loc 1 213 9 is_stmt 1 view .LVU162
	.loc 1 213 44 is_stmt 0 view .LVU163
	subi r28,lo8(-(1))
.LVL26:
	.loc 1 213 9 view .LVU164
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL27:
.L21:
	.loc 1 212 25 is_stmt 1 discriminator 1 view .LVU165
	.loc 1 212 34 is_stmt 0 discriminator 1 view .LVU166
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff3))
	sbci r31,hi8(-(dsp_buff3))
	ld r22,Z
	.loc 1 212 25 discriminator 1 view .LVU167
	cpse r22,__zero_reg__
	rjmp .L22
.LBE14:
	.loc 1 216 5 is_stmt 1 view .LVU168
	ldi r22,lo8(-2)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL28:
	.loc 1 217 5 view .LVU169
	ldi r22,lo8(-44)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL29:
	.loc 1 218 5 view .LVU170
.LBB15:
	.loc 1 218 10 view .LVU171
	.loc 1 218 18 is_stmt 0 view .LVU172
	ldi r28,0
.LVL30:
	.loc 1 218 5 view .LVU173
	rjmp .L23
.LVL31:
.L24:
	.loc 1 219 9 is_stmt 1 view .LVU174
	.loc 1 219 44 is_stmt 0 view .LVU175
	subi r28,lo8(-(1))
.LVL32:
	.loc 1 219 9 view .LVU176
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL33:
.L23:
	.loc 1 218 25 is_stmt 1 discriminator 1 view .LVU177
	.loc 1 218 34 is_stmt 0 discriminator 1 view .LVU178
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff4))
	sbci r31,hi8(-(dsp_buff4))
	ld r22,Z
	.loc 1 218 25 discriminator 1 view .LVU179
	cpse r22,__zero_reg__
	rjmp .L24
.LBE15:
	.loc 1 223 5 is_stmt 1 view .LVU180
.LVL34:
.LBB16:
.LBI16:
	.loc 2 237 1 view .LVU181
.LBB17:
	.loc 2 239 2 view .LVU182
	.loc 2 242 2 view .LVU183
	.loc 2 243 2 view .LVU184
	.loc 2 244 2 view .LVU185
	.loc 2 254 3 view .LVU186
	.loc 2 257 2 view .LVU187
	ldi r24,lo8(499)
	ldi r25,hi8(499)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL35:
/* epilogue start */
	.loc 2 257 2 is_stmt 0 view .LVU188
.LBE17:
.LBE16:
	.loc 1 224 1 view .LVU189
	pop r28
.LVL36:
	.loc 1 224 1 view .LVU190
	ret
	.cfi_endproc
.LFE11:
	.size	update_twi0_SerLCD, .-update_twi0_SerLCD
.global	update_SerLCD
	.type	update_SerLCD, @function
update_SerLCD:
.LFB12:
	.loc 1 227 25 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 229 5 view .LVU192
	ldi r24,lo8(124)
	call write_spi0_SerLCD
.LVL37:
	.loc 1 230 5 view .LVU193
	ldi r24,lo8(45)
	call write_spi0_SerLCD
.LVL38:
	.loc 1 233 5 view .LVU194
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL39:
	.loc 1 234 5 view .LVU195
	ldi r24,lo8(-128)
	call write_spi0_SerLCD
.LVL40:
	.loc 1 235 5 view .LVU196
.LBB18:
	.loc 1 235 10 view .LVU197
	.loc 1 235 18 is_stmt 0 view .LVU198
	ldi r28,0
	.loc 1 235 5 view .LVU199
	rjmp .L26
.LVL41:
.L27:
	.loc 1 236 9 is_stmt 1 view .LVU200
	.loc 1 236 38 is_stmt 0 view .LVU201
	subi r28,lo8(-(1))
.LVL42:
	.loc 1 236 9 view .LVU202
	call write_spi0_SerLCD
.LVL43:
.L26:
	.loc 1 235 25 is_stmt 1 discriminator 1 view .LVU203
	.loc 1 235 34 is_stmt 0 discriminator 1 view .LVU204
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff1))
	sbci r31,hi8(-(dsp_buff1))
	ld r24,Z
	.loc 1 235 25 discriminator 1 view .LVU205
	cpse r24,__zero_reg__
	rjmp .L27
.LBE18:
	.loc 1 239 5 is_stmt 1 view .LVU206
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL44:
	.loc 1 240 5 view .LVU207
	ldi r24,lo8(-64)
	call write_spi0_SerLCD
.LVL45:
	.loc 1 241 5 view .LVU208
.LBB19:
	.loc 1 241 10 view .LVU209
	.loc 1 241 18 is_stmt 0 view .LVU210
	ldi r28,0
.LVL46:
	.loc 1 241 5 view .LVU211
	rjmp .L28
.LVL47:
.L29:
	.loc 1 242 9 is_stmt 1 view .LVU212
	.loc 1 242 38 is_stmt 0 view .LVU213
	subi r28,lo8(-(1))
.LVL48:
	.loc 1 242 9 view .LVU214
	call write_spi0_SerLCD
.LVL49:
.L28:
	.loc 1 241 25 is_stmt 1 discriminator 1 view .LVU215
	.loc 1 241 34 is_stmt 0 discriminator 1 view .LVU216
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff2))
	sbci r31,hi8(-(dsp_buff2))
	ld r24,Z
	.loc 1 241 25 discriminator 1 view .LVU217
	cpse r24,__zero_reg__
	rjmp .L29
.LBE19:
	.loc 1 245 5 is_stmt 1 view .LVU218
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL50:
	.loc 1 246 5 view .LVU219
	ldi r24,lo8(-108)
	call write_spi0_SerLCD
.LVL51:
	.loc 1 247 5 view .LVU220
.LBB20:
	.loc 1 247 10 view .LVU221
	.loc 1 247 18 is_stmt 0 view .LVU222
	ldi r28,0
.LVL52:
	.loc 1 247 5 view .LVU223
	rjmp .L30
.LVL53:
.L31:
	.loc 1 248 9 is_stmt 1 view .LVU224
	.loc 1 248 38 is_stmt 0 view .LVU225
	subi r28,lo8(-(1))
.LVL54:
	.loc 1 248 9 view .LVU226
	call write_spi0_SerLCD
.LVL55:
.L30:
	.loc 1 247 25 is_stmt 1 discriminator 1 view .LVU227
	.loc 1 247 34 is_stmt 0 discriminator 1 view .LVU228
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff3))
	sbci r31,hi8(-(dsp_buff3))
	ld r24,Z
	.loc 1 247 25 discriminator 1 view .LVU229
	cpse r24,__zero_reg__
	rjmp .L31
.LBE20:
	.loc 1 251 5 is_stmt 1 view .LVU230
	ldi r24,lo8(-2)
	call write_spi0_SerLCD
.LVL56:
	.loc 1 252 5 view .LVU231
	ldi r24,lo8(-44)
	call write_spi0_SerLCD
.LVL57:
	.loc 1 253 5 view .LVU232
.LBB21:
	.loc 1 253 10 view .LVU233
	.loc 1 253 18 is_stmt 0 view .LVU234
	ldi r28,0
.LVL58:
	.loc 1 253 5 view .LVU235
	rjmp .L32
.LVL59:
.L33:
	.loc 1 254 9 is_stmt 1 view .LVU236
	.loc 1 254 38 is_stmt 0 view .LVU237
	subi r28,lo8(-(1))
.LVL60:
	.loc 1 254 9 view .LVU238
	call write_spi0_SerLCD
.LVL61:
.L32:
	.loc 1 253 25 is_stmt 1 discriminator 1 view .LVU239
	.loc 1 253 34 is_stmt 0 discriminator 1 view .LVU240
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(dsp_buff4))
	sbci r31,hi8(-(dsp_buff4))
	ld r24,Z
	.loc 1 253 25 discriminator 1 view .LVU241
	cpse r24,__zero_reg__
	rjmp .L33
/* epilogue start */
.LBE21:
	.loc 1 258 1 view .LVU242
	pop r28
.LVL62:
	.loc 1 258 1 view .LVU243
	ret
	.cfi_endproc
.LFE12:
	.size	update_SerLCD, .-update_SerLCD
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"                    "
	.text
.global	clear_display_buffs
	.type	clear_display_buffs, @function
clear_display_buffs:
.LFB13:
	.loc 1 261 31 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 262 5 view .LVU245
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
	.loc 1 263 5 view .LVU246
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
	.loc 1 264 5 view .LVU247
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
	.loc 1 265 5 view .LVU248
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
	.loc 1 266 1 is_stmt 0 view .LVU249
	ret
	.cfi_endproc
.LFE13:
	.size	clear_display_buffs, .-clear_display_buffs
	.section	.rodata.str1.1
.LC1:
	.string	"Human Readable LM75"
.LC2:
	.string	"%d.%d C"
.LC3:
	.string	"%d.%d F"
	.text
.global	main
	.type	main, @function
main:
.LFB14:
	.loc 1 271 1 is_stmt 1 view -0
	.cfi_startproc
	rcall .
	.cfi_def_cfa_offset 4
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 273 5 view .LVU251
	call init_twi0_SerLCD
.LVL63:
	.loc 1 276 5 view .LVU252
	call init_twi0_LM75
.LVL64:
	.loc 1 279 5 view .LVU253
	call clear_display_buffs
.LVL65:
	.loc 1 282 5 view .LVU254
	ldi r22,lo8(124)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL66:
	.loc 1 283 5 view .LVU255
	ldi r22,lo8(45)
	ldi r24,lo8(114)
	call write_twi0_SerLCD
.LVL67:
	.loc 1 286 5 view .LVU256
	call update_twi0_SerLCD
.LVL68:
	rjmp .L40
.LVL69:
.L37:
.LBB22:
.LBB23:
	.loc 1 307 13 view .LVU257
	.loc 1 307 35 is_stmt 0 view .LVU258
	ldd r24,Y+1
	ldd r25,Y+2
	lsr r25
	ror r24
	.loc 1 307 23 view .LVU259
	std Y+1,r24
	std Y+2,r25
	.loc 1 308 13 is_stmt 1 view .LVU260
	.loc 1 308 53 is_stmt 0 view .LVU261
	ldd r24,Y+1
	ldd r25,Y+2
	andi r24,1
	clr r25
	.loc 1 308 41 view .LVU262
	neg r25
	neg r24
	sbc r25,__zero_reg__
	and r24,r22
	.loc 1 308 33 view .LVU263
	add r23,r24
.LVL70:
	.loc 1 309 13 is_stmt 1 view .LVU264
	.loc 1 309 19 is_stmt 0 view .LVU265
	lsl r22
.LVL71:
	.loc 1 304 33 is_stmt 1 discriminator 3 view .LVU266
	subi r20,-1
	sbci r21,-1
.LVL72:
.L36:
	.loc 1 304 27 discriminator 1 view .LVU267
	cpi r20,7
	cpc r21,__zero_reg__
	brlt .L37
.LBE23:
	.loc 1 313 9 view .LVU268
	.loc 1 313 31 is_stmt 0 view .LVU269
	ldd r24,Y+1
	ldd r25,Y+2
	lsr r25
	ror r24
	.loc 1 313 19 view .LVU270
	std Y+1,r24
	std Y+2,r25
	.loc 1 314 9 is_stmt 1 view .LVU271
	.loc 1 314 47 is_stmt 0 view .LVU272
	ldd r24,Y+1
	ldd r25,Y+2
	.loc 1 314 29 view .LVU273
	ror r24
	clr r24
	ror r24
	mov r14,r23
	sub r14,r24
.LVL73:
	.loc 1 316 9 is_stmt 1 view .LVU274
	ldi r24,lo8(20)
	ldi r30,lo8(.LC1)
	ldi r31,hi8(.LC1)
	ldi r26,lo8(dsp_buff1)
	ldi r27,hi8(dsp_buff1)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 317 9 view .LVU275
	mov r18,r15
	ldi r19,0
	mov r20,r14
	mov __tmp_reg__,r14
	lsl r0
	sbc r21,r21
.LVL74:
	.loc 1 317 9 is_stmt 0 view .LVU276
	movw r24,r18
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	push r25
	push r24
	push r21
	push r14
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	ldi r24,lo8(dsp_buff2)
	ldi r25,hi8(dsp_buff2)
	push r25
	push r24
	call sprintf
.LVL75:
	.loc 1 321 9 is_stmt 1 view .LVU277
	.loc 1 321 53 is_stmt 0 view .LVU278
	ldi r19,lo8(90)
	mul r15,r19
	movw r24,r0
	clr __zero_reg__
	.loc 1 321 17 view .LVU279
	mov r20,r14
	ldi r21,lo8(-76)
	mulsu r20,r21
	add r24,r0
	adc r25,r1
	clr __zero_reg__
.LVL76:
	.loc 1 322 9 is_stmt 1 view .LVU280
	.loc 1 322 17 is_stmt 0 view .LVU281
	movw r18,r24
	subi r18,-128
	sbci r19,-13
.LVL77:
	.loc 1 323 9 is_stmt 1 view .LVU282
	.loc 1 323 12 is_stmt 0 view .LVU283
	out __SP_L__,r28
	out __SP_H__,r29
	cp r14, __zero_reg__
	brlt .L38
.LBB24:
	.loc 1 325 13 is_stmt 1 view .LVU284
	.loc 1 325 21 is_stmt 0 view .LVU285
	ldi r30,lo8(100)
	ldi r31,0
	movw r22,r30
	call __divmodhi4
.LVL78:
	.loc 1 326 13 is_stmt 1 view .LVU286
	.loc 1 326 46 is_stmt 0 view .LVU287
	sub r18,r24
	sbc r19,r25
.LVL79:
	.loc 1 326 13 view .LVU288
	ldi r22,lo8(10)
	ldi r23,0
	call __divmodhi4
.LVL80:
	.loc 1 326 13 view .LVU289
	push r23
	push r22
	movw r24,r18
	movw r22,r30
	call __divmodhi4
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
.LVL81:
	.loc 1 326 13 view .LVU290
.LBE24:
	out __SP_L__,r28
	out __SP_H__,r29
.LVL82:
.L39:
	.loc 1 333 9 is_stmt 1 view .LVU291
	call update_twi0_SerLCD
.LVL83:
.LBE22:
	.loc 1 288 10 view .LVU292
.L40:
	.loc 1 288 5 view .LVU293
.LBB28:
	.loc 1 292 9 view .LVU294
	.loc 1 294 9 view .LVU295
	.loc 1 294 39 is_stmt 0 view .LVU296
	ldi r24,lo8(72)
	call TWI0_LM75_read
.LVL84:
	mov r16,r24
	mov r17,r25
	.loc 1 294 27 discriminator 1 view .LVU297
	std Y+1,r16
	std Y+2,r17
	.loc 1 295 9 is_stmt 1 view .LVU298
.LVL85:
	.loc 1 298 9 view .LVU299
	.loc 1 298 31 is_stmt 0 view .LVU300
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	mov r24,r25
	rol r24
	sbc r25,r25
	neg r25
	.loc 1 298 19 view .LVU301
	std Y+1,r24
	std Y+2,r25
	.loc 1 301 9 is_stmt 1 view .LVU302
	.loc 1 301 28 is_stmt 0 view .LVU303
	ldd r24,Y+1
	ldd r25,Y+2
	.loc 1 301 14 view .LVU304
	mov r18,r24
	andi r18,lo8(1)
	mov r15,r18
.LVL86:
	.loc 1 303 9 is_stmt 1 view .LVU305
	.loc 1 304 9 view .LVU306
.LBB25:
	.loc 1 304 14 view .LVU307
	.loc 1 304 18 is_stmt 0 view .LVU308
	ldi r20,0
	ldi r21,0
.LBE25:
	.loc 1 303 17 view .LVU309
	ldi r22,lo8(1)
	.loc 1 292 16 view .LVU310
	ldi r23,0
.LBB26:
	.loc 1 304 9 view .LVU311
	rjmp .L36
.LVL87:
.L38:
	.loc 1 304 9 view .LVU312
.LBE26:
.LBB27:
	.loc 1 330 13 is_stmt 1 view .LVU313
	.loc 1 330 21 is_stmt 0 view .LVU314
	ldi r30,lo8(100)
	ldi r31,0
	movw r24,r18
.LVL88:
	.loc 1 330 21 view .LVU315
	movw r22,r30
	call __divmodhi4
.LVL89:
	.loc 1 331 13 is_stmt 1 view .LVU316
	.loc 1 331 47 is_stmt 0 view .LVU317
	movw r20,r24
	sub r20,r18
	sbc r21,r19
	movw r18,r20
.LVL90:
	.loc 1 331 13 view .LVU318
	ldi r22,lo8(10)
	ldi r23,0
	call __divmodhi4
.LVL91:
	.loc 1 331 13 view .LVU319
	push r23
	push r22
	movw r24,r18
	movw r22,r30
	call __divmodhi4
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
.LVL92:
	.loc 1 331 13 view .LVU320
	out __SP_L__,r28
	out __SP_H__,r29
	rjmp .L39
.LBE27:
.LBE28:
	.cfi_endproc
.LFE14:
	.size	main, .-main
.global	temp_reg_low
	.section .bss
	.type	temp_reg_low, @object
	.size	temp_reg_low, 1
temp_reg_low:
	.zero	1
.global	temp_reg_high
	.type	temp_reg_high, @object
	.size	temp_reg_high, 1
temp_reg_high:
	.zero	1
.global	dsp_buff4
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
	.long	0xbbd
	.word	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0xb
	.long	.LASF5
	.byte	0x3
	.byte	0x7d
	.byte	0x14
	.long	0x40
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0xb
	.long	.LASF6
	.byte	0x3
	.byte	0x7e
	.byte	0x16
	.long	0x2d
	.uleb128 0xd
	.long	0x47
	.uleb128 0xb
	.long	.LASF7
	.byte	0x3
	.byte	0x7f
	.byte	0x14
	.long	0x64
	.uleb128 0x22
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	.LASF8
	.byte	0x3
	.byte	0x80
	.byte	0x16
	.long	0x7c
	.uleb128 0xd
	.long	0x6b
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0xb
	.long	.LASF11
	.byte	0x3
	.byte	0x82
	.byte	0x16
	.long	0x96
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0xb
	.long	.LASF14
	.byte	0x4
	.byte	0x39
	.byte	0x1a
	.long	0x53
	.uleb128 0x10
	.long	0xa4
	.long	0xc0
	.uleb128 0x11
	.long	0x7c
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xb0
	.uleb128 0x10
	.long	0xa4
	.long	0xd5
	.uleb128 0x11
	.long	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0xc5
	.uleb128 0x14
	.long	.LASF38
	.byte	0x20
	.word	0x836
	.long	0x212
	.uleb128 0x15
	.string	"DIR"
	.word	0x838
	.long	0xa4
	.byte	0
	.uleb128 0x1
	.long	.LASF15
	.word	0x839
	.long	0xa4
	.byte	0x1
	.uleb128 0x1
	.long	.LASF16
	.word	0x83a
	.long	0xa4
	.byte	0x2
	.uleb128 0x1
	.long	.LASF17
	.word	0x83b
	.long	0xa4
	.byte	0x3
	.uleb128 0x15
	.string	"OUT"
	.word	0x83c
	.long	0xa4
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.word	0x83d
	.long	0xa4
	.byte	0x5
	.uleb128 0x1
	.long	.LASF19
	.word	0x83e
	.long	0xa4
	.byte	0x6
	.uleb128 0x1
	.long	.LASF20
	.word	0x83f
	.long	0xa4
	.byte	0x7
	.uleb128 0x15
	.string	"IN"
	.word	0x840
	.long	0xa4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.word	0x841
	.long	0xa4
	.byte	0x9
	.uleb128 0x1
	.long	.LASF22
	.word	0x842
	.long	0xa4
	.byte	0xa
	.uleb128 0x1
	.long	.LASF23
	.word	0x843
	.long	0xa4
	.byte	0xb
	.uleb128 0x1
	.long	.LASF24
	.word	0x844
	.long	0xa4
	.byte	0xc
	.uleb128 0x1
	.long	.LASF25
	.word	0x845
	.long	0xa4
	.byte	0xd
	.uleb128 0x1
	.long	.LASF26
	.word	0x846
	.long	0xa4
	.byte	0xe
	.uleb128 0x1
	.long	.LASF27
	.word	0x847
	.long	0xc0
	.byte	0xf
	.uleb128 0x1
	.long	.LASF28
	.word	0x848
	.long	0xa4
	.byte	0x10
	.uleb128 0x1
	.long	.LASF29
	.word	0x849
	.long	0xa4
	.byte	0x11
	.uleb128 0x1
	.long	.LASF30
	.word	0x84a
	.long	0xa4
	.byte	0x12
	.uleb128 0x1
	.long	.LASF31
	.word	0x84b
	.long	0xa4
	.byte	0x13
	.uleb128 0x1
	.long	.LASF32
	.word	0x84c
	.long	0xa4
	.byte	0x14
	.uleb128 0x1
	.long	.LASF33
	.word	0x84d
	.long	0xa4
	.byte	0x15
	.uleb128 0x1
	.long	.LASF34
	.word	0x84e
	.long	0xa4
	.byte	0x16
	.uleb128 0x1
	.long	.LASF35
	.word	0x84f
	.long	0xa4
	.byte	0x17
	.uleb128 0x1
	.long	.LASF36
	.word	0x850
	.long	0x222
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	0xa4
	.long	0x222
	.uleb128 0x11
	.long	0x7c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x212
	.uleb128 0x16
	.long	.LASF37
	.word	0x851
	.long	0xda
	.uleb128 0x14
	.long	.LASF39
	.byte	0x8
	.word	0xa16
	.long	0x287
	.uleb128 0x1
	.long	.LASF40
	.word	0xa18
	.long	0xa4
	.byte	0
	.uleb128 0x1
	.long	.LASF41
	.word	0xa19
	.long	0xa4
	.byte	0x1
	.uleb128 0x1
	.long	.LASF42
	.word	0xa1a
	.long	0xa4
	.byte	0x2
	.uleb128 0x1
	.long	.LASF21
	.word	0xa1b
	.long	0xa4
	.byte	0x3
	.uleb128 0x1
	.long	.LASF43
	.word	0xa1c
	.long	0xa4
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.word	0xa1d
	.long	0xd5
	.byte	0x5
	.byte	0
	.uleb128 0x16
	.long	.LASF44
	.word	0xa1e
	.long	0x232
	.uleb128 0x9
	.long	.LASF49
	.long	0x7c
	.word	0xa21
	.long	0x2ba
	.uleb128 0x3
	.long	.LASF45
	.byte	0
	.uleb128 0x3
	.long	.LASF46
	.byte	0x1
	.uleb128 0x3
	.long	.LASF47
	.byte	0x2
	.uleb128 0x3
	.long	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF50
	.long	0x7c
	.word	0xa2a
	.long	0x2e2
	.uleb128 0x3
	.long	.LASF51
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0x2
	.uleb128 0x3
	.long	.LASF53
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0x10
	.word	0xbc2
	.long	0x3af
	.uleb128 0x1
	.long	.LASF40
	.word	0xbc4
	.long	0xa4
	.byte	0
	.uleb128 0x1
	.long	.LASF56
	.word	0xbc5
	.long	0xa4
	.byte	0x1
	.uleb128 0x1
	.long	.LASF57
	.word	0xbc6
	.long	0xa4
	.byte	0x2
	.uleb128 0x1
	.long	.LASF58
	.word	0xbc7
	.long	0xa4
	.byte	0x3
	.uleb128 0x1
	.long	.LASF59
	.word	0xbc8
	.long	0xa4
	.byte	0x4
	.uleb128 0x1
	.long	.LASF60
	.word	0xbc9
	.long	0xa4
	.byte	0x5
	.uleb128 0x1
	.long	.LASF61
	.word	0xbca
	.long	0xa4
	.byte	0x6
	.uleb128 0x1
	.long	.LASF62
	.word	0xbcb
	.long	0xa4
	.byte	0x7
	.uleb128 0x1
	.long	.LASF63
	.word	0xbcc
	.long	0xa4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.word	0xbcd
	.long	0xa4
	.byte	0x9
	.uleb128 0x1
	.long	.LASF65
	.word	0xbce
	.long	0xa4
	.byte	0xa
	.uleb128 0x1
	.long	.LASF66
	.word	0xbcf
	.long	0xa4
	.byte	0xb
	.uleb128 0x1
	.long	.LASF67
	.word	0xbd0
	.long	0xa4
	.byte	0xc
	.uleb128 0x1
	.long	.LASF68
	.word	0xbd1
	.long	0xa4
	.byte	0xd
	.uleb128 0x1
	.long	.LASF69
	.word	0xbd2
	.long	0xa4
	.byte	0xe
	.uleb128 0x1
	.long	.LASF27
	.word	0xbd3
	.long	0xc0
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.long	.LASF70
	.word	0xbd4
	.long	0x2e2
	.uleb128 0x9
	.long	.LASF71
	.long	0x7c
	.word	0xbe5
	.long	0x3e2
	.uleb128 0x3
	.long	.LASF72
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x1
	.uleb128 0x3
	.long	.LASF74
	.byte	0x2
	.uleb128 0x3
	.long	.LASF75
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.long	0x7c
	.word	0xbf5
	.long	0x3fe
	.uleb128 0x3
	.long	.LASF77
	.byte	0
	.uleb128 0x3
	.long	.LASF78
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.long	0x7c
	.word	0xbfc
	.long	0x426
	.uleb128 0x3
	.long	.LASF80
	.byte	0
	.uleb128 0x3
	.long	.LASF81
	.byte	0x1
	.uleb128 0x3
	.long	.LASF82
	.byte	0x2
	.uleb128 0x3
	.long	.LASF83
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.long	0x7c
	.word	0xc0d
	.long	0x44e
	.uleb128 0x3
	.long	.LASF85
	.byte	0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x4
	.uleb128 0x3
	.long	.LASF87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF88
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	.LASF89
	.long	0x7c
	.word	0xc16
	.long	0x46a
	.uleb128 0x3
	.long	.LASF90
	.byte	0
	.uleb128 0x3
	.long	.LASF91
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.long	0x46f
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF92
	.uleb128 0x23
	.long	0x46f
	.uleb128 0x10
	.long	0x46f
	.long	0x48b
	.uleb128 0x11
	.long	0x7c
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x15
	.byte	0x6
	.long	0x47b
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff1
	.uleb128 0xc
	.long	.LASF94
	.byte	0x16
	.byte	0x6
	.long	0x47b
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff2
	.uleb128 0xc
	.long	.LASF95
	.byte	0x17
	.byte	0x6
	.long	0x47b
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff3
	.uleb128 0xc
	.long	.LASF96
	.byte	0x18
	.byte	0x6
	.long	0x47b
	.uleb128 0x5
	.byte	0x3
	.long	dsp_buff4
	.uleb128 0xc
	.long	.LASF97
	.byte	0x85
	.byte	0x9
	.long	0x47
	.uleb128 0x5
	.byte	0x3
	.long	temp_reg_high
	.uleb128 0xc
	.long	.LASF98
	.byte	0x86
	.byte	0x9
	.long	0x47
	.uleb128 0x5
	.byte	0x3
	.long	temp_reg_low
	.uleb128 0x24
	.long	.LASF123
	.byte	0x5
	.word	0x2ac
	.byte	0xc
	.long	0x64
	.long	0x50e
	.uleb128 0xe
	.long	0x46a
	.uleb128 0xe
	.long	0x50e
	.uleb128 0x25
	.byte	0
	.uleb128 0x1b
	.long	0x476
	.uleb128 0x26
	.long	.LASF121
	.byte	0x2
	.byte	0xf3
	.byte	0xe
	.long	0x525
	.uleb128 0xe
	.long	0x96
	.byte	0
	.uleb128 0x27
	.long	.LASF107
	.byte	0x1
	.word	0x10e
	.byte	0x5
	.long	0x64
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a7
	.uleb128 0x1c
	.long	.LLRL17
	.long	0x64e
	.uleb128 0x17
	.long	.LASF99
	.word	0x124
	.byte	0x10
	.long	0x34
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x28
	.long	.LASF111
	.byte	0x1
	.word	0x126
	.byte	0x1b
	.long	0x77
	.uleb128 0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x17
	.long	.LASF100
	.word	0x127
	.byte	0x11
	.long	0x47
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x17
	.long	.LASF101
	.word	0x12f
	.byte	0x11
	.long	0x47
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0xf
	.string	"c1"
	.word	0x141
	.byte	0x11
	.long	0x58
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0xf
	.string	"c3"
	.word	0x142
	.byte	0x11
	.long	0x58
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1c
	.long	.LLRL23
	.long	0x5d7
	.uleb128 0xf
	.string	"i"
	.word	0x130
	.byte	0x12
	.long	0x64
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.uleb128 0x6
	.long	.LBB24
	.long	.LBE24-.LBB24
	.long	0x601
	.uleb128 0xf
	.string	"c2"
	.word	0x145
	.byte	0x15
	.long	0x58
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x5
	.long	.LVL81
	.long	0x4f1
	.byte	0
	.uleb128 0x6
	.long	.LBB27
	.long	.LBE27-.LBB27
	.long	0x62b
	.uleb128 0xf
	.string	"c2"
	.word	0x14a
	.byte	0x15
	.long	0x58
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x5
	.long	.LVL92
	.long	0x4f1
	.byte	0
	.uleb128 0x5
	.long	.LVL75
	.long	0x4f1
	.uleb128 0x5
	.long	.LVL83
	.long	0x82f
	.uleb128 0xa
	.long	.LVL84
	.long	0xa75
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LVL63
	.long	0xb39
	.uleb128 0x5
	.long	.LVL64
	.long	0xab1
	.uleb128 0x5
	.long	.LVL65
	.long	0x6a7
	.uleb128 0x4
	.long	.LVL66
	.long	0xac1
	.long	0x683
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL67
	.long	0xac1
	.long	0x69d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.long	.LVL68
	.long	0x82f
	.byte	0
	.uleb128 0x29
	.long	.LASF105
	.byte	0x1
	.word	0x105
	.byte	0x6
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF102
	.byte	0xe3
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x82f
	.uleb128 0x6
	.long	.LBB18
	.long	.LBE18-.LBB18
	.long	0x6f5
	.uleb128 0x8
	.string	"i"
	.byte	0xeb
	.long	0x47
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x5
	.long	.LVL43
	.long	0xa3d
	.byte	0
	.uleb128 0x6
	.long	.LBB19
	.long	.LBE19-.LBB19
	.long	0x71c
	.uleb128 0x8
	.string	"i"
	.byte	0xf1
	.long	0x47
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x5
	.long	.LVL49
	.long	0xa3d
	.byte	0
	.uleb128 0x6
	.long	.LBB20
	.long	.LBE20-.LBB20
	.long	0x743
	.uleb128 0x8
	.string	"i"
	.byte	0xf7
	.long	0x47
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x5
	.long	.LVL55
	.long	0xa3d
	.byte	0
	.uleb128 0x6
	.long	.LBB21
	.long	.LBE21-.LBB21
	.long	0x76a
	.uleb128 0x8
	.string	"i"
	.byte	0xfd
	.long	0x47
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x5
	.long	.LVL61
	.long	0xa3d
	.byte	0
	.uleb128 0x4
	.long	.LVL37
	.long	0xa3d
	.long	0x77e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL38
	.long	0xa3d
	.long	0x792
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.long	.LVL39
	.long	0xa3d
	.long	0x7a6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL40
	.long	0xa3d
	.long	0x7ba
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4
	.long	.LVL44
	.long	0xa3d
	.long	0x7ce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL45
	.long	0xa3d
	.long	0x7e2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0x4
	.long	.LVL50
	.long	0xa3d
	.long	0x7f6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL51
	.long	0xa3d
	.long	0x80a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0x94
	.byte	0
	.uleb128 0x4
	.long	.LVL56
	.long	0xa3d
	.long	0x81e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0xa
	.long	.LVL57
	.long	0xa3d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF103
	.byte	0xc0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3d
	.uleb128 0x6
	.long	.LBB12
	.long	.LBE12-.LBB12
	.long	0x871
	.uleb128 0x8
	.string	"i"
	.byte	0xc8
	.long	0x47
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xa
	.long	.LVL15
	.long	0xac1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LBB13
	.long	.LBE13-.LBB13
	.long	0x89f
	.uleb128 0x8
	.string	"i"
	.byte	0xce
	.long	0x47
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xa
	.long	.LVL21
	.long	0xac1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LBB14
	.long	.LBE14-.LBB14
	.long	0x8cd
	.uleb128 0x8
	.string	"i"
	.byte	0xd4
	.long	0x47
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xa
	.long	.LVL27
	.long	0xac1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LBB15
	.long	.LBE15-.LBB15
	.long	0x8fb
	.uleb128 0x8
	.string	"i"
	.byte	0xda
	.long	0x47
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.long	.LVL33
	.long	0xac1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0xb49
	.long	.LBI16
	.byte	.LVU181
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.long	0x93c
	.uleb128 0x1d
	.long	0xb56
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x12
	.long	0xb60
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x12
	.long	0xb6b
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.uleb128 0x4
	.long	.LVL9
	.long	0xac1
	.long	0x956
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x4
	.long	.LVL10
	.long	0xac1
	.long	0x970
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.long	.LVL11
	.long	0xac1
	.long	0x98a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL12
	.long	0xac1
	.long	0x9a4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4
	.long	.LVL16
	.long	0xac1
	.long	0x9be
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL17
	.long	0xac1
	.long	0x9d8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0x4
	.long	.LVL22
	.long	0xac1
	.long	0x9f2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LVL23
	.long	0xac1
	.long	0xa0c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0x94
	.byte	0
	.uleb128 0x4
	.long	.LVL28
	.long	0xac1
	.long	0xa26
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.uleb128 0xa
	.long	.LVL29
	.long	0xac1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x9
	.byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF104
	.byte	0xb9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa65
	.uleb128 0x19
	.long	.LASF109
	.byte	0xb9
	.byte	0x26
	.long	0x2d
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x1a
	.long	.LASF106
	.byte	0xa9
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x88
	.byte	0xa
	.long	0x6b
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xab1
	.uleb128 0x19
	.long	.LASF110
	.byte	0x88
	.byte	0x21
	.long	0x47
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2b
	.long	.LASF112
	.byte	0x1
	.byte	0xa3
	.byte	0x17
	.long	0x77
	.uleb128 0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x6d
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF114
	.byte	0x31
	.byte	0x5
	.long	0x64
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xb39
	.uleb128 0x19
	.long	.LASF110
	.byte	0x31
	.byte	0x1f
	.long	0x47
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2c
	.long	.LASF109
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.long	0x47
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2d
	.long	0xb8a
	.long	.LBI10
	.byte	.LVU36
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.uleb128 0x1d
	.long	0xb93
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x12
	.long	0xb9d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x12
	.long	0xba8
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1a
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF124
	.byte	0x2
	.byte	0xed
	.byte	0x1
	.byte	0x3
	.long	0xb83
	.uleb128 0x1f
	.long	.LASF119
	.byte	0xed
	.long	0xb83
	.uleb128 0x13
	.long	.LASF116
	.byte	0xef
	.byte	0x9
	.long	0xb83
	.uleb128 0x13
	.long	.LASF117
	.byte	0xf2
	.byte	0xb
	.long	0x8a
	.uleb128 0x20
	.long	.LASF121
	.byte	0xf3
	.uleb128 0xe
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.long	.LASF118
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x9a
	.long	0xb83
	.uleb128 0x13
	.long	.LASF116
	.byte	0x9c
	.byte	0x9
	.long	0xb83
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9f
	.byte	0xb
	.long	0x8a
	.uleb128 0x20
	.long	.LASF121
	.byte	0xa0
	.uleb128 0xe
	.long	0x96
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
.LVUS18:
	.uleb128 .LVU257
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU293
	.uleb128 .LVU295
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE14-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS19:
	.uleb128 .LVU257
	.uleb128 .LVU293
	.uleb128 .LVU299
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LFE14-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS20:
	.uleb128 .LVU257
	.uleb128 .LVU277
	.uleb128 .LVU306
	.uleb128 .LVU312
.LLST20:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL75-1-.Ltext0
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU280
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU293
	.uleb128 .LVU312
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0x4
	.byte	0x82
	.sleb128 -3200
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 0x16
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x13
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x4
	.byte	0x82
	.sleb128 -3200
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 0x16
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 .LFE14-.Ltext0
	.uleb128 0x13
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU282
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU293
	.uleb128 .LVU312
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 0x19
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x16
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 0x19
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 .LFE14-.Ltext0
	.uleb128 0x16
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU257
	.uleb128 .LVU276
	.uleb128 .LVU308
	.uleb128 .LVU312
.LLST24:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU286
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU291
.LLST25:
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 0x1d
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x8e
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x8
	.byte	0x64
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU316
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x8e
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 .LFE14-.Ltext0
	.uleb128 0x1d
	.byte	0x7e
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0xb4
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x5a
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0xc80
	.byte	0x8
	.byte	0x64
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU198
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU211
.LLST13:
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS14:
	.uleb128 .LVU210
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU223
.LLST14:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS15:
	.uleb128 .LVU222
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU235
.LLST15:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS16:
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST16:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LFE12-.Ltext0
	.uleb128 0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	dsp_buff4
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU149
.LLST6:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
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
.LVUS7:
	.uleb128 .LVU148
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU161
.LLST7:
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
.LVUS8:
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU173
.LLST8:
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
	.byte	0
.LVUS9:
	.uleb128 .LVU172
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LFE11-.Ltext0
	.uleb128 0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	dsp_buff4
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU181
	.uleb128 .LVU188
.LLST10:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43fa0000
	.byte	0
.LVUS11:
	.uleb128 .LVU186
	.uleb128 .LVU188
.LLST11:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44fa0000
	.byte	0
.LVUS12:
	.uleb128 .LVU187
	.uleb128 .LVU188
.LLST12:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.word	0x7d0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x3
	.byte	0xa
	.word	0x944
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE10-.Ltext0
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE8-.Ltext0
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
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
.LVUS1:
	.uleb128 .LVU36
	.uleb128 .LVU43
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0
.LVUS2:
	.uleb128 .LVU41
	.uleb128 .LVU43
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x457a0000
	.byte	0
.LVUS3:
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST3:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.word	0xfa0
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
.LLRL17:
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB28-.Ltext0
	.uleb128 .LBE28-.Ltext0
	.byte	0
.LLRL23:
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"TWI_BUSSTATE_UNKNOWN_gc"
.LASF26:
	.string	"PINCTRLCLR"
.LASF101:
	.string	"scale"
.LASF123:
	.string	"sprintf"
.LASF125:
	.string	"_delay_ms"
.LASF52:
	.string	"SPI_PRESC_DIV16_gc"
.LASF49:
	.string	"SPI_MODE_enum"
.LASF2:
	.string	"long long unsigned int"
.LASF124:
	.string	"_delay_us"
.LASF113:
	.string	"init_twi0_LM75"
.LASF33:
	.string	"PIN5CTRL"
.LASF61:
	.string	"MBAUD"
.LASF7:
	.string	"int16_t"
.LASF13:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF104:
	.string	"write_spi0_SerLCD"
.LASF105:
	.string	"clear_display_buffs"
.LASF70:
	.string	"TWI_t"
.LASF10:
	.string	"long int"
.LASF25:
	.string	"PINCTRLSET"
.LASF85:
	.string	"TWI_SDAHOLD_OFF_gc"
.LASF78:
	.string	"TWI_INPUTLVL_SMBUS_gc"
.LASF30:
	.string	"PIN2CTRL"
.LASF64:
	.string	"SCTRLA"
.LASF65:
	.string	"SCTRLB"
.LASF118:
	.string	"double"
.LASF122:
	.string	"GNU C17 14.2.0 -mn-flash=2 -mno-skip-bug -mdouble=32 -mlong-double=64 -mmcu=avrxmega4 -mflmap -g -Og"
.LASF107:
	.string	"main"
.LASF84:
	.string	"TWI_SDAHOLD_enum"
.LASF81:
	.string	"TWI_MCMD_REPSTART_gc"
.LASF67:
	.string	"SADDR"
.LASF80:
	.string	"TWI_MCMD_NOACT_gc"
.LASF77:
	.string	"TWI_INPUTLVL_I2C_gc"
.LASF56:
	.string	"DUALCTRL"
.LASF116:
	.string	"__tmp"
.LASF103:
	.string	"update_twi0_SerLCD"
.LASF14:
	.string	"register8_t"
.LASF106:
	.string	"init_spi0_SerLCD"
.LASF9:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF44:
	.string	"SPI_t"
.LASF39:
	.string	"SPI_struct"
.LASF12:
	.string	"long unsigned int"
.LASF97:
	.string	"temp_reg_high"
.LASF35:
	.string	"PIN7CTRL"
.LASF98:
	.string	"temp_reg_low"
.LASF109:
	.string	"data"
.LASF74:
	.string	"TWI_BUSSTATE_OWNER_gc"
.LASF55:
	.string	"TWI_struct"
.LASF120:
	.string	"__ms"
.LASF57:
	.string	"DBGCTRL"
.LASF43:
	.string	"DATA"
.LASF79:
	.string	"TWI_MCMD_enum"
.LASF53:
	.string	"SPI_PRESC_DIV64_gc"
.LASF48:
	.string	"SPI_MODE_3_gc"
.LASF100:
	.string	"half"
.LASF119:
	.string	"__us"
.LASF93:
	.string	"dsp_buff1"
.LASF94:
	.string	"dsp_buff2"
.LASF95:
	.string	"dsp_buff3"
.LASF96:
	.string	"dsp_buff4"
.LASF32:
	.string	"PIN4CTRL"
.LASF62:
	.string	"MADDR"
.LASF19:
	.string	"OUTCLR"
.LASF89:
	.string	"TWI_SDASETUP_enum"
.LASF99:
	.string	"celcius_accumulator"
.LASF21:
	.string	"INTFLAGS"
.LASF47:
	.string	"SPI_MODE_2_gc"
.LASF24:
	.string	"PINCTRLUPD"
.LASF68:
	.string	"SDATA"
.LASF114:
	.string	"write_twi0_SerLCD"
.LASF69:
	.string	"SADDRMASK"
.LASF37:
	.string	"PORT_t"
.LASF27:
	.string	"reserved_1"
.LASF36:
	.string	"reserved_2"
.LASF88:
	.string	"TWI_SDAHOLD_500NS_gc"
.LASF102:
	.string	"update_SerLCD"
.LASF29:
	.string	"PIN1CTRL"
.LASF40:
	.string	"CTRLA"
.LASF41:
	.string	"CTRLB"
.LASF108:
	.string	"TWI0_LM75_read"
.LASF111:
	.string	"totalread"
.LASF16:
	.string	"DIRCLR"
.LASF51:
	.string	"SPI_PRESC_DIV4_gc"
.LASF121:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF110:
	.string	"saddr"
.LASF50:
	.string	"SPI_PRESC_enum"
.LASF76:
	.string	"TWI_INPUTLVL_enum"
.LASF18:
	.string	"OUTSET"
.LASF86:
	.string	"TWI_SDAHOLD_50NS_gc"
.LASF60:
	.string	"MSTATUS"
.LASF11:
	.string	"uint32_t"
.LASF34:
	.string	"PIN6CTRL"
.LASF20:
	.string	"OUTTGL"
.LASF92:
	.string	"char"
.LASF73:
	.string	"TWI_BUSSTATE_IDLE_gc"
.LASF45:
	.string	"SPI_MODE_0_gc"
.LASF63:
	.string	"MDATA"
.LASF22:
	.string	"PORTCTRL"
.LASF38:
	.string	"PORT_struct"
.LASF23:
	.string	"PINCONFIG"
.LASF15:
	.string	"DIRSET"
.LASF66:
	.string	"SSTATUS"
.LASF117:
	.string	"__ticks_dc"
.LASF42:
	.string	"INTCTRL"
.LASF5:
	.string	"int8_t"
.LASF90:
	.string	"TWI_SDASETUP_4CYC_gc"
.LASF31:
	.string	"PIN3CTRL"
.LASF54:
	.string	"SPI_PRESC_DIV128_gc"
.LASF46:
	.string	"SPI_MODE_1_gc"
.LASF17:
	.string	"DIRTGL"
.LASF82:
	.string	"TWI_MCMD_RECVTRANS_gc"
.LASF87:
	.string	"TWI_SDAHOLD_300NS_gc"
.LASF58:
	.string	"MCTRLA"
.LASF59:
	.string	"MCTRLB"
.LASF6:
	.string	"uint8_t"
.LASF91:
	.string	"TWI_SDASETUP_8CYC_gc"
.LASF115:
	.string	"init_twi0_SerLCD"
.LASF75:
	.string	"TWI_BUSSTATE_BUSY_gc"
.LASF28:
	.string	"PIN0CTRL"
.LASF112:
	.string	"result"
.LASF71:
	.string	"TWI_BUSSTATE_enum"
.LASF83:
	.string	"TWI_MCMD_STOP_gc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/penguin/Code/projects/ese381/review/lab6"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 14.2.0"
.global __do_clear_bss
