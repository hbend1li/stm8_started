;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.7.0 #10231 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _Delay
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$main$0 ==.
;	./main.c: 8: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
	Smain$main$1 ==.
	Smain$main$2 ==.
;	./main.c: 14: GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
	Smain$main$3 ==.
; genIPush
	push	#0x0e
	Smain$main$4 ==.
; genIPush
	push	#0x00
	Smain$main$5 ==.
	push	#0x50
	Smain$main$6 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$main$7 ==.
	Smain$main$8 ==.
;	./main.c: 16: while (1)
; genLabel
00102$:
	Smain$main$9 ==.
	Smain$main$10 ==.
;	./main.c: 20: GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
; genIPush
	push	#0x0e
	Smain$main$11 ==.
; genIPush
	push	#0x00
	Smain$main$12 ==.
	push	#0x50
	Smain$main$13 ==.
; genCall
	call	_GPIO_WriteReverse
	addw	sp, #3
	Smain$main$14 ==.
	Smain$main$15 ==.
;	./main.c: 21: Delay(0xFFFF);
; genIPush
	push	#0xff
	Smain$main$16 ==.
	push	#0xff
	Smain$main$17 ==.
; genCall
	call	_Delay
	addw	sp, #2
	Smain$main$18 ==.
	Smain$main$19 ==.
; genGoto
	jp	00102$
; genLabel
00104$:
	Smain$main$20 ==.
;	./main.c: 24: }
; genEndFunction
	Smain$main$21 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$22 ==.
	Smain$Delay$23 ==.
;	./main.c: 26: void Delay(uint16_t nCount)
; genLabel
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Delay:
	Smain$Delay$24 ==.
	Smain$Delay$25 ==.
;	./main.c: 29: while (nCount != 0)
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
; genIfx
	tnzw	x
	jrne	00115$
	jp	00104$
00115$:
	Smain$Delay$26 ==.
	Smain$Delay$27 ==.
;	./main.c: 31: nCount--;
; genMinus
	decw	x
	Smain$Delay$28 ==.
; genGoto
	jp	00101$
; genLabel
00104$:
	Smain$Delay$29 ==.
;	./main.c: 33: }
; genEndFunction
	Smain$Delay$30 ==.
	XG$Delay$0$0 ==.
	ret
	Smain$Delay$31 ==.
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/usr/bin/../share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/bin/../share/sdcc/include"
	.db	0
	.ascii "/usr/share/sdcc/include"
	.db	0
	.db	0
	.ascii "./main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$0)
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Smain$main$2-Smain$main$0
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$main$8-Smain$main$2
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$10-Smain$main$8
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$15-Smain$main$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$20-Smain$main$15
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$main$21-Smain$main$20
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$Delay$23)
	.db	3
	.sleb128	25
	.db	1
	.db	9
	.dw	Smain$Delay$25-Smain$Delay$23
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$Delay$27-Smain$Delay$25
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$Delay$29-Smain$Delay$27
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$Delay$30-Smain$Delay$29
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$Delay$24)
	.dw	0,(Smain$Delay$31)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$main$18)
	.dw	0,(Smain$main$22)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$17)
	.dw	0,(Smain$main$18)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$16)
	.dw	0,(Smain$main$17)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$14)
	.dw	0,(Smain$main$16)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$13)
	.dw	0,(Smain$main$14)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$12)
	.dw	0,(Smain$main$13)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$11)
	.dw	0,(Smain$main$12)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$7)
	.dw	0,(Smain$main$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$6)
	.dw	0,(Smain$main$7)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$5)
	.dw	0,(Smain$main$6)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$4)
	.dw	0,(Smain$main$5)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$3)
	.dw	0,(Smain$main$4)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$1)
	.dw	0,(Smain$main$3)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	7
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.7.0 #10231"
	.db	0
	.uleb128	2
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	3
	.dw	0,121
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,52
	.uleb128	4
	.dw	0,(Smain$main$9)
	.dw	0,(Smain$main$19)
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "i_var"
	.db	0
	.dw	0,121
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "io"
	.db	0
	.dw	0,121
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	6
	.dw	0,187
	.ascii "Delay"
	.db	0
	.dw	0,(_Delay)
	.dw	0,(XG$Delay$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "nCount"
	.db	0
	.dw	0,187
	.uleb128	4
	.dw	0,(Smain$Delay$26)
	.dw	0,(Smain$Delay$28)
	.uleb128	0
	.uleb128	2
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,59
	.ascii "main"
	.db	0
	.dw	0,138
	.ascii "Delay"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$Delay$24)	;initial loc
	.dw	0,Smain$Delay$31-Smain$Delay$24
	.db	1
	.dw	0,(Smain$Delay$24)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,103
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$main$1)	;initial loc
	.dw	0,Smain$main$22-Smain$main$1
	.db	1
	.dw	0,(Smain$main$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$3)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$4)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$5)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$6)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$11)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$12)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$13)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$14)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$16)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$17)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$18)
	.db	14
	.uleb128	2
