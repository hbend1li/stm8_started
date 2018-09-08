                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.7.0 #10231 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _GPIO_WriteReverse
                                     13 	.globl _GPIO_Init
                                     14 	.globl _Delay
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; Stack segment in internal ram 
                                     25 ;--------------------------------------------------------
                                     26 	.area	SSEG
      FFFFFF                         27 __start__stack:
      FFFFFF                         28 	.ds	1
                                     29 
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 ;--------------------------------------------------------
                                     35 ; interrupt vector 
                                     36 ;--------------------------------------------------------
                                     37 	.area HOME
      008000                         38 __interrupt_vect:
      008000 82 00 80 07             39 	int s_GSINIT ; reset
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
      008007                         47 __sdcc_gs_init_startup:
      008007                         48 __sdcc_init_data:
                                     49 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   50 	ldw x, #l_DATA
      00800A 27 07            [ 1]   51 	jreq	00002$
      00800C                         52 00001$:
      00800C 72 4F 00 00      [ 1]   53 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   54 	decw x
      008011 26 F9            [ 1]   55 	jrne	00001$
      008013                         56 00002$:
      008013 AE 00 00         [ 2]   57 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   58 	jreq	00004$
      008018                         59 00003$:
      008018 D6 81 41         [ 1]   60 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   61 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   62 	decw	x
      00801F 26 F7            [ 1]   63 	jrne	00003$
      008021                         64 00004$:
                                     65 ; stm8_genXINIT() end
                                     66 	.area GSFINAL
      008021 CC 80 04         [ 2]   67 	jp	__sdcc_program_startup
                                     68 ;--------------------------------------------------------
                                     69 ; Home
                                     70 ;--------------------------------------------------------
                                     71 	.area HOME
                                     72 	.area HOME
      008004                         73 __sdcc_program_startup:
      008004 CC 80 24         [ 2]   74 	jp	_main
                                     75 ;	return from main will return to caller
                                     76 ;--------------------------------------------------------
                                     77 ; code
                                     78 ;--------------------------------------------------------
                                     79 	.area CODE
                           000000    80 	Smain$main$0 ==.
                                     81 ;	./main.c: 8: int main(void)
                                     82 ; genLabel
                                     83 ;	-----------------------------------------
                                     84 ;	 function main
                                     85 ;	-----------------------------------------
                                     86 ;	Register assignment is optimal.
                                     87 ;	Stack space usage: 0 bytes.
      008024                         88 _main:
                           000000    89 	Smain$main$1 ==.
                           000000    90 	Smain$main$2 ==.
                                     91 ;	./main.c: 14: GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
                                     92 ; genIPush
      008024 4B E0            [ 1]   93 	push	#0xe0
                           000002    94 	Smain$main$3 ==.
                                     95 ; genIPush
      008026 4B 0E            [ 1]   96 	push	#0x0e
                           000004    97 	Smain$main$4 ==.
                                     98 ; genIPush
      008028 4B 00            [ 1]   99 	push	#0x00
                           000006   100 	Smain$main$5 ==.
      00802A 4B 50            [ 1]  101 	push	#0x50
                           000008   102 	Smain$main$6 ==.
                                    103 ; genCall
      00802C CD 80 69         [ 4]  104 	call	_GPIO_Init
      00802F 5B 04            [ 2]  105 	addw	sp, #4
                           00000D   106 	Smain$main$7 ==.
                           00000D   107 	Smain$main$8 ==.
                                    108 ;	./main.c: 16: while (1)
                                    109 ; genLabel
      008031                        110 00102$:
                           00000D   111 	Smain$main$9 ==.
                           00000D   112 	Smain$main$10 ==.
                                    113 ;	./main.c: 20: GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
                                    114 ; genIPush
      008031 4B 0E            [ 1]  115 	push	#0x0e
                           00000F   116 	Smain$main$11 ==.
                                    117 ; genIPush
      008033 4B 00            [ 1]  118 	push	#0x00
                           000011   119 	Smain$main$12 ==.
      008035 4B 50            [ 1]  120 	push	#0x50
                           000013   121 	Smain$main$13 ==.
                                    122 ; genCall
      008037 CD 81 0B         [ 4]  123 	call	_GPIO_WriteReverse
      00803A 5B 03            [ 2]  124 	addw	sp, #3
                           000018   125 	Smain$main$14 ==.
                           000018   126 	Smain$main$15 ==.
                                    127 ;	./main.c: 21: Delay(0xFFFF);
                                    128 ; genIPush
      00803C 4B FF            [ 1]  129 	push	#0xff
                           00001A   130 	Smain$main$16 ==.
      00803E 4B FF            [ 1]  131 	push	#0xff
                           00001C   132 	Smain$main$17 ==.
                                    133 ; genCall
      008040 CD 80 49         [ 4]  134 	call	_Delay
      008043 5B 02            [ 2]  135 	addw	sp, #2
                           000021   136 	Smain$main$18 ==.
                           000021   137 	Smain$main$19 ==.
                                    138 ; genGoto
      008045 CC 80 31         [ 2]  139 	jp	00102$
                                    140 ; genLabel
      008048                        141 00104$:
                           000024   142 	Smain$main$20 ==.
                                    143 ;	./main.c: 24: }
                                    144 ; genEndFunction
                           000024   145 	Smain$main$21 ==.
                           000024   146 	XG$main$0$0 ==.
      008048 81               [ 4]  147 	ret
                           000025   148 	Smain$main$22 ==.
                           000025   149 	Smain$Delay$23 ==.
                                    150 ;	./main.c: 26: void Delay(uint16_t nCount)
                                    151 ; genLabel
                                    152 ;	-----------------------------------------
                                    153 ;	 function Delay
                                    154 ;	-----------------------------------------
                                    155 ;	Register assignment is optimal.
                                    156 ;	Stack space usage: 0 bytes.
      008049                        157 _Delay:
                           000025   158 	Smain$Delay$24 ==.
                           000025   159 	Smain$Delay$25 ==.
                                    160 ;	./main.c: 29: while (nCount != 0)
                                    161 ; genAssign
      008049 1E 03            [ 2]  162 	ldw	x, (0x03, sp)
                                    163 ; genLabel
      00804B                        164 00101$:
                                    165 ; genIfx
      00804B 5D               [ 2]  166 	tnzw	x
      00804C 26 03            [ 1]  167 	jrne	00115$
      00804E CC 80 55         [ 2]  168 	jp	00104$
      008051                        169 00115$:
                           00002D   170 	Smain$Delay$26 ==.
                           00002D   171 	Smain$Delay$27 ==.
                                    172 ;	./main.c: 31: nCount--;
                                    173 ; genMinus
      008051 5A               [ 2]  174 	decw	x
                           00002E   175 	Smain$Delay$28 ==.
                                    176 ; genGoto
      008052 CC 80 4B         [ 2]  177 	jp	00101$
                                    178 ; genLabel
      008055                        179 00104$:
                           000031   180 	Smain$Delay$29 ==.
                                    181 ;	./main.c: 33: }
                                    182 ; genEndFunction
                           000031   183 	Smain$Delay$30 ==.
                           000031   184 	XG$Delay$0$0 ==.
      008055 81               [ 4]  185 	ret
                           000032   186 	Smain$Delay$31 ==.
                                    187 	.area CODE
                                    188 	.area INITIALIZER
                                    189 	.area CABS (ABS)
                                    190 
                                    191 	.area .debug_line (NOLOAD)
      000000 00 00 00 EA            192 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        193 Ldebug_line_start:
      000004 00 02                  194 	.dw	2
      000006 00 00 00 94            195 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     196 	.db	1
      00000B 01                     197 	.db	1
      00000C FB                     198 	.db	-5
      00000D 0F                     199 	.db	15
      00000E 0A                     200 	.db	10
      00000F 00                     201 	.db	0
      000010 01                     202 	.db	1
      000011 01                     203 	.db	1
      000012 01                     204 	.db	1
      000013 01                     205 	.db	1
      000014 00                     206 	.db	0
      000015 00                     207 	.db	0
      000016 00                     208 	.db	0
      000017 01                     209 	.db	1
      000018 2F 75 73 72 2F 62 69   210 	.ascii "/usr/bin/../share/sdcc/include/stm8"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      00003B 00                     211 	.db	0
      00003C 2F 75 73 72 2F 73 68   212 	.ascii "/usr/share/sdcc/include/stm8"
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000058 00                     213 	.db	0
      000059 2F 75 73 72 2F 62 69   214 	.ascii "/usr/bin/../share/sdcc/include"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000077 00                     215 	.db	0
      000078 2F 75 73 72 2F 73 68   216 	.ascii "/usr/share/sdcc/include"
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      00008F 00                     217 	.db	0
      000090 00                     218 	.db	0
      000091 2E 2F 6D 61 69 6E 2E   219 	.ascii "./main.c"
             63
      000099 00                     220 	.db	0
      00009A 00                     221 	.uleb128	0
      00009B 00                     222 	.uleb128	0
      00009C 00                     223 	.uleb128	0
      00009D 00                     224 	.db	0
      00009E                        225 Ldebug_line_stmt:
      00009E 00                     226 	.db	0
      00009F 05                     227 	.uleb128	5
      0000A0 02                     228 	.db	2
      0000A1 00 00 80 24            229 	.dw	0,(Smain$main$0)
      0000A5 03                     230 	.db	3
      0000A6 07                     231 	.sleb128	7
      0000A7 01                     232 	.db	1
      0000A8 09                     233 	.db	9
      0000A9 00 00                  234 	.dw	Smain$main$2-Smain$main$0
      0000AB 03                     235 	.db	3
      0000AC 06                     236 	.sleb128	6
      0000AD 01                     237 	.db	1
      0000AE 09                     238 	.db	9
      0000AF 00 0D                  239 	.dw	Smain$main$8-Smain$main$2
      0000B1 03                     240 	.db	3
      0000B2 02                     241 	.sleb128	2
      0000B3 01                     242 	.db	1
      0000B4 09                     243 	.db	9
      0000B5 00 00                  244 	.dw	Smain$main$10-Smain$main$8
      0000B7 03                     245 	.db	3
      0000B8 04                     246 	.sleb128	4
      0000B9 01                     247 	.db	1
      0000BA 09                     248 	.db	9
      0000BB 00 0B                  249 	.dw	Smain$main$15-Smain$main$10
      0000BD 03                     250 	.db	3
      0000BE 01                     251 	.sleb128	1
      0000BF 01                     252 	.db	1
      0000C0 09                     253 	.db	9
      0000C1 00 0C                  254 	.dw	Smain$main$20-Smain$main$15
      0000C3 03                     255 	.db	3
      0000C4 03                     256 	.sleb128	3
      0000C5 01                     257 	.db	1
      0000C6 09                     258 	.db	9
      0000C7 00 01                  259 	.dw	1+Smain$main$21-Smain$main$20
      0000C9 00                     260 	.db	0
      0000CA 01                     261 	.uleb128	1
      0000CB 01                     262 	.db	1
      0000CC 00                     263 	.db	0
      0000CD 05                     264 	.uleb128	5
      0000CE 02                     265 	.db	2
      0000CF 00 00 80 49            266 	.dw	0,(Smain$Delay$23)
      0000D3 03                     267 	.db	3
      0000D4 19                     268 	.sleb128	25
      0000D5 01                     269 	.db	1
      0000D6 09                     270 	.db	9
      0000D7 00 00                  271 	.dw	Smain$Delay$25-Smain$Delay$23
      0000D9 03                     272 	.db	3
      0000DA 03                     273 	.sleb128	3
      0000DB 01                     274 	.db	1
      0000DC 09                     275 	.db	9
      0000DD 00 08                  276 	.dw	Smain$Delay$27-Smain$Delay$25
      0000DF 03                     277 	.db	3
      0000E0 02                     278 	.sleb128	2
      0000E1 01                     279 	.db	1
      0000E2 09                     280 	.db	9
      0000E3 00 04                  281 	.dw	Smain$Delay$29-Smain$Delay$27
      0000E5 03                     282 	.db	3
      0000E6 02                     283 	.sleb128	2
      0000E7 01                     284 	.db	1
      0000E8 09                     285 	.db	9
      0000E9 00 01                  286 	.dw	1+Smain$Delay$30-Smain$Delay$29
      0000EB 00                     287 	.db	0
      0000EC 01                     288 	.uleb128	1
      0000ED 01                     289 	.db	1
      0000EE                        290 Ldebug_line_end:
                                    291 
                                    292 	.area .debug_loc (NOLOAD)
      000000                        293 Ldebug_loc_start:
      000000 00 00 80 49            294 	.dw	0,(Smain$Delay$24)
      000004 00 00 80 56            295 	.dw	0,(Smain$Delay$31)
      000008 00 02                  296 	.dw	2
      00000A 78                     297 	.db	120
      00000B 01                     298 	.sleb128	1
      00000C 00 00 00 00            299 	.dw	0,0
      000010 00 00 00 00            300 	.dw	0,0
      000014 00 00 80 45            301 	.dw	0,(Smain$main$18)
      000018 00 00 80 49            302 	.dw	0,(Smain$main$22)
      00001C 00 02                  303 	.dw	2
      00001E 78                     304 	.db	120
      00001F 01                     305 	.sleb128	1
      000020 00 00 80 40            306 	.dw	0,(Smain$main$17)
      000024 00 00 80 45            307 	.dw	0,(Smain$main$18)
      000028 00 02                  308 	.dw	2
      00002A 78                     309 	.db	120
      00002B 03                     310 	.sleb128	3
      00002C 00 00 80 3E            311 	.dw	0,(Smain$main$16)
      000030 00 00 80 40            312 	.dw	0,(Smain$main$17)
      000034 00 02                  313 	.dw	2
      000036 78                     314 	.db	120
      000037 02                     315 	.sleb128	2
      000038 00 00 80 3C            316 	.dw	0,(Smain$main$14)
      00003C 00 00 80 3E            317 	.dw	0,(Smain$main$16)
      000040 00 02                  318 	.dw	2
      000042 78                     319 	.db	120
      000043 01                     320 	.sleb128	1
      000044 00 00 80 37            321 	.dw	0,(Smain$main$13)
      000048 00 00 80 3C            322 	.dw	0,(Smain$main$14)
      00004C 00 02                  323 	.dw	2
      00004E 78                     324 	.db	120
      00004F 04                     325 	.sleb128	4
      000050 00 00 80 35            326 	.dw	0,(Smain$main$12)
      000054 00 00 80 37            327 	.dw	0,(Smain$main$13)
      000058 00 02                  328 	.dw	2
      00005A 78                     329 	.db	120
      00005B 03                     330 	.sleb128	3
      00005C 00 00 80 33            331 	.dw	0,(Smain$main$11)
      000060 00 00 80 35            332 	.dw	0,(Smain$main$12)
      000064 00 02                  333 	.dw	2
      000066 78                     334 	.db	120
      000067 02                     335 	.sleb128	2
      000068 00 00 80 31            336 	.dw	0,(Smain$main$7)
      00006C 00 00 80 33            337 	.dw	0,(Smain$main$11)
      000070 00 02                  338 	.dw	2
      000072 78                     339 	.db	120
      000073 01                     340 	.sleb128	1
      000074 00 00 80 2C            341 	.dw	0,(Smain$main$6)
      000078 00 00 80 31            342 	.dw	0,(Smain$main$7)
      00007C 00 02                  343 	.dw	2
      00007E 78                     344 	.db	120
      00007F 05                     345 	.sleb128	5
      000080 00 00 80 2A            346 	.dw	0,(Smain$main$5)
      000084 00 00 80 2C            347 	.dw	0,(Smain$main$6)
      000088 00 02                  348 	.dw	2
      00008A 78                     349 	.db	120
      00008B 04                     350 	.sleb128	4
      00008C 00 00 80 28            351 	.dw	0,(Smain$main$4)
      000090 00 00 80 2A            352 	.dw	0,(Smain$main$5)
      000094 00 02                  353 	.dw	2
      000096 78                     354 	.db	120
      000097 03                     355 	.sleb128	3
      000098 00 00 80 26            356 	.dw	0,(Smain$main$3)
      00009C 00 00 80 28            357 	.dw	0,(Smain$main$4)
      0000A0 00 02                  358 	.dw	2
      0000A2 78                     359 	.db	120
      0000A3 02                     360 	.sleb128	2
      0000A4 00 00 80 24            361 	.dw	0,(Smain$main$1)
      0000A8 00 00 80 26            362 	.dw	0,(Smain$main$3)
      0000AC 00 02                  363 	.dw	2
      0000AE 78                     364 	.db	120
      0000AF 01                     365 	.sleb128	1
      0000B0 00 00 00 00            366 	.dw	0,0
      0000B4 00 00 00 00            367 	.dw	0,0
                                    368 
                                    369 	.area .debug_abbrev (NOLOAD)
      000000                        370 Ldebug_abbrev:
      000000 07                     371 	.uleb128	7
      000001 05                     372 	.uleb128	5
      000002 00                     373 	.db	0
      000003 02                     374 	.uleb128	2
      000004 0A                     375 	.uleb128	10
      000005 03                     376 	.uleb128	3
      000006 08                     377 	.uleb128	8
      000007 49                     378 	.uleb128	73
      000008 13                     379 	.uleb128	19
      000009 00                     380 	.uleb128	0
      00000A 00                     381 	.uleb128	0
      00000B 06                     382 	.uleb128	6
      00000C 2E                     383 	.uleb128	46
      00000D 01                     384 	.db	1
      00000E 01                     385 	.uleb128	1
      00000F 13                     386 	.uleb128	19
      000010 03                     387 	.uleb128	3
      000011 08                     388 	.uleb128	8
      000012 11                     389 	.uleb128	17
      000013 01                     390 	.uleb128	1
      000014 12                     391 	.uleb128	18
      000015 01                     392 	.uleb128	1
      000016 3F                     393 	.uleb128	63
      000017 0C                     394 	.uleb128	12
      000018 40                     395 	.uleb128	64
      000019 06                     396 	.uleb128	6
      00001A 00                     397 	.uleb128	0
      00001B 00                     398 	.uleb128	0
      00001C 05                     399 	.uleb128	5
      00001D 34                     400 	.uleb128	52
      00001E 00                     401 	.db	0
      00001F 02                     402 	.uleb128	2
      000020 0A                     403 	.uleb128	10
      000021 03                     404 	.uleb128	3
      000022 08                     405 	.uleb128	8
      000023 49                     406 	.uleb128	73
      000024 13                     407 	.uleb128	19
      000025 00                     408 	.uleb128	0
      000026 00                     409 	.uleb128	0
      000027 03                     410 	.uleb128	3
      000028 2E                     411 	.uleb128	46
      000029 01                     412 	.db	1
      00002A 01                     413 	.uleb128	1
      00002B 13                     414 	.uleb128	19
      00002C 03                     415 	.uleb128	3
      00002D 08                     416 	.uleb128	8
      00002E 11                     417 	.uleb128	17
      00002F 01                     418 	.uleb128	1
      000030 12                     419 	.uleb128	18
      000031 01                     420 	.uleb128	1
      000032 3F                     421 	.uleb128	63
      000033 0C                     422 	.uleb128	12
      000034 40                     423 	.uleb128	64
      000035 06                     424 	.uleb128	6
      000036 49                     425 	.uleb128	73
      000037 13                     426 	.uleb128	19
      000038 00                     427 	.uleb128	0
      000039 00                     428 	.uleb128	0
      00003A 01                     429 	.uleb128	1
      00003B 11                     430 	.uleb128	17
      00003C 01                     431 	.db	1
      00003D 03                     432 	.uleb128	3
      00003E 08                     433 	.uleb128	8
      00003F 10                     434 	.uleb128	16
      000040 06                     435 	.uleb128	6
      000041 13                     436 	.uleb128	19
      000042 0B                     437 	.uleb128	11
      000043 25                     438 	.uleb128	37
      000044 08                     439 	.uleb128	8
      000045 00                     440 	.uleb128	0
      000046 00                     441 	.uleb128	0
      000047 04                     442 	.uleb128	4
      000048 0B                     443 	.uleb128	11
      000049 00                     444 	.db	0
      00004A 11                     445 	.uleb128	17
      00004B 01                     446 	.uleb128	1
      00004C 12                     447 	.uleb128	18
      00004D 01                     448 	.uleb128	1
      00004E 00                     449 	.uleb128	0
      00004F 00                     450 	.uleb128	0
      000050 02                     451 	.uleb128	2
      000051 24                     452 	.uleb128	36
      000052 00                     453 	.db	0
      000053 03                     454 	.uleb128	3
      000054 08                     455 	.uleb128	8
      000055 0B                     456 	.uleb128	11
      000056 0B                     457 	.uleb128	11
      000057 3E                     458 	.uleb128	62
      000058 0B                     459 	.uleb128	11
      000059 00                     460 	.uleb128	0
      00005A 00                     461 	.uleb128	0
      00005B 00                     462 	.uleb128	0
                                    463 
                                    464 	.area .debug_info (NOLOAD)
      000000 00 00 00 CA            465 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                        466 Ldebug_info_start:
      000004 00 02                  467 	.dw	2
      000006 00 00 00 00            468 	.dw	0,(Ldebug_abbrev)
      00000A 04                     469 	.db	4
      00000B 01                     470 	.uleb128	1
      00000C 2E 2F 6D 61 69 6E 2E   471 	.ascii "./main.c"
             63
      000014 00                     472 	.db	0
      000015 00 00 00 00            473 	.dw	0,(Ldebug_line_start+-4)
      000019 01                     474 	.db	1
      00001A 53 44 43 43 20 76 65   475 	.ascii "SDCC version 3.7.0 #10231"
             72 73 69 6F 6E 20 33
             2E 37 2E 30 20 23 31
             30 32 33 31
      000033 00                     476 	.db	0
      000034 02                     477 	.uleb128	2
      000035 69 6E 74               478 	.ascii "int"
      000038 00                     479 	.db	0
      000039 02                     480 	.db	2
      00003A 05                     481 	.db	5
      00003B 03                     482 	.uleb128	3
      00003C 00 00 00 79            483 	.dw	0,121
      000040 6D 61 69 6E            484 	.ascii "main"
      000044 00                     485 	.db	0
      000045 00 00 80 24            486 	.dw	0,(_main)
      000049 00 00 80 49            487 	.dw	0,(XG$main$0$0+1)
      00004D 01                     488 	.db	1
      00004E 00 00 00 14            489 	.dw	0,(Ldebug_loc_start+20)
      000052 00 00 00 34            490 	.dw	0,52
      000056 04                     491 	.uleb128	4
      000057 00 00 80 31            492 	.dw	0,(Smain$main$9)
      00005B 00 00 80 45            493 	.dw	0,(Smain$main$19)
      00005F 05                     494 	.uleb128	5
      000060 02                     495 	.db	2
      000061 91                     496 	.db	145
      000062 00                     497 	.sleb128	0
      000063 69 5F 76 61 72         498 	.ascii "i_var"
      000068 00                     499 	.db	0
      000069 00 00 00 79            500 	.dw	0,121
      00006D 05                     501 	.uleb128	5
      00006E 02                     502 	.db	2
      00006F 91                     503 	.db	145
      000070 00                     504 	.sleb128	0
      000071 69 6F                  505 	.ascii "io"
      000073 00                     506 	.db	0
      000074 00 00 00 79            507 	.dw	0,121
      000078 00                     508 	.uleb128	0
      000079 02                     509 	.uleb128	2
      00007A 75 6E 73 69 67 6E 65   510 	.ascii "unsigned char"
             64 20 63 68 61 72
      000087 00                     511 	.db	0
      000088 01                     512 	.db	1
      000089 08                     513 	.db	8
      00008A 06                     514 	.uleb128	6
      00008B 00 00 00 BB            515 	.dw	0,187
      00008F 44 65 6C 61 79         516 	.ascii "Delay"
      000094 00                     517 	.db	0
      000095 00 00 80 49            518 	.dw	0,(_Delay)
      000099 00 00 80 56            519 	.dw	0,(XG$Delay$0$0+1)
      00009D 01                     520 	.db	1
      00009E 00 00 00 00            521 	.dw	0,(Ldebug_loc_start)
      0000A2 07                     522 	.uleb128	7
      0000A3 02                     523 	.db	2
      0000A4 91                     524 	.db	145
      0000A5 02                     525 	.sleb128	2
      0000A6 6E 43 6F 75 6E 74      526 	.ascii "nCount"
      0000AC 00                     527 	.db	0
      0000AD 00 00 00 BB            528 	.dw	0,187
      0000B1 04                     529 	.uleb128	4
      0000B2 00 00 80 51            530 	.dw	0,(Smain$Delay$26)
      0000B6 00 00 80 52            531 	.dw	0,(Smain$Delay$28)
      0000BA 00                     532 	.uleb128	0
      0000BB 02                     533 	.uleb128	2
      0000BC 75 6E 73 69 67 6E 65   534 	.ascii "unsigned int"
             64 20 69 6E 74
      0000C8 00                     535 	.db	0
      0000C9 02                     536 	.db	2
      0000CA 07                     537 	.db	7
      0000CB 00                     538 	.uleb128	0
      0000CC 00                     539 	.uleb128	0
      0000CD 00                     540 	.uleb128	0
      0000CE                        541 Ldebug_info_end:
                                    542 
                                    543 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 21            544 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                        545 Ldebug_pubnames_start:
      000004 00 02                  546 	.dw	2
      000006 00 00 00 00            547 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 00 CE            548 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 00 3B            549 	.dw	0,59
      000012 6D 61 69 6E            550 	.ascii "main"
      000016 00                     551 	.db	0
      000017 00 00 00 8A            552 	.dw	0,138
      00001B 44 65 6C 61 79         553 	.ascii "Delay"
      000020 00                     554 	.db	0
      000021 00 00 00 00            555 	.dw	0,0
      000025                        556 Ldebug_pubnames_end:
                                    557 
                                    558 	.area .debug_frame (NOLOAD)
      000000 00 00                  559 	.dw	0
      000002 00 0E                  560 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                        561 Ldebug_CIE0_start:
      000004 FF FF                  562 	.dw	0xffff
      000006 FF FF                  563 	.dw	0xffff
      000008 01                     564 	.db	1
      000009 00                     565 	.db	0
      00000A 01                     566 	.uleb128	1
      00000B 7F                     567 	.sleb128	-1
      00000C 09                     568 	.db	9
      00000D 0C                     569 	.db	12
      00000E 08                     570 	.uleb128	8
      00000F 02                     571 	.uleb128	2
      000010 89                     572 	.db	137
      000011 01                     573 	.uleb128	1
      000012                        574 Ldebug_CIE0_end:
      000012 00 00 00 13            575 	.dw	0,19
      000016 00 00 00 00            576 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 80 49            577 	.dw	0,(Smain$Delay$24)	;initial loc
      00001E 00 00 00 0D            578 	.dw	0,Smain$Delay$31-Smain$Delay$24
      000022 01                     579 	.db	1
      000023 00 00 80 49            580 	.dw	0,(Smain$Delay$24)
      000027 0E                     581 	.db	14
      000028 02                     582 	.uleb128	2
                                    583 
                                    584 	.area .debug_frame (NOLOAD)
      000029 00 00                  585 	.dw	0
      00002B 00 0E                  586 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00002D                        587 Ldebug_CIE1_start:
      00002D FF FF                  588 	.dw	0xffff
      00002F FF FF                  589 	.dw	0xffff
      000031 01                     590 	.db	1
      000032 00                     591 	.db	0
      000033 01                     592 	.uleb128	1
      000034 7F                     593 	.sleb128	-1
      000035 09                     594 	.db	9
      000036 0C                     595 	.db	12
      000037 08                     596 	.uleb128	8
      000038 02                     597 	.uleb128	2
      000039 89                     598 	.db	137
      00003A 01                     599 	.uleb128	1
      00003B                        600 Ldebug_CIE1_end:
      00003B 00 00 00 67            601 	.dw	0,103
      00003F 00 00 00 29            602 	.dw	0,(Ldebug_CIE1_start-4)
      000043 00 00 80 24            603 	.dw	0,(Smain$main$1)	;initial loc
      000047 00 00 00 25            604 	.dw	0,Smain$main$22-Smain$main$1
      00004B 01                     605 	.db	1
      00004C 00 00 80 24            606 	.dw	0,(Smain$main$1)
      000050 0E                     607 	.db	14
      000051 02                     608 	.uleb128	2
      000052 01                     609 	.db	1
      000053 00 00 80 26            610 	.dw	0,(Smain$main$3)
      000057 0E                     611 	.db	14
      000058 03                     612 	.uleb128	3
      000059 01                     613 	.db	1
      00005A 00 00 80 28            614 	.dw	0,(Smain$main$4)
      00005E 0E                     615 	.db	14
      00005F 04                     616 	.uleb128	4
      000060 01                     617 	.db	1
      000061 00 00 80 2A            618 	.dw	0,(Smain$main$5)
      000065 0E                     619 	.db	14
      000066 05                     620 	.uleb128	5
      000067 01                     621 	.db	1
      000068 00 00 80 2C            622 	.dw	0,(Smain$main$6)
      00006C 0E                     623 	.db	14
      00006D 06                     624 	.uleb128	6
      00006E 01                     625 	.db	1
      00006F 00 00 80 31            626 	.dw	0,(Smain$main$7)
      000073 0E                     627 	.db	14
      000074 02                     628 	.uleb128	2
      000075 01                     629 	.db	1
      000076 00 00 80 33            630 	.dw	0,(Smain$main$11)
      00007A 0E                     631 	.db	14
      00007B 03                     632 	.uleb128	3
      00007C 01                     633 	.db	1
      00007D 00 00 80 35            634 	.dw	0,(Smain$main$12)
      000081 0E                     635 	.db	14
      000082 04                     636 	.uleb128	4
      000083 01                     637 	.db	1
      000084 00 00 80 37            638 	.dw	0,(Smain$main$13)
      000088 0E                     639 	.db	14
      000089 05                     640 	.uleb128	5
      00008A 01                     641 	.db	1
      00008B 00 00 80 3C            642 	.dw	0,(Smain$main$14)
      00008F 0E                     643 	.db	14
      000090 02                     644 	.uleb128	2
      000091 01                     645 	.db	1
      000092 00 00 80 3E            646 	.dw	0,(Smain$main$16)
      000096 0E                     647 	.db	14
      000097 03                     648 	.uleb128	3
      000098 01                     649 	.db	1
      000099 00 00 80 40            650 	.dw	0,(Smain$main$17)
      00009D 0E                     651 	.db	14
      00009E 04                     652 	.uleb128	4
      00009F 01                     653 	.db	1
      0000A0 00 00 80 45            654 	.dw	0,(Smain$main$18)
      0000A4 0E                     655 	.db	14
      0000A5 02                     656 	.uleb128	2
