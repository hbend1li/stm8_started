                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.7.0 #10231 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 ;--------------------------------------------------------
                                     34 ; global & static initialisations
                                     35 ;--------------------------------------------------------
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area GSINIT
                                     40 ;--------------------------------------------------------
                                     41 ; Home
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area HOME
                                     45 ;--------------------------------------------------------
                                     46 ; code
                                     47 ;--------------------------------------------------------
                                     48 	.area CODE
                           000000    49 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     50 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     51 ; genLabel
                                     52 ;	-----------------------------------------
                                     53 ;	 function GPIO_DeInit
                                     54 ;	-----------------------------------------
                                     55 ;	Register assignment might be sub-optimal.
                                     56 ;	Stack space usage: 0 bytes.
      008056                         57 _GPIO_DeInit:
                           000000    58 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    59 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     60 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     61 ; genAssign
      008056 16 03            [ 2]   62 	ldw	y, (0x03, sp)
                                     63 ; genPointerSet
      008058 90 7F            [ 1]   64 	clr	(y)
                           000004    65 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     66 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     67 ; genPlus
      00805A 93               [ 1]   68 	ldw	x, y
      00805B 5C               [ 1]   69 	incw	x
      00805C 5C               [ 1]   70 	incw	x
                                     71 ; genPointerSet
      00805D 7F               [ 1]   72 	clr	(x)
                           000008    73 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     74 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     75 ; genPlus
      00805E 93               [ 1]   76 	ldw	x, y
      00805F 1C 00 03         [ 2]   77 	addw	x, #0x0003
                                     78 ; genPointerSet
      008062 7F               [ 1]   79 	clr	(x)
                           00000D    80 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     81 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     82 ; genPlus
      008063 93               [ 1]   83 	ldw	x, y
      008064 1C 00 04         [ 2]   84 	addw	x, #0x0004
                                     85 ; genPointerSet
      008067 7F               [ 1]   86 	clr	(x)
                                     87 ; genLabel
      008068                         88 00101$:
                           000012    89 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                     90 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
                                     91 ; genEndFunction
                           000012    92 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012    93 	XG$GPIO_DeInit$0$0 ==.
      008068 81               [ 4]   94 	ret
                           000013    95 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013    96 	Sstm8s_gpio$GPIO_Init$9 ==.
                                     97 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     98 ; genLabel
                                     99 ;	-----------------------------------------
                                    100 ;	 function GPIO_Init
                                    101 ;	-----------------------------------------
                                    102 ;	Register assignment might be sub-optimal.
                                    103 ;	Stack space usage: 5 bytes.
      008069                        104 _GPIO_Init:
                           000013   105 	Sstm8s_gpio$GPIO_Init$10 ==.
      008069 52 05            [ 2]  106 	sub	sp, #5
                           000015   107 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   108 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    109 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    110 ; genAssign
      00806B 16 08            [ 2]  111 	ldw	y, (0x08, sp)
                                    112 ; genPlus
      00806D 93               [ 1]  113 	ldw	x, y
      00806E 1C 00 04         [ 2]  114 	addw	x, #0x0004
      008071 1F 04            [ 2]  115 	ldw	(0x04, sp), x
                                    116 ; genPointerGet
      008073 1E 04            [ 2]  117 	ldw	x, (0x04, sp)
      008075 F6               [ 1]  118 	ld	a, (x)
                                    119 ; genCpl
      008076 88               [ 1]  120 	push	a
                           000021   121 	Sstm8s_gpio$GPIO_Init$13 ==.
      008077 7B 0B            [ 1]  122 	ld	a, (0x0b, sp)
      008079 43               [ 1]  123 	cpl	a
      00807A 6B 04            [ 1]  124 	ld	(0x04, sp), a
      00807C 84               [ 1]  125 	pop	a
                           000027   126 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    127 ; genAnd
      00807D 14 03            [ 1]  128 	and	a, (0x03, sp)
                                    129 ; genPointerSet
      00807F 1E 04            [ 2]  130 	ldw	x, (0x04, sp)
      008081 F7               [ 1]  131 	ld	(x), a
                           00002C   132 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    133 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    134 ; genPlus
      008082 93               [ 1]  135 	ldw	x, y
      008083 5C               [ 1]  136 	incw	x
      008084 5C               [ 1]  137 	incw	x
      008085 1F 01            [ 2]  138 	ldw	(0x01, sp), x
                           000031   139 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    140 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    141 ; genAnd
      008087 0D 0B            [ 1]  142 	tnz	(0x0b, sp)
      008089 2B 03            [ 1]  143 	jrmi	00131$
      00808B CC 80 B1         [ 2]  144 	jp	00105$
      00808E                        145 00131$:
                                    146 ; skipping generated iCode
                           000038   147 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    148 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    149 ; genPointerGet
      00808E 90 F6            [ 1]  150 	ld	a, (y)
                           00003A   151 	Sstm8s_gpio$GPIO_Init$18 ==.
                           00003A   152 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    153 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    154 ; genAnd
      008090 88               [ 1]  155 	push	a
                           00003B   156 	Sstm8s_gpio$GPIO_Init$20 ==.
      008091 7B 0C            [ 1]  157 	ld	a, (0x0c, sp)
      008093 A5 10            [ 1]  158 	bcp	a, #0x10
      008095 84               [ 1]  159 	pop	a
                           000040   160 	Sstm8s_gpio$GPIO_Init$21 ==.
      008096 26 03            [ 1]  161 	jrne	00132$
      008098 CC 80 A2         [ 2]  162 	jp	00102$
      00809B                        163 00132$:
                                    164 ; skipping generated iCode
                           000045   165 	Sstm8s_gpio$GPIO_Init$22 ==.
                           000045   166 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    167 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    168 ; genOr
      00809B 1A 0A            [ 1]  169 	or	a, (0x0a, sp)
                                    170 ; genPointerSet
      00809D 90 F7            [ 1]  171 	ld	(y), a
                           000049   172 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    173 ; genGoto
      00809F CC 80 A6         [ 2]  174 	jp	00103$
                                    175 ; genLabel
      0080A2                        176 00102$:
                           00004C   177 	Sstm8s_gpio$GPIO_Init$25 ==.
                           00004C   178 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    179 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    180 ; genAnd
      0080A2 14 03            [ 1]  181 	and	a, (0x03, sp)
                                    182 ; genPointerSet
      0080A4 90 F7            [ 1]  183 	ld	(y), a
                           000050   184 	Sstm8s_gpio$GPIO_Init$27 ==.
                                    185 ; genLabel
      0080A6                        186 00103$:
                           000050   187 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    188 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    189 ; genPointerGet
      0080A6 1E 01            [ 2]  190 	ldw	x, (0x01, sp)
      0080A8 F6               [ 1]  191 	ld	a, (x)
                                    192 ; genOr
      0080A9 1A 0A            [ 1]  193 	or	a, (0x0a, sp)
                                    194 ; genPointerSet
      0080AB 1E 01            [ 2]  195 	ldw	x, (0x01, sp)
      0080AD F7               [ 1]  196 	ld	(x), a
                           000058   197 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    198 ; genGoto
      0080AE CC 80 B9         [ 2]  199 	jp	00106$
                                    200 ; genLabel
      0080B1                        201 00105$:
                           00005B   202 	Sstm8s_gpio$GPIO_Init$30 ==.
                           00005B   203 	Sstm8s_gpio$GPIO_Init$31 ==.
                                    204 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    205 ; genPointerGet
      0080B1 1E 01            [ 2]  206 	ldw	x, (0x01, sp)
      0080B3 F6               [ 1]  207 	ld	a, (x)
                                    208 ; genAnd
      0080B4 14 03            [ 1]  209 	and	a, (0x03, sp)
                                    210 ; genPointerSet
      0080B6 1E 01            [ 2]  211 	ldw	x, (0x01, sp)
      0080B8 F7               [ 1]  212 	ld	(x), a
                           000063   213 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    214 ; genLabel
      0080B9                        215 00106$:
                           000063   216 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    217 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    218 ; genPlus
      0080B9 93               [ 1]  219 	ldw	x, y
      0080BA 1C 00 03         [ 2]  220 	addw	x, #0x0003
                                    221 ; genPointerGet
      0080BD F6               [ 1]  222 	ld	a, (x)
                           000068   223 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    224 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    225 ; genAnd
      0080BE 88               [ 1]  226 	push	a
                           000069   227 	Sstm8s_gpio$GPIO_Init$35 ==.
      0080BF 7B 0C            [ 1]  228 	ld	a, (0x0c, sp)
      0080C1 A5 40            [ 1]  229 	bcp	a, #0x40
      0080C3 84               [ 1]  230 	pop	a
                           00006E   231 	Sstm8s_gpio$GPIO_Init$36 ==.
      0080C4 26 03            [ 1]  232 	jrne	00133$
      0080C6 CC 80 CF         [ 2]  233 	jp	00108$
      0080C9                        234 00133$:
                                    235 ; skipping generated iCode
                           000073   236 	Sstm8s_gpio$GPIO_Init$37 ==.
                           000073   237 	Sstm8s_gpio$GPIO_Init$38 ==.
                                    238 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    239 ; genOr
      0080C9 1A 0A            [ 1]  240 	or	a, (0x0a, sp)
                                    241 ; genPointerSet
      0080CB F7               [ 1]  242 	ld	(x), a
                           000076   243 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    244 ; genGoto
      0080CC CC 80 D2         [ 2]  245 	jp	00109$
                                    246 ; genLabel
      0080CF                        247 00108$:
                           000079   248 	Sstm8s_gpio$GPIO_Init$40 ==.
                           000079   249 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    250 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    251 ; genAnd
      0080CF 14 03            [ 1]  252 	and	a, (0x03, sp)
                                    253 ; genPointerSet
      0080D1 F7               [ 1]  254 	ld	(x), a
                           00007C   255 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    256 ; genLabel
      0080D2                        257 00109$:
                           00007C   258 	Sstm8s_gpio$GPIO_Init$43 ==.
                                    259 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    260 ; genPointerGet
      0080D2 1E 04            [ 2]  261 	ldw	x, (0x04, sp)
      0080D4 F6               [ 1]  262 	ld	a, (x)
                           00007F   263 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    264 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    265 ; genAnd
      0080D5 88               [ 1]  266 	push	a
                           000080   267 	Sstm8s_gpio$GPIO_Init$45 ==.
      0080D6 7B 0C            [ 1]  268 	ld	a, (0x0c, sp)
      0080D8 A5 20            [ 1]  269 	bcp	a, #0x20
      0080DA 84               [ 1]  270 	pop	a
                           000085   271 	Sstm8s_gpio$GPIO_Init$46 ==.
      0080DB 26 03            [ 1]  272 	jrne	00134$
      0080DD CC 80 E8         [ 2]  273 	jp	00111$
      0080E0                        274 00134$:
                                    275 ; skipping generated iCode
                           00008A   276 	Sstm8s_gpio$GPIO_Init$47 ==.
                           00008A   277 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    278 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    279 ; genOr
      0080E0 1A 0A            [ 1]  280 	or	a, (0x0a, sp)
                                    281 ; genPointerSet
      0080E2 1E 04            [ 2]  282 	ldw	x, (0x04, sp)
      0080E4 F7               [ 1]  283 	ld	(x), a
                           00008F   284 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    285 ; genGoto
      0080E5 CC 80 ED         [ 2]  286 	jp	00113$
                                    287 ; genLabel
      0080E8                        288 00111$:
                           000092   289 	Sstm8s_gpio$GPIO_Init$50 ==.
                           000092   290 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    291 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    292 ; genAnd
      0080E8 14 03            [ 1]  293 	and	a, (0x03, sp)
                                    294 ; genPointerSet
      0080EA 1E 04            [ 2]  295 	ldw	x, (0x04, sp)
      0080EC F7               [ 1]  296 	ld	(x), a
                           000097   297 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    298 ; genLabel
      0080ED                        299 00113$:
                           000097   300 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    301 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
                                    302 ; genEndFunction
      0080ED 5B 05            [ 2]  303 	addw	sp, #5
                           000099   304 	Sstm8s_gpio$GPIO_Init$54 ==.
                           000099   305 	Sstm8s_gpio$GPIO_Init$55 ==.
                           000099   306 	XG$GPIO_Init$0$0 ==.
      0080EF 81               [ 4]  307 	ret
                           00009A   308 	Sstm8s_gpio$GPIO_Init$56 ==.
                           00009A   309 	Sstm8s_gpio$GPIO_Write$57 ==.
                                    310 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    311 ; genLabel
                                    312 ;	-----------------------------------------
                                    313 ;	 function GPIO_Write
                                    314 ;	-----------------------------------------
                                    315 ;	Register assignment is optimal.
                                    316 ;	Stack space usage: 0 bytes.
      0080F0                        317 _GPIO_Write:
                           00009A   318 	Sstm8s_gpio$GPIO_Write$58 ==.
                           00009A   319 	Sstm8s_gpio$GPIO_Write$59 ==.
                                    320 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    321 ; genAssign
      0080F0 1E 03            [ 2]  322 	ldw	x, (0x03, sp)
                                    323 ; genPointerSet
      0080F2 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      0080F4 F7               [ 1]  325 	ld	(x), a
                                    326 ; genLabel
      0080F5                        327 00101$:
                           00009F   328 	Sstm8s_gpio$GPIO_Write$60 ==.
                                    329 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
                                    330 ; genEndFunction
                           00009F   331 	Sstm8s_gpio$GPIO_Write$61 ==.
                           00009F   332 	XG$GPIO_Write$0$0 ==.
      0080F5 81               [ 4]  333 	ret
                           0000A0   334 	Sstm8s_gpio$GPIO_Write$62 ==.
                           0000A0   335 	Sstm8s_gpio$GPIO_WriteHigh$63 ==.
                                    336 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    337 ; genLabel
                                    338 ;	-----------------------------------------
                                    339 ;	 function GPIO_WriteHigh
                                    340 ;	-----------------------------------------
                                    341 ;	Register assignment is optimal.
                                    342 ;	Stack space usage: 0 bytes.
      0080F6                        343 _GPIO_WriteHigh:
                           0000A0   344 	Sstm8s_gpio$GPIO_WriteHigh$64 ==.
                           0000A0   345 	Sstm8s_gpio$GPIO_WriteHigh$65 ==.
                                    346 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    347 ; genAssign
      0080F6 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
                                    349 ; genPointerGet
      0080F8 F6               [ 1]  350 	ld	a, (x)
                                    351 ; genOr
      0080F9 1A 05            [ 1]  352 	or	a, (0x05, sp)
                                    353 ; genPointerSet
      0080FB F7               [ 1]  354 	ld	(x), a
                                    355 ; genLabel
      0080FC                        356 00101$:
                           0000A6   357 	Sstm8s_gpio$GPIO_WriteHigh$66 ==.
                                    358 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
                                    359 ; genEndFunction
                           0000A6   360 	Sstm8s_gpio$GPIO_WriteHigh$67 ==.
                           0000A6   361 	XG$GPIO_WriteHigh$0$0 ==.
      0080FC 81               [ 4]  362 	ret
                           0000A7   363 	Sstm8s_gpio$GPIO_WriteHigh$68 ==.
                           0000A7   364 	Sstm8s_gpio$GPIO_WriteLow$69 ==.
                                    365 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    366 ; genLabel
                                    367 ;	-----------------------------------------
                                    368 ;	 function GPIO_WriteLow
                                    369 ;	-----------------------------------------
                                    370 ;	Register assignment is optimal.
                                    371 ;	Stack space usage: 1 bytes.
      0080FD                        372 _GPIO_WriteLow:
                           0000A7   373 	Sstm8s_gpio$GPIO_WriteLow$70 ==.
      0080FD 88               [ 1]  374 	push	a
                           0000A8   375 	Sstm8s_gpio$GPIO_WriteLow$71 ==.
                           0000A8   376 	Sstm8s_gpio$GPIO_WriteLow$72 ==.
                                    377 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    378 ; genAssign
      0080FE 1E 04            [ 2]  379 	ldw	x, (0x04, sp)
                                    380 ; genPointerGet
      008100 F6               [ 1]  381 	ld	a, (x)
      008101 6B 01            [ 1]  382 	ld	(0x01, sp), a
                                    383 ; genCpl
      008103 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      008105 43               [ 1]  385 	cpl	a
                                    386 ; genAnd
      008106 14 01            [ 1]  387 	and	a, (0x01, sp)
                                    388 ; genPointerSet
      008108 F7               [ 1]  389 	ld	(x), a
                                    390 ; genLabel
      008109                        391 00101$:
                           0000B3   392 	Sstm8s_gpio$GPIO_WriteLow$73 ==.
                                    393 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
                                    394 ; genEndFunction
      008109 84               [ 1]  395 	pop	a
                           0000B4   396 	Sstm8s_gpio$GPIO_WriteLow$74 ==.
                           0000B4   397 	Sstm8s_gpio$GPIO_WriteLow$75 ==.
                           0000B4   398 	XG$GPIO_WriteLow$0$0 ==.
      00810A 81               [ 4]  399 	ret
                           0000B5   400 	Sstm8s_gpio$GPIO_WriteLow$76 ==.
                           0000B5   401 	Sstm8s_gpio$GPIO_WriteReverse$77 ==.
                                    402 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    403 ; genLabel
                                    404 ;	-----------------------------------------
                                    405 ;	 function GPIO_WriteReverse
                                    406 ;	-----------------------------------------
                                    407 ;	Register assignment is optimal.
                                    408 ;	Stack space usage: 0 bytes.
      00810B                        409 _GPIO_WriteReverse:
                           0000B5   410 	Sstm8s_gpio$GPIO_WriteReverse$78 ==.
                           0000B5   411 	Sstm8s_gpio$GPIO_WriteReverse$79 ==.
                                    412 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    413 ; genAssign
      00810B 1E 03            [ 2]  414 	ldw	x, (0x03, sp)
                                    415 ; genPointerGet
      00810D F6               [ 1]  416 	ld	a, (x)
                                    417 ; genXor
      00810E 18 05            [ 1]  418 	xor	a, (0x05, sp)
                                    419 ; genPointerSet
      008110 F7               [ 1]  420 	ld	(x), a
                                    421 ; genLabel
      008111                        422 00101$:
                           0000BB   423 	Sstm8s_gpio$GPIO_WriteReverse$80 ==.
                                    424 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
                                    425 ; genEndFunction
                           0000BB   426 	Sstm8s_gpio$GPIO_WriteReverse$81 ==.
                           0000BB   427 	XG$GPIO_WriteReverse$0$0 ==.
      008111 81               [ 4]  428 	ret
                           0000BC   429 	Sstm8s_gpio$GPIO_WriteReverse$82 ==.
                           0000BC   430 	Sstm8s_gpio$GPIO_ReadOutputData$83 ==.
                                    431 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    432 ; genLabel
                                    433 ;	-----------------------------------------
                                    434 ;	 function GPIO_ReadOutputData
                                    435 ;	-----------------------------------------
                                    436 ;	Register assignment is optimal.
                                    437 ;	Stack space usage: 0 bytes.
      008112                        438 _GPIO_ReadOutputData:
                           0000BC   439 	Sstm8s_gpio$GPIO_ReadOutputData$84 ==.
                           0000BC   440 	Sstm8s_gpio$GPIO_ReadOutputData$85 ==.
                                    441 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    442 ; genAssign
      008112 1E 03            [ 2]  443 	ldw	x, (0x03, sp)
                                    444 ; genPointerGet
      008114 F6               [ 1]  445 	ld	a, (x)
                                    446 ; genReturn
                                    447 ; genLabel
      008115                        448 00101$:
                           0000BF   449 	Sstm8s_gpio$GPIO_ReadOutputData$86 ==.
                                    450 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
                                    451 ; genEndFunction
                           0000BF   452 	Sstm8s_gpio$GPIO_ReadOutputData$87 ==.
                           0000BF   453 	XG$GPIO_ReadOutputData$0$0 ==.
      008115 81               [ 4]  454 	ret
                           0000C0   455 	Sstm8s_gpio$GPIO_ReadOutputData$88 ==.
                           0000C0   456 	Sstm8s_gpio$GPIO_ReadInputData$89 ==.
                                    457 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    458 ; genLabel
                                    459 ;	-----------------------------------------
                                    460 ;	 function GPIO_ReadInputData
                                    461 ;	-----------------------------------------
                                    462 ;	Register assignment might be sub-optimal.
                                    463 ;	Stack space usage: 0 bytes.
      008116                        464 _GPIO_ReadInputData:
                           0000C0   465 	Sstm8s_gpio$GPIO_ReadInputData$90 ==.
                           0000C0   466 	Sstm8s_gpio$GPIO_ReadInputData$91 ==.
                                    467 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    468 ; genAssign
      008116 1E 03            [ 2]  469 	ldw	x, (0x03, sp)
                                    470 ; genAssign
                                    471 ; genPointerGet
      008118 E6 01            [ 1]  472 	ld	a, (0x1, x)
                                    473 ; genReturn
                                    474 ; genLabel
      00811A                        475 00101$:
                           0000C4   476 	Sstm8s_gpio$GPIO_ReadInputData$92 ==.
                                    477 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
                                    478 ; genEndFunction
                           0000C4   479 	Sstm8s_gpio$GPIO_ReadInputData$93 ==.
                           0000C4   480 	XG$GPIO_ReadInputData$0$0 ==.
      00811A 81               [ 4]  481 	ret
                           0000C5   482 	Sstm8s_gpio$GPIO_ReadInputData$94 ==.
                           0000C5   483 	Sstm8s_gpio$GPIO_ReadInputPin$95 ==.
                                    484 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    485 ; genLabel
                                    486 ;	-----------------------------------------
                                    487 ;	 function GPIO_ReadInputPin
                                    488 ;	-----------------------------------------
                                    489 ;	Register assignment might be sub-optimal.
                                    490 ;	Stack space usage: 0 bytes.
      00811B                        491 _GPIO_ReadInputPin:
                           0000C5   492 	Sstm8s_gpio$GPIO_ReadInputPin$96 ==.
                           0000C5   493 	Sstm8s_gpio$GPIO_ReadInputPin$97 ==.
                                    494 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    495 ; genAssign
      00811B 1E 03            [ 2]  496 	ldw	x, (0x03, sp)
                                    497 ; genAssign
                                    498 ; genPointerGet
      00811D E6 01            [ 1]  499 	ld	a, (0x1, x)
                                    500 ; genAnd
      00811F 14 05            [ 1]  501 	and	a, (0x05, sp)
                                    502 ; genReturn
                                    503 ; genLabel
      008121                        504 00101$:
                           0000CB   505 	Sstm8s_gpio$GPIO_ReadInputPin$98 ==.
                                    506 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
                                    507 ; genEndFunction
                           0000CB   508 	Sstm8s_gpio$GPIO_ReadInputPin$99 ==.
                           0000CB   509 	XG$GPIO_ReadInputPin$0$0 ==.
      008121 81               [ 4]  510 	ret
                           0000CC   511 	Sstm8s_gpio$GPIO_ReadInputPin$100 ==.
                           0000CC   512 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$101 ==.
                                    513 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    514 ; genLabel
                                    515 ;	-----------------------------------------
                                    516 ;	 function GPIO_ExternalPullUpConfig
                                    517 ;	-----------------------------------------
                                    518 ;	Register assignment might be sub-optimal.
                                    519 ;	Stack space usage: 1 bytes.
      008122                        520 _GPIO_ExternalPullUpConfig:
                           0000CC   521 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$102 ==.
      008122 88               [ 1]  522 	push	a
                           0000CD   523 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$103 ==.
                           0000CD   524 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104 ==.
                                    525 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    526 ; genAssign
      008123 1E 04            [ 2]  527 	ldw	x, (0x04, sp)
                                    528 ; genPlus
      008125 1C 00 03         [ 2]  529 	addw	x, #0x0003
                                    530 ; genPointerGet
      008128 F6               [ 1]  531 	ld	a, (x)
                           0000D3   532 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105 ==.
                                    533 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    534 ; genIfx
      008129 0D 07            [ 1]  535 	tnz	(0x07, sp)
      00812B 26 03            [ 1]  536 	jrne	00110$
      00812D CC 81 36         [ 2]  537 	jp	00102$
      008130                        538 00110$:
                           0000DA   539 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$106 ==.
                           0000DA   540 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107 ==.
                                    541 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    542 ; genOr
      008130 1A 06            [ 1]  543 	or	a, (0x06, sp)
                                    544 ; genPointerSet
      008132 F7               [ 1]  545 	ld	(x), a
                           0000DD   546 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$108 ==.
                                    547 ; genGoto
      008133 CC 81 40         [ 2]  548 	jp	00104$
                                    549 ; genLabel
      008136                        550 00102$:
                           0000E0   551 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$109 ==.
                           0000E0   552 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110 ==.
                                    553 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    554 ; genCpl
      008136 88               [ 1]  555 	push	a
                           0000E1   556 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$111 ==.
      008137 7B 07            [ 1]  557 	ld	a, (0x07, sp)
      008139 43               [ 1]  558 	cpl	a
      00813A 6B 02            [ 1]  559 	ld	(0x02, sp), a
      00813C 84               [ 1]  560 	pop	a
                           0000E7   561 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$112 ==.
                                    562 ; genAnd
      00813D 14 01            [ 1]  563 	and	a, (0x01, sp)
                                    564 ; genPointerSet
      00813F F7               [ 1]  565 	ld	(x), a
                           0000EA   566 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$113 ==.
                                    567 ; genLabel
      008140                        568 00104$:
                           0000EA   569 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114 ==.
                                    570 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
                                    571 ; genEndFunction
      008140 84               [ 1]  572 	pop	a
                           0000EB   573 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$115 ==.
                           0000EB   574 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$116 ==.
                           0000EB   575 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008141 81               [ 4]  576 	ret
                           0000EC   577 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$117 ==.
                                    578 	.area CODE
                                    579 	.area INITIALIZER
                                    580 	.area CABS (ABS)
                                    581 
                                    582 	.area .debug_line (NOLOAD)
      0000EE 00 00 02 60            583 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0000F2                        584 Ldebug_line_start:
      0000F2 00 02                  585 	.dw	2
      0000F4 00 00 00 B5            586 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0000F8 01                     587 	.db	1
      0000F9 01                     588 	.db	1
      0000FA FB                     589 	.db	-5
      0000FB 0F                     590 	.db	15
      0000FC 0A                     591 	.db	10
      0000FD 00                     592 	.db	0
      0000FE 01                     593 	.db	1
      0000FF 01                     594 	.db	1
      000100 01                     595 	.db	1
      000101 01                     596 	.db	1
      000102 00                     597 	.db	0
      000103 00                     598 	.db	0
      000104 00                     599 	.db	0
      000105 01                     600 	.db	1
      000106 2F 75 73 72 2F 62 69   601 	.ascii "/usr/bin/../share/sdcc/include/stm8"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000129 00                     602 	.db	0
      00012A 2F 75 73 72 2F 73 68   603 	.ascii "/usr/share/sdcc/include/stm8"
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000146 00                     604 	.db	0
      000147 2F 75 73 72 2F 62 69   605 	.ascii "/usr/bin/../share/sdcc/include"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000165 00                     606 	.db	0
      000166 2F 75 73 72 2F 73 68   607 	.ascii "/usr/share/sdcc/include"
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      00017D 00                     608 	.db	0
      00017E 00                     609 	.db	0
      00017F 2E 2F 53 54 4D 38 53   610 	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             5F 53 74 64 50 65 72
             69 70 68 5F 44 72 69
             76 65 72 2F 73 72 63
             2F 73 74 6D 38 73 5F
             67 70 69 6F 2E 63
      0001A8 00                     611 	.db	0
      0001A9 00                     612 	.uleb128	0
      0001AA 00                     613 	.uleb128	0
      0001AB 00                     614 	.uleb128	0
      0001AC 00                     615 	.db	0
      0001AD                        616 Ldebug_line_stmt:
      0001AD 00                     617 	.db	0
      0001AE 05                     618 	.uleb128	5
      0001AF 02                     619 	.db	2
      0001B0 00 00 80 56            620 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      0001B4 03                     621 	.db	3
      0001B5 34                     622 	.sleb128	52
      0001B6 01                     623 	.db	1
      0001B7 09                     624 	.db	9
      0001B8 00 00                  625 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      0001BA 03                     626 	.db	3
      0001BB 02                     627 	.sleb128	2
      0001BC 01                     628 	.db	1
      0001BD 09                     629 	.db	9
      0001BE 00 04                  630 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      0001C0 03                     631 	.db	3
      0001C1 01                     632 	.sleb128	1
      0001C2 01                     633 	.db	1
      0001C3 09                     634 	.db	9
      0001C4 00 04                  635 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      0001C6 03                     636 	.db	3
      0001C7 01                     637 	.sleb128	1
      0001C8 01                     638 	.db	1
      0001C9 09                     639 	.db	9
      0001CA 00 05                  640 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      0001CC 03                     641 	.db	3
      0001CD 01                     642 	.sleb128	1
      0001CE 01                     643 	.db	1
      0001CF 09                     644 	.db	9
      0001D0 00 05                  645 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      0001D2 03                     646 	.db	3
      0001D3 01                     647 	.sleb128	1
      0001D4 01                     648 	.db	1
      0001D5 09                     649 	.db	9
      0001D6 00 01                  650 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      0001D8 00                     651 	.db	0
      0001D9 01                     652 	.uleb128	1
      0001DA 01                     653 	.db	1
      0001DB 00                     654 	.db	0
      0001DC 05                     655 	.uleb128	5
      0001DD 02                     656 	.db	2
      0001DE 00 00 80 69            657 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      0001E2 03                     658 	.db	3
      0001E3 C6 00                  659 	.sleb128	70
      0001E5 01                     660 	.db	1
      0001E6 09                     661 	.db	9
      0001E7 00 02                  662 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      0001E9 03                     663 	.db	3
      0001EA 0A                     664 	.sleb128	10
      0001EB 01                     665 	.db	1
      0001EC 09                     666 	.db	9
      0001ED 00 17                  667 	.dw	Sstm8s_gpio$GPIO_Init$15-Sstm8s_gpio$GPIO_Init$12
      0001EF 03                     668 	.db	3
      0001F0 11                     669 	.sleb128	17
      0001F1 01                     670 	.db	1
      0001F2 09                     671 	.db	9
      0001F3 00 05                  672 	.dw	Sstm8s_gpio$GPIO_Init$16-Sstm8s_gpio$GPIO_Init$15
      0001F5 03                     673 	.db	3
      0001F6 75                     674 	.sleb128	-11
      0001F7 01                     675 	.db	1
      0001F8 09                     676 	.db	9
      0001F9 00 07                  677 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$16
      0001FB 03                     678 	.db	3
      0001FC 04                     679 	.sleb128	4
      0001FD 01                     680 	.db	1
      0001FE 09                     681 	.db	9
      0001FF 00 02                  682 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      000201 03                     683 	.db	3
      000202 7E                     684 	.sleb128	-2
      000203 01                     685 	.db	1
      000204 09                     686 	.db	9
      000205 00 0B                  687 	.dw	Sstm8s_gpio$GPIO_Init$23-Sstm8s_gpio$GPIO_Init$19
      000207 03                     688 	.db	3
      000208 02                     689 	.sleb128	2
      000209 01                     690 	.db	1
      00020A 09                     691 	.db	9
      00020B 00 07                  692 	.dw	Sstm8s_gpio$GPIO_Init$26-Sstm8s_gpio$GPIO_Init$23
      00020D 03                     693 	.db	3
      00020E 04                     694 	.sleb128	4
      00020F 01                     695 	.db	1
      000210 09                     696 	.db	9
      000211 00 04                  697 	.dw	Sstm8s_gpio$GPIO_Init$28-Sstm8s_gpio$GPIO_Init$26
      000213 03                     698 	.db	3
      000214 03                     699 	.sleb128	3
      000215 01                     700 	.db	1
      000216 09                     701 	.db	9
      000217 00 0B                  702 	.dw	Sstm8s_gpio$GPIO_Init$31-Sstm8s_gpio$GPIO_Init$28
      000219 03                     703 	.db	3
      00021A 05                     704 	.sleb128	5
      00021B 01                     705 	.db	1
      00021C 09                     706 	.db	9
      00021D 00 08                  707 	.dw	Sstm8s_gpio$GPIO_Init$33-Sstm8s_gpio$GPIO_Init$31
      00021F 03                     708 	.db	3
      000220 09                     709 	.sleb128	9
      000221 01                     710 	.db	1
      000222 09                     711 	.db	9
      000223 00 05                  712 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$33
      000225 03                     713 	.db	3
      000226 7E                     714 	.sleb128	-2
      000227 01                     715 	.db	1
      000228 09                     716 	.db	9
      000229 00 0B                  717 	.dw	Sstm8s_gpio$GPIO_Init$38-Sstm8s_gpio$GPIO_Init$34
      00022B 03                     718 	.db	3
      00022C 02                     719 	.sleb128	2
      00022D 01                     720 	.db	1
      00022E 09                     721 	.db	9
      00022F 00 06                  722 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$38
      000231 03                     723 	.db	3
      000232 04                     724 	.sleb128	4
      000233 01                     725 	.db	1
      000234 09                     726 	.db	9
      000235 00 03                  727 	.dw	Sstm8s_gpio$GPIO_Init$43-Sstm8s_gpio$GPIO_Init$41
      000237 03                     728 	.db	3
      000238 5D                     729 	.sleb128	-35
      000239 01                     730 	.db	1
      00023A 09                     731 	.db	9
      00023B 00 03                  732 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$43
      00023D 03                     733 	.db	3
      00023E 2A                     734 	.sleb128	42
      00023F 01                     735 	.db	1
      000240 09                     736 	.db	9
      000241 00 0B                  737 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      000243 03                     738 	.db	3
      000244 02                     739 	.sleb128	2
      000245 01                     740 	.db	1
      000246 09                     741 	.db	9
      000247 00 08                  742 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      000249 03                     743 	.db	3
      00024A 04                     744 	.sleb128	4
      00024B 01                     745 	.db	1
      00024C 09                     746 	.db	9
      00024D 00 05                  747 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      00024F 03                     748 	.db	3
      000250 02                     749 	.sleb128	2
      000251 01                     750 	.db	1
      000252 09                     751 	.db	9
      000253 00 03                  752 	.dw	1+Sstm8s_gpio$GPIO_Init$55-Sstm8s_gpio$GPIO_Init$53
      000255 00                     753 	.db	0
      000256 01                     754 	.uleb128	1
      000257 01                     755 	.db	1
      000258 00                     756 	.db	0
      000259 05                     757 	.uleb128	5
      00025A 02                     758 	.db	2
      00025B 00 00 80 F0            759 	.dw	0,(Sstm8s_gpio$GPIO_Write$57)
      00025F 03                     760 	.db	3
      000260 8C 01                  761 	.sleb128	140
      000262 01                     762 	.db	1
      000263 09                     763 	.db	9
      000264 00 00                  764 	.dw	Sstm8s_gpio$GPIO_Write$59-Sstm8s_gpio$GPIO_Write$57
      000266 03                     765 	.db	3
      000267 02                     766 	.sleb128	2
      000268 01                     767 	.db	1
      000269 09                     768 	.db	9
      00026A 00 05                  769 	.dw	Sstm8s_gpio$GPIO_Write$60-Sstm8s_gpio$GPIO_Write$59
      00026C 03                     770 	.db	3
      00026D 01                     771 	.sleb128	1
      00026E 01                     772 	.db	1
      00026F 09                     773 	.db	9
      000270 00 01                  774 	.dw	1+Sstm8s_gpio$GPIO_Write$61-Sstm8s_gpio$GPIO_Write$60
      000272 00                     775 	.db	0
      000273 01                     776 	.uleb128	1
      000274 01                     777 	.db	1
      000275 00                     778 	.db	0
      000276 05                     779 	.uleb128	5
      000277 02                     780 	.db	2
      000278 00 00 80 F6            781 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$63)
      00027C 03                     782 	.db	3
      00027D 99 01                  783 	.sleb128	153
      00027F 01                     784 	.db	1
      000280 09                     785 	.db	9
      000281 00 00                  786 	.dw	Sstm8s_gpio$GPIO_WriteHigh$65-Sstm8s_gpio$GPIO_WriteHigh$63
      000283 03                     787 	.db	3
      000284 02                     788 	.sleb128	2
      000285 01                     789 	.db	1
      000286 09                     790 	.db	9
      000287 00 06                  791 	.dw	Sstm8s_gpio$GPIO_WriteHigh$66-Sstm8s_gpio$GPIO_WriteHigh$65
      000289 03                     792 	.db	3
      00028A 01                     793 	.sleb128	1
      00028B 01                     794 	.db	1
      00028C 09                     795 	.db	9
      00028D 00 01                  796 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$67-Sstm8s_gpio$GPIO_WriteHigh$66
      00028F 00                     797 	.db	0
      000290 01                     798 	.uleb128	1
      000291 01                     799 	.db	1
      000292 00                     800 	.db	0
      000293 05                     801 	.uleb128	5
      000294 02                     802 	.db	2
      000295 00 00 80 FD            803 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$69)
      000299 03                     804 	.db	3
      00029A A6 01                  805 	.sleb128	166
      00029C 01                     806 	.db	1
      00029D 09                     807 	.db	9
      00029E 00 01                  808 	.dw	Sstm8s_gpio$GPIO_WriteLow$72-Sstm8s_gpio$GPIO_WriteLow$69
      0002A0 03                     809 	.db	3
      0002A1 02                     810 	.sleb128	2
      0002A2 01                     811 	.db	1
      0002A3 09                     812 	.db	9
      0002A4 00 0B                  813 	.dw	Sstm8s_gpio$GPIO_WriteLow$73-Sstm8s_gpio$GPIO_WriteLow$72
      0002A6 03                     814 	.db	3
      0002A7 01                     815 	.sleb128	1
      0002A8 01                     816 	.db	1
      0002A9 09                     817 	.db	9
      0002AA 00 02                  818 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$75-Sstm8s_gpio$GPIO_WriteLow$73
      0002AC 00                     819 	.db	0
      0002AD 01                     820 	.uleb128	1
      0002AE 01                     821 	.db	1
      0002AF 00                     822 	.db	0
      0002B0 05                     823 	.uleb128	5
      0002B1 02                     824 	.db	2
      0002B2 00 00 81 0B            825 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$77)
      0002B6 03                     826 	.db	3
      0002B7 B3 01                  827 	.sleb128	179
      0002B9 01                     828 	.db	1
      0002BA 09                     829 	.db	9
      0002BB 00 00                  830 	.dw	Sstm8s_gpio$GPIO_WriteReverse$79-Sstm8s_gpio$GPIO_WriteReverse$77
      0002BD 03                     831 	.db	3
      0002BE 02                     832 	.sleb128	2
      0002BF 01                     833 	.db	1
      0002C0 09                     834 	.db	9
      0002C1 00 06                  835 	.dw	Sstm8s_gpio$GPIO_WriteReverse$80-Sstm8s_gpio$GPIO_WriteReverse$79
      0002C3 03                     836 	.db	3
      0002C4 01                     837 	.sleb128	1
      0002C5 01                     838 	.db	1
      0002C6 09                     839 	.db	9
      0002C7 00 01                  840 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$81-Sstm8s_gpio$GPIO_WriteReverse$80
      0002C9 00                     841 	.db	0
      0002CA 01                     842 	.uleb128	1
      0002CB 01                     843 	.db	1
      0002CC 00                     844 	.db	0
      0002CD 05                     845 	.uleb128	5
      0002CE 02                     846 	.db	2
      0002CF 00 00 81 12            847 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$83)
      0002D3 03                     848 	.db	3
      0002D4 BE 01                  849 	.sleb128	190
      0002D6 01                     850 	.db	1
      0002D7 09                     851 	.db	9
      0002D8 00 00                  852 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$85-Sstm8s_gpio$GPIO_ReadOutputData$83
      0002DA 03                     853 	.db	3
      0002DB 02                     854 	.sleb128	2
      0002DC 01                     855 	.db	1
      0002DD 09                     856 	.db	9
      0002DE 00 03                  857 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$86-Sstm8s_gpio$GPIO_ReadOutputData$85
      0002E0 03                     858 	.db	3
      0002E1 01                     859 	.sleb128	1
      0002E2 01                     860 	.db	1
      0002E3 09                     861 	.db	9
      0002E4 00 01                  862 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$87-Sstm8s_gpio$GPIO_ReadOutputData$86
      0002E6 00                     863 	.db	0
      0002E7 01                     864 	.uleb128	1
      0002E8 01                     865 	.db	1
      0002E9 00                     866 	.db	0
      0002EA 05                     867 	.uleb128	5
      0002EB 02                     868 	.db	2
      0002EC 00 00 81 16            869 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$89)
      0002F0 03                     870 	.db	3
      0002F1 C9 01                  871 	.sleb128	201
      0002F3 01                     872 	.db	1
      0002F4 09                     873 	.db	9
      0002F5 00 00                  874 	.dw	Sstm8s_gpio$GPIO_ReadInputData$91-Sstm8s_gpio$GPIO_ReadInputData$89
      0002F7 03                     875 	.db	3
      0002F8 02                     876 	.sleb128	2
      0002F9 01                     877 	.db	1
      0002FA 09                     878 	.db	9
      0002FB 00 04                  879 	.dw	Sstm8s_gpio$GPIO_ReadInputData$92-Sstm8s_gpio$GPIO_ReadInputData$91
      0002FD 03                     880 	.db	3
      0002FE 01                     881 	.sleb128	1
      0002FF 01                     882 	.db	1
      000300 09                     883 	.db	9
      000301 00 01                  884 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$93-Sstm8s_gpio$GPIO_ReadInputData$92
      000303 00                     885 	.db	0
      000304 01                     886 	.uleb128	1
      000305 01                     887 	.db	1
      000306 00                     888 	.db	0
      000307 05                     889 	.uleb128	5
      000308 02                     890 	.db	2
      000309 00 00 81 1B            891 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$95)
      00030D 03                     892 	.db	3
      00030E D4 01                  893 	.sleb128	212
      000310 01                     894 	.db	1
      000311 09                     895 	.db	9
      000312 00 00                  896 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$97-Sstm8s_gpio$GPIO_ReadInputPin$95
      000314 03                     897 	.db	3
      000315 02                     898 	.sleb128	2
      000316 01                     899 	.db	1
      000317 09                     900 	.db	9
      000318 00 06                  901 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$98-Sstm8s_gpio$GPIO_ReadInputPin$97
      00031A 03                     902 	.db	3
      00031B 01                     903 	.sleb128	1
      00031C 01                     904 	.db	1
      00031D 09                     905 	.db	9
      00031E 00 01                  906 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$99-Sstm8s_gpio$GPIO_ReadInputPin$98
      000320 00                     907 	.db	0
      000321 01                     908 	.uleb128	1
      000322 01                     909 	.db	1
      000323 00                     910 	.db	0
      000324 05                     911 	.uleb128	5
      000325 02                     912 	.db	2
      000326 00 00 81 22            913 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$101)
      00032A 03                     914 	.db	3
      00032B E0 01                  915 	.sleb128	224
      00032D 01                     916 	.db	1
      00032E 09                     917 	.db	9
      00032F 00 01                  918 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104-Sstm8s_gpio$GPIO_ExternalPullUpConfig$101
      000331 03                     919 	.db	3
      000332 08                     920 	.sleb128	8
      000333 01                     921 	.db	1
      000334 09                     922 	.db	9
      000335 00 06                  923 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105-Sstm8s_gpio$GPIO_ExternalPullUpConfig$104
      000337 03                     924 	.db	3
      000338 7E                     925 	.sleb128	-2
      000339 01                     926 	.db	1
      00033A 09                     927 	.db	9
      00033B 00 07                  928 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107-Sstm8s_gpio$GPIO_ExternalPullUpConfig$105
      00033D 03                     929 	.db	3
      00033E 02                     930 	.sleb128	2
      00033F 01                     931 	.db	1
      000340 09                     932 	.db	9
      000341 00 06                  933 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110-Sstm8s_gpio$GPIO_ExternalPullUpConfig$107
      000343 03                     934 	.db	3
      000344 03                     935 	.sleb128	3
      000345 01                     936 	.db	1
      000346 09                     937 	.db	9
      000347 00 0A                  938 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114-Sstm8s_gpio$GPIO_ExternalPullUpConfig$110
      000349 03                     939 	.db	3
      00034A 02                     940 	.sleb128	2
      00034B 01                     941 	.db	1
      00034C 09                     942 	.db	9
      00034D 00 02                  943 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$116-Sstm8s_gpio$GPIO_ExternalPullUpConfig$114
      00034F 00                     944 	.db	0
      000350 01                     945 	.uleb128	1
      000351 01                     946 	.db	1
      000352                        947 Ldebug_line_end:
                                    948 
                                    949 	.area .debug_loc (NOLOAD)
      0000B8                        950 Ldebug_loc_start:
      0000B8 00 00 81 41            951 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      0000BC 00 00 81 42            952 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$117)
      0000C0 00 02                  953 	.dw	2
      0000C2 78                     954 	.db	120
      0000C3 01                     955 	.sleb128	1
      0000C4 00 00 81 3D            956 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      0000C8 00 00 81 41            957 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      0000CC 00 02                  958 	.dw	2
      0000CE 78                     959 	.db	120
      0000CF 02                     960 	.sleb128	2
      0000D0 00 00 81 37            961 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      0000D4 00 00 81 3D            962 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      0000D8 00 02                  963 	.dw	2
      0000DA 78                     964 	.db	120
      0000DB 03                     965 	.sleb128	3
      0000DC 00 00 81 23            966 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      0000E0 00 00 81 37            967 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      0000E4 00 02                  968 	.dw	2
      0000E6 78                     969 	.db	120
      0000E7 02                     970 	.sleb128	2
      0000E8 00 00 81 22            971 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      0000EC 00 00 81 23            972 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      0000F0 00 02                  973 	.dw	2
      0000F2 78                     974 	.db	120
      0000F3 01                     975 	.sleb128	1
      0000F4 00 00 00 00            976 	.dw	0,0
      0000F8 00 00 00 00            977 	.dw	0,0
      0000FC 00 00 81 1B            978 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      000100 00 00 81 22            979 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$100)
      000104 00 02                  980 	.dw	2
      000106 78                     981 	.db	120
      000107 01                     982 	.sleb128	1
      000108 00 00 00 00            983 	.dw	0,0
      00010C 00 00 00 00            984 	.dw	0,0
      000110 00 00 81 16            985 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      000114 00 00 81 1B            986 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$94)
      000118 00 02                  987 	.dw	2
      00011A 78                     988 	.db	120
      00011B 01                     989 	.sleb128	1
      00011C 00 00 00 00            990 	.dw	0,0
      000120 00 00 00 00            991 	.dw	0,0
      000124 00 00 81 12            992 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      000128 00 00 81 16            993 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$88)
      00012C 00 02                  994 	.dw	2
      00012E 78                     995 	.db	120
      00012F 01                     996 	.sleb128	1
      000130 00 00 00 00            997 	.dw	0,0
      000134 00 00 00 00            998 	.dw	0,0
      000138 00 00 81 0B            999 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      00013C 00 00 81 12           1000 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$82)
      000140 00 02                 1001 	.dw	2
      000142 78                    1002 	.db	120
      000143 01                    1003 	.sleb128	1
      000144 00 00 00 00           1004 	.dw	0,0
      000148 00 00 00 00           1005 	.dw	0,0
      00014C 00 00 81 0A           1006 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      000150 00 00 81 0B           1007 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$76)
      000154 00 02                 1008 	.dw	2
      000156 78                    1009 	.db	120
      000157 01                    1010 	.sleb128	1
      000158 00 00 80 FE           1011 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      00015C 00 00 81 0A           1012 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      000160 00 02                 1013 	.dw	2
      000162 78                    1014 	.db	120
      000163 02                    1015 	.sleb128	2
      000164 00 00 80 FD           1016 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      000168 00 00 80 FE           1017 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      00016C 00 02                 1018 	.dw	2
      00016E 78                    1019 	.db	120
      00016F 01                    1020 	.sleb128	1
      000170 00 00 00 00           1021 	.dw	0,0
      000174 00 00 00 00           1022 	.dw	0,0
      000178 00 00 80 F6           1023 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      00017C 00 00 80 FD           1024 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$68)
      000180 00 02                 1025 	.dw	2
      000182 78                    1026 	.db	120
      000183 01                    1027 	.sleb128	1
      000184 00 00 00 00           1028 	.dw	0,0
      000188 00 00 00 00           1029 	.dw	0,0
      00018C 00 00 80 F0           1030 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      000190 00 00 80 F6           1031 	.dw	0,(Sstm8s_gpio$GPIO_Write$62)
      000194 00 02                 1032 	.dw	2
      000196 78                    1033 	.db	120
      000197 01                    1034 	.sleb128	1
      000198 00 00 00 00           1035 	.dw	0,0
      00019C 00 00 00 00           1036 	.dw	0,0
      0001A0 00 00 80 EF           1037 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      0001A4 00 00 80 F0           1038 	.dw	0,(Sstm8s_gpio$GPIO_Init$56)
      0001A8 00 02                 1039 	.dw	2
      0001AA 78                    1040 	.db	120
      0001AB 01                    1041 	.sleb128	1
      0001AC 00 00 80 DB           1042 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0001B0 00 00 80 EF           1043 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      0001B4 00 02                 1044 	.dw	2
      0001B6 78                    1045 	.db	120
      0001B7 06                    1046 	.sleb128	6
      0001B8 00 00 80 D6           1047 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0001BC 00 00 80 DB           1048 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0001C0 00 02                 1049 	.dw	2
      0001C2 78                    1050 	.db	120
      0001C3 07                    1051 	.sleb128	7
      0001C4 00 00 80 C4           1052 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0001C8 00 00 80 D6           1053 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0001CC 00 02                 1054 	.dw	2
      0001CE 78                    1055 	.db	120
      0001CF 06                    1056 	.sleb128	6
      0001D0 00 00 80 BF           1057 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      0001D4 00 00 80 C4           1058 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0001D8 00 02                 1059 	.dw	2
      0001DA 78                    1060 	.db	120
      0001DB 07                    1061 	.sleb128	7
      0001DC 00 00 80 96           1062 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      0001E0 00 00 80 BF           1063 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      0001E4 00 02                 1064 	.dw	2
      0001E6 78                    1065 	.db	120
      0001E7 06                    1066 	.sleb128	6
      0001E8 00 00 80 91           1067 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      0001EC 00 00 80 96           1068 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      0001F0 00 02                 1069 	.dw	2
      0001F2 78                    1070 	.db	120
      0001F3 07                    1071 	.sleb128	7
      0001F4 00 00 80 7D           1072 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      0001F8 00 00 80 91           1073 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      0001FC 00 02                 1074 	.dw	2
      0001FE 78                    1075 	.db	120
      0001FF 06                    1076 	.sleb128	6
      000200 00 00 80 77           1077 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000204 00 00 80 7D           1078 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      000208 00 02                 1079 	.dw	2
      00020A 78                    1080 	.db	120
      00020B 07                    1081 	.sleb128	7
      00020C 00 00 80 6B           1082 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000210 00 00 80 77           1083 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000214 00 02                 1084 	.dw	2
      000216 78                    1085 	.db	120
      000217 06                    1086 	.sleb128	6
      000218 00 00 80 69           1087 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      00021C 00 00 80 6B           1088 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000220 00 02                 1089 	.dw	2
      000222 78                    1090 	.db	120
      000223 01                    1091 	.sleb128	1
      000224 00 00 00 00           1092 	.dw	0,0
      000228 00 00 00 00           1093 	.dw	0,0
      00022C 00 00 80 56           1094 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      000230 00 00 80 69           1095 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      000234 00 02                 1096 	.dw	2
      000236 78                    1097 	.db	120
      000237 01                    1098 	.sleb128	1
      000238 00 00 00 00           1099 	.dw	0,0
      00023C 00 00 00 00           1100 	.dw	0,0
                                   1101 
                                   1102 	.area .debug_abbrev (NOLOAD)
      00005C                       1103 Ldebug_abbrev:
      00005C 06                    1104 	.uleb128	6
      00005D 0F                    1105 	.uleb128	15
      00005E 00                    1106 	.db	0
      00005F 0B                    1107 	.uleb128	11
      000060 0B                    1108 	.uleb128	11
      000061 49                    1109 	.uleb128	73
      000062 13                    1110 	.uleb128	19
      000063 00                    1111 	.uleb128	0
      000064 00                    1112 	.uleb128	0
      000065 04                    1113 	.uleb128	4
      000066 35                    1114 	.uleb128	53
      000067 00                    1115 	.db	0
      000068 49                    1116 	.uleb128	73
      000069 13                    1117 	.uleb128	19
      00006A 00                    1118 	.uleb128	0
      00006B 00                    1119 	.uleb128	0
      00006C 07                    1120 	.uleb128	7
      00006D 05                    1121 	.uleb128	5
      00006E 00                    1122 	.db	0
      00006F 02                    1123 	.uleb128	2
      000070 0A                    1124 	.uleb128	10
      000071 03                    1125 	.uleb128	3
      000072 08                    1126 	.uleb128	8
      000073 49                    1127 	.uleb128	73
      000074 13                    1128 	.uleb128	19
      000075 00                    1129 	.uleb128	0
      000076 00                    1130 	.uleb128	0
      000077 02                    1131 	.uleb128	2
      000078 2E                    1132 	.uleb128	46
      000079 01                    1133 	.db	1
      00007A 01                    1134 	.uleb128	1
      00007B 13                    1135 	.uleb128	19
      00007C 03                    1136 	.uleb128	3
      00007D 08                    1137 	.uleb128	8
      00007E 11                    1138 	.uleb128	17
      00007F 01                    1139 	.uleb128	1
      000080 12                    1140 	.uleb128	18
      000081 01                    1141 	.uleb128	1
      000082 3F                    1142 	.uleb128	63
      000083 0C                    1143 	.uleb128	12
      000084 40                    1144 	.uleb128	64
      000085 06                    1145 	.uleb128	6
      000086 00                    1146 	.uleb128	0
      000087 00                    1147 	.uleb128	0
      000088 0B                    1148 	.uleb128	11
      000089 2E                    1149 	.uleb128	46
      00008A 01                    1150 	.db	1
      00008B 01                    1151 	.uleb128	1
      00008C 13                    1152 	.uleb128	19
      00008D 03                    1153 	.uleb128	3
      00008E 08                    1154 	.uleb128	8
      00008F 11                    1155 	.uleb128	17
      000090 01                    1156 	.uleb128	1
      000091 12                    1157 	.uleb128	18
      000092 01                    1158 	.uleb128	1
      000093 3F                    1159 	.uleb128	63
      000094 0C                    1160 	.uleb128	12
      000095 40                    1161 	.uleb128	64
      000096 06                    1162 	.uleb128	6
      000097 49                    1163 	.uleb128	73
      000098 13                    1164 	.uleb128	19
      000099 00                    1165 	.uleb128	0
      00009A 00                    1166 	.uleb128	0
      00009B 01                    1167 	.uleb128	1
      00009C 11                    1168 	.uleb128	17
      00009D 01                    1169 	.db	1
      00009E 03                    1170 	.uleb128	3
      00009F 08                    1171 	.uleb128	8
      0000A0 10                    1172 	.uleb128	16
      0000A1 06                    1173 	.uleb128	6
      0000A2 13                    1174 	.uleb128	19
      0000A3 0B                    1175 	.uleb128	11
      0000A4 25                    1176 	.uleb128	37
      0000A5 08                    1177 	.uleb128	8
      0000A6 00                    1178 	.uleb128	0
      0000A7 00                    1179 	.uleb128	0
      0000A8 05                    1180 	.uleb128	5
      0000A9 0D                    1181 	.uleb128	13
      0000AA 00                    1182 	.db	0
      0000AB 03                    1183 	.uleb128	3
      0000AC 08                    1184 	.uleb128	8
      0000AD 38                    1185 	.uleb128	56
      0000AE 0A                    1186 	.uleb128	10
      0000AF 49                    1187 	.uleb128	73
      0000B0 13                    1188 	.uleb128	19
      0000B1 00                    1189 	.uleb128	0
      0000B2 00                    1190 	.uleb128	0
      0000B3 0A                    1191 	.uleb128	10
      0000B4 0B                    1192 	.uleb128	11
      0000B5 00                    1193 	.db	0
      0000B6 11                    1194 	.uleb128	17
      0000B7 01                    1195 	.uleb128	1
      0000B8 12                    1196 	.uleb128	18
      0000B9 01                    1197 	.uleb128	1
      0000BA 00                    1198 	.uleb128	0
      0000BB 00                    1199 	.uleb128	0
      0000BC 0C                    1200 	.uleb128	12
      0000BD 2E                    1201 	.uleb128	46
      0000BE 01                    1202 	.db	1
      0000BF 03                    1203 	.uleb128	3
      0000C0 08                    1204 	.uleb128	8
      0000C1 11                    1205 	.uleb128	17
      0000C2 01                    1206 	.uleb128	1
      0000C3 12                    1207 	.uleb128	18
      0000C4 01                    1208 	.uleb128	1
      0000C5 3F                    1209 	.uleb128	63
      0000C6 0C                    1210 	.uleb128	12
      0000C7 40                    1211 	.uleb128	64
      0000C8 06                    1212 	.uleb128	6
      0000C9 00                    1213 	.uleb128	0
      0000CA 00                    1214 	.uleb128	0
      0000CB 09                    1215 	.uleb128	9
      0000CC 0B                    1216 	.uleb128	11
      0000CD 01                    1217 	.db	1
      0000CE 01                    1218 	.uleb128	1
      0000CF 13                    1219 	.uleb128	19
      0000D0 11                    1220 	.uleb128	17
      0000D1 01                    1221 	.uleb128	1
      0000D2 12                    1222 	.uleb128	18
      0000D3 01                    1223 	.uleb128	1
      0000D4 00                    1224 	.uleb128	0
      0000D5 00                    1225 	.uleb128	0
      0000D6 03                    1226 	.uleb128	3
      0000D7 13                    1227 	.uleb128	19
      0000D8 01                    1228 	.db	1
      0000D9 01                    1229 	.uleb128	1
      0000DA 13                    1230 	.uleb128	19
      0000DB 03                    1231 	.uleb128	3
      0000DC 08                    1232 	.uleb128	8
      0000DD 0B                    1233 	.uleb128	11
      0000DE 0B                    1234 	.uleb128	11
      0000DF 00                    1235 	.uleb128	0
      0000E0 00                    1236 	.uleb128	0
      0000E1 08                    1237 	.uleb128	8
      0000E2 24                    1238 	.uleb128	36
      0000E3 00                    1239 	.db	0
      0000E4 03                    1240 	.uleb128	3
      0000E5 08                    1241 	.uleb128	8
      0000E6 0B                    1242 	.uleb128	11
      0000E7 0B                    1243 	.uleb128	11
      0000E8 3E                    1244 	.uleb128	62
      0000E9 0B                    1245 	.uleb128	11
      0000EA 00                    1246 	.uleb128	0
      0000EB 00                    1247 	.uleb128	0
      0000EC 00                    1248 	.uleb128	0
                                   1249 
                                   1250 	.area .debug_info (NOLOAD)
      0000CE 00 00 03 BD           1251 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0000D2                       1252 Ldebug_info_start:
      0000D2 00 02                 1253 	.dw	2
      0000D4 00 00 00 5C           1254 	.dw	0,(Ldebug_abbrev)
      0000D8 04                    1255 	.db	4
      0000D9 01                    1256 	.uleb128	1
      0000DA 2E 2F 53 54 4D 38 53  1257 	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             5F 53 74 64 50 65 72
             69 70 68 5F 44 72 69
             76 65 72 2F 73 72 63
             2F 73 74 6D 38 73 5F
             67 70 69 6F 2E 63
      000103 00                    1258 	.db	0
      000104 00 00 00 EE           1259 	.dw	0,(Ldebug_line_start+-4)
      000108 01                    1260 	.db	1
      000109 53 44 43 43 20 76 65  1261 	.ascii "SDCC version 3.7.0 #10231"
             72 73 69 6F 6E 20 33
             2E 37 2E 30 20 23 31
             30 32 33 31
      000122 00                    1262 	.db	0
      000123 02                    1263 	.uleb128	2
      000124 00 00 00 DC           1264 	.dw	0,220
      000128 47 50 49 4F 5F 44 65  1265 	.ascii "GPIO_DeInit"
             49 6E 69 74
      000133 00                    1266 	.db	0
      000134 00 00 80 56           1267 	.dw	0,(_GPIO_DeInit)
      000138 00 00 80 69           1268 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      00013C 01                    1269 	.db	1
      00013D 00 00 02 2C           1270 	.dw	0,(Ldebug_loc_start+372)
      000141 03                    1271 	.uleb128	3
      000142 00 00 00 C7           1272 	.dw	0,199
      000146 47 50 49 4F 5F 73 74  1273 	.ascii "GPIO_struct"
             72 75 63 74
      000151 00                    1274 	.db	0
      000152 05                    1275 	.db	5
      000153 04                    1276 	.uleb128	4
      000154 00 00 00 DC           1277 	.dw	0,220
      000158 05                    1278 	.uleb128	5
      000159 4F 44 52              1279 	.ascii "ODR"
      00015C 00                    1280 	.db	0
      00015D 02                    1281 	.db	2
      00015E 23                    1282 	.db	35
      00015F 00                    1283 	.uleb128	0
      000160 00 00 00 85           1284 	.dw	0,133
      000164 05                    1285 	.uleb128	5
      000165 49 44 52              1286 	.ascii "IDR"
      000168 00                    1287 	.db	0
      000169 02                    1288 	.db	2
      00016A 23                    1289 	.db	35
      00016B 01                    1290 	.uleb128	1
      00016C 00 00 00 85           1291 	.dw	0,133
      000170 05                    1292 	.uleb128	5
      000171 44 44 52              1293 	.ascii "DDR"
      000174 00                    1294 	.db	0
      000175 02                    1295 	.db	2
      000176 23                    1296 	.db	35
      000177 02                    1297 	.uleb128	2
      000178 00 00 00 85           1298 	.dw	0,133
      00017C 05                    1299 	.uleb128	5
      00017D 43 52 31              1300 	.ascii "CR1"
      000180 00                    1301 	.db	0
      000181 02                    1302 	.db	2
      000182 23                    1303 	.db	35
      000183 03                    1304 	.uleb128	3
      000184 00 00 00 85           1305 	.dw	0,133
      000188 05                    1306 	.uleb128	5
      000189 43 52 32              1307 	.ascii "CR2"
      00018C 00                    1308 	.db	0
      00018D 02                    1309 	.db	2
      00018E 23                    1310 	.db	35
      00018F 04                    1311 	.uleb128	4
      000190 00 00 00 85           1312 	.dw	0,133
      000194 00                    1313 	.uleb128	0
      000195 06                    1314 	.uleb128	6
      000196 02                    1315 	.db	2
      000197 00 00 00 73           1316 	.dw	0,115
      00019B 07                    1317 	.uleb128	7
      00019C 02                    1318 	.db	2
      00019D 91                    1319 	.db	145
      00019E 02                    1320 	.sleb128	2
      00019F 47 50 49 4F 78        1321 	.ascii "GPIOx"
      0001A4 00                    1322 	.db	0
      0001A5 00 00 00 C7           1323 	.dw	0,199
      0001A9 00                    1324 	.uleb128	0
      0001AA 08                    1325 	.uleb128	8
      0001AB 75 6E 73 69 67 6E 65  1326 	.ascii "unsigned char"
             64 20 63 68 61 72
      0001B8 00                    1327 	.db	0
      0001B9 01                    1328 	.db	1
      0001BA 08                    1329 	.db	8
      0001BB 02                    1330 	.uleb128	2
      0001BC 00 00 01 88           1331 	.dw	0,392
      0001C0 47 50 49 4F 5F 49 6E  1332 	.ascii "GPIO_Init"
             69 74
      0001C9 00                    1333 	.db	0
      0001CA 00 00 80 69           1334 	.dw	0,(_GPIO_Init)
      0001CE 00 00 80 F0           1335 	.dw	0,(XG$GPIO_Init$0$0+1)
      0001D2 01                    1336 	.db	1
      0001D3 00 00 01 A0           1337 	.dw	0,(Ldebug_loc_start+232)
      0001D7 07                    1338 	.uleb128	7
      0001D8 02                    1339 	.db	2
      0001D9 91                    1340 	.db	145
      0001DA 02                    1341 	.sleb128	2
      0001DB 47 50 49 4F 78        1342 	.ascii "GPIOx"
      0001E0 00                    1343 	.db	0
      0001E1 00 00 00 C7           1344 	.dw	0,199
      0001E5 07                    1345 	.uleb128	7
      0001E6 02                    1346 	.db	2
      0001E7 91                    1347 	.db	145
      0001E8 04                    1348 	.sleb128	4
      0001E9 47 50 49 4F 5F 50 69  1349 	.ascii "GPIO_Pin"
             6E
      0001F1 00                    1350 	.db	0
      0001F2 00 00 01 88           1351 	.dw	0,392
      0001F6 07                    1352 	.uleb128	7
      0001F7 02                    1353 	.db	2
      0001F8 91                    1354 	.db	145
      0001F9 05                    1355 	.sleb128	5
      0001FA 47 50 49 4F 5F 4D 6F  1356 	.ascii "GPIO_Mode"
             64 65
      000203 00                    1357 	.db	0
      000204 00 00 01 88           1358 	.dw	0,392
      000208 09                    1359 	.uleb128	9
      000209 00 00 01 5A           1360 	.dw	0,346
      00020D 00 00 80 90           1361 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      000211 00 00 80 AE           1362 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      000215 0A                    1363 	.uleb128	10
      000216 00 00 80 9B           1364 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      00021A 00 00 80 9F           1365 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      00021E 0A                    1366 	.uleb128	10
      00021F 00 00 80 A2           1367 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      000223 00 00 80 A6           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000227 00                    1369 	.uleb128	0
      000228 0A                    1370 	.uleb128	10
      000229 00 00 80 B1           1371 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      00022D 00 00 80 B9           1372 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      000231 0A                    1373 	.uleb128	10
      000232 00 00 80 C9           1374 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000236 00 00 80 CC           1375 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      00023A 0A                    1376 	.uleb128	10
      00023B 00 00 80 CF           1377 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      00023F 00 00 80 D2           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$42)
      000243 0A                    1379 	.uleb128	10
      000244 00 00 80 E0           1380 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      000248 00 00 80 E5           1381 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      00024C 0A                    1382 	.uleb128	10
      00024D 00 00 80 E8           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      000251 00 00 80 ED           1384 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      000255 00                    1385 	.uleb128	0
      000256 08                    1386 	.uleb128	8
      000257 75 6E 73 69 67 6E 65  1387 	.ascii "unsigned char"
             64 20 63 68 61 72
      000264 00                    1388 	.db	0
      000265 01                    1389 	.db	1
      000266 08                    1390 	.db	8
      000267 02                    1391 	.uleb128	2
      000268 00 00 01 D5           1392 	.dw	0,469
      00026C 47 50 49 4F 5F 57 72  1393 	.ascii "GPIO_Write"
             69 74 65
      000276 00                    1394 	.db	0
      000277 00 00 80 F0           1395 	.dw	0,(_GPIO_Write)
      00027B 00 00 80 F6           1396 	.dw	0,(XG$GPIO_Write$0$0+1)
      00027F 01                    1397 	.db	1
      000280 00 00 01 8C           1398 	.dw	0,(Ldebug_loc_start+212)
      000284 07                    1399 	.uleb128	7
      000285 02                    1400 	.db	2
      000286 91                    1401 	.db	145
      000287 02                    1402 	.sleb128	2
      000288 47 50 49 4F 78        1403 	.ascii "GPIOx"
      00028D 00                    1404 	.db	0
      00028E 00 00 00 C7           1405 	.dw	0,199
      000292 07                    1406 	.uleb128	7
      000293 02                    1407 	.db	2
      000294 91                    1408 	.db	145
      000295 04                    1409 	.sleb128	4
      000296 50 6F 72 74 56 61 6C  1410 	.ascii "PortVal"
      00029D 00                    1411 	.db	0
      00029E 00 00 01 88           1412 	.dw	0,392
      0002A2 00                    1413 	.uleb128	0
      0002A3 02                    1414 	.uleb128	2
      0002A4 00 00 02 16           1415 	.dw	0,534
      0002A8 47 50 49 4F 5F 57 72  1416 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      0002B6 00                    1417 	.db	0
      0002B7 00 00 80 F6           1418 	.dw	0,(_GPIO_WriteHigh)
      0002BB 00 00 80 FD           1419 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      0002BF 01                    1420 	.db	1
      0002C0 00 00 01 78           1421 	.dw	0,(Ldebug_loc_start+192)
      0002C4 07                    1422 	.uleb128	7
      0002C5 02                    1423 	.db	2
      0002C6 91                    1424 	.db	145
      0002C7 02                    1425 	.sleb128	2
      0002C8 47 50 49 4F 78        1426 	.ascii "GPIOx"
      0002CD 00                    1427 	.db	0
      0002CE 00 00 00 C7           1428 	.dw	0,199
      0002D2 07                    1429 	.uleb128	7
      0002D3 02                    1430 	.db	2
      0002D4 91                    1431 	.db	145
      0002D5 04                    1432 	.sleb128	4
      0002D6 50 6F 72 74 50 69 6E  1433 	.ascii "PortPins"
             73
      0002DE 00                    1434 	.db	0
      0002DF 00 00 01 88           1435 	.dw	0,392
      0002E3 00                    1436 	.uleb128	0
      0002E4 02                    1437 	.uleb128	2
      0002E5 00 00 02 56           1438 	.dw	0,598
      0002E9 47 50 49 4F 5F 57 72  1439 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      0002F6 00                    1440 	.db	0
      0002F7 00 00 80 FD           1441 	.dw	0,(_GPIO_WriteLow)
      0002FB 00 00 81 0B           1442 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      0002FF 01                    1443 	.db	1
      000300 00 00 01 4C           1444 	.dw	0,(Ldebug_loc_start+148)
      000304 07                    1445 	.uleb128	7
      000305 02                    1446 	.db	2
      000306 91                    1447 	.db	145
      000307 02                    1448 	.sleb128	2
      000308 47 50 49 4F 78        1449 	.ascii "GPIOx"
      00030D 00                    1450 	.db	0
      00030E 00 00 00 C7           1451 	.dw	0,199
      000312 07                    1452 	.uleb128	7
      000313 02                    1453 	.db	2
      000314 91                    1454 	.db	145
      000315 04                    1455 	.sleb128	4
      000316 50 6F 72 74 50 69 6E  1456 	.ascii "PortPins"
             73
      00031E 00                    1457 	.db	0
      00031F 00 00 01 88           1458 	.dw	0,392
      000323 00                    1459 	.uleb128	0
      000324 02                    1460 	.uleb128	2
      000325 00 00 02 9A           1461 	.dw	0,666
      000329 47 50 49 4F 5F 57 72  1462 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      00033A 00                    1463 	.db	0
      00033B 00 00 81 0B           1464 	.dw	0,(_GPIO_WriteReverse)
      00033F 00 00 81 12           1465 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      000343 01                    1466 	.db	1
      000344 00 00 01 38           1467 	.dw	0,(Ldebug_loc_start+128)
      000348 07                    1468 	.uleb128	7
      000349 02                    1469 	.db	2
      00034A 91                    1470 	.db	145
      00034B 02                    1471 	.sleb128	2
      00034C 47 50 49 4F 78        1472 	.ascii "GPIOx"
      000351 00                    1473 	.db	0
      000352 00 00 00 C7           1474 	.dw	0,199
      000356 07                    1475 	.uleb128	7
      000357 02                    1476 	.db	2
      000358 91                    1477 	.db	145
      000359 04                    1478 	.sleb128	4
      00035A 50 6F 72 74 50 69 6E  1479 	.ascii "PortPins"
             73
      000362 00                    1480 	.db	0
      000363 00 00 01 88           1481 	.dw	0,392
      000367 00                    1482 	.uleb128	0
      000368 0B                    1483 	.uleb128	11
      000369 00 00 02 D3           1484 	.dw	0,723
      00036D 47 50 49 4F 5F 52 65  1485 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      000380 00                    1486 	.db	0
      000381 00 00 81 12           1487 	.dw	0,(_GPIO_ReadOutputData)
      000385 00 00 81 16           1488 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      000389 01                    1489 	.db	1
      00038A 00 00 01 24           1490 	.dw	0,(Ldebug_loc_start+108)
      00038E 00 00 01 88           1491 	.dw	0,392
      000392 07                    1492 	.uleb128	7
      000393 02                    1493 	.db	2
      000394 91                    1494 	.db	145
      000395 02                    1495 	.sleb128	2
      000396 47 50 49 4F 78        1496 	.ascii "GPIOx"
      00039B 00                    1497 	.db	0
      00039C 00 00 00 C7           1498 	.dw	0,199
      0003A0 00                    1499 	.uleb128	0
      0003A1 0B                    1500 	.uleb128	11
      0003A2 00 00 03 0B           1501 	.dw	0,779
      0003A6 47 50 49 4F 5F 52 65  1502 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      0003B8 00                    1503 	.db	0
      0003B9 00 00 81 16           1504 	.dw	0,(_GPIO_ReadInputData)
      0003BD 00 00 81 1B           1505 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      0003C1 01                    1506 	.db	1
      0003C2 00 00 01 10           1507 	.dw	0,(Ldebug_loc_start+88)
      0003C6 00 00 01 88           1508 	.dw	0,392
      0003CA 07                    1509 	.uleb128	7
      0003CB 02                    1510 	.db	2
      0003CC 91                    1511 	.db	145
      0003CD 02                    1512 	.sleb128	2
      0003CE 47 50 49 4F 78        1513 	.ascii "GPIOx"
      0003D3 00                    1514 	.db	0
      0003D4 00 00 00 C7           1515 	.dw	0,199
      0003D8 00                    1516 	.uleb128	0
      0003D9 0B                    1517 	.uleb128	11
      0003DA 00 00 03 53           1518 	.dw	0,851
      0003DE 47 50 49 4F 5F 52 65  1519 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      0003EF 00                    1520 	.db	0
      0003F0 00 00 81 1B           1521 	.dw	0,(_GPIO_ReadInputPin)
      0003F4 00 00 81 22           1522 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      0003F8 01                    1523 	.db	1
      0003F9 00 00 00 FC           1524 	.dw	0,(Ldebug_loc_start+68)
      0003FD 00 00 01 88           1525 	.dw	0,392
      000401 07                    1526 	.uleb128	7
      000402 02                    1527 	.db	2
      000403 91                    1528 	.db	145
      000404 02                    1529 	.sleb128	2
      000405 47 50 49 4F 78        1530 	.ascii "GPIOx"
      00040A 00                    1531 	.db	0
      00040B 00 00 00 C7           1532 	.dw	0,199
      00040F 07                    1533 	.uleb128	7
      000410 02                    1534 	.db	2
      000411 91                    1535 	.db	145
      000412 04                    1536 	.sleb128	4
      000413 47 50 49 4F 5F 50 69  1537 	.ascii "GPIO_Pin"
             6E
      00041B 00                    1538 	.db	0
      00041C 00 00 01 88           1539 	.dw	0,392
      000420 00                    1540 	.uleb128	0
      000421 0C                    1541 	.uleb128	12
      000422 47 50 49 4F 5F 45 78  1542 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      00043B 00                    1543 	.db	0
      00043C 00 00 81 22           1544 	.dw	0,(_GPIO_ExternalPullUpConfig)
      000440 00 00 81 42           1545 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      000444 01                    1546 	.db	1
      000445 00 00 00 B8           1547 	.dw	0,(Ldebug_loc_start)
      000449 07                    1548 	.uleb128	7
      00044A 02                    1549 	.db	2
      00044B 91                    1550 	.db	145
      00044C 02                    1551 	.sleb128	2
      00044D 47 50 49 4F 78        1552 	.ascii "GPIOx"
      000452 00                    1553 	.db	0
      000453 00 00 00 C7           1554 	.dw	0,199
      000457 07                    1555 	.uleb128	7
      000458 02                    1556 	.db	2
      000459 91                    1557 	.db	145
      00045A 04                    1558 	.sleb128	4
      00045B 47 50 49 4F 5F 50 69  1559 	.ascii "GPIO_Pin"
             6E
      000463 00                    1560 	.db	0
      000464 00 00 01 88           1561 	.dw	0,392
      000468 07                    1562 	.uleb128	7
      000469 02                    1563 	.db	2
      00046A 91                    1564 	.db	145
      00046B 05                    1565 	.sleb128	5
      00046C 4E 65 77 53 74 61 74  1566 	.ascii "NewState"
             65
      000474 00                    1567 	.db	0
      000475 00 00 01 88           1568 	.dw	0,392
      000479 0A                    1569 	.uleb128	10
      00047A 00 00 81 30           1570 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$106)
      00047E 00 00 81 33           1571 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$108)
      000482 0A                    1572 	.uleb128	10
      000483 00 00 81 36           1573 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$109)
      000487 00 00 81 40           1574 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$113)
      00048B 00                    1575 	.uleb128	0
      00048C 00                    1576 	.uleb128	0
      00048D 00                    1577 	.uleb128	0
      00048E 00                    1578 	.uleb128	0
      00048F                       1579 Ldebug_info_end:
                                   1580 
                                   1581 	.area .debug_pubnames (NOLOAD)
      000025 00 00 00 D9           1582 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000029                       1583 Ldebug_pubnames_start:
      000029 00 02                 1584 	.dw	2
      00002B 00 00 00 CE           1585 	.dw	0,(Ldebug_info_start-4)
      00002F 00 00 03 C1           1586 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000033 00 00 00 55           1587 	.dw	0,85
      000037 47 50 49 4F 5F 44 65  1588 	.ascii "GPIO_DeInit"
             49 6E 69 74
      000042 00                    1589 	.db	0
      000043 00 00 00 ED           1590 	.dw	0,237
      000047 47 50 49 4F 5F 49 6E  1591 	.ascii "GPIO_Init"
             69 74
      000050 00                    1592 	.db	0
      000051 00 00 01 99           1593 	.dw	0,409
      000055 47 50 49 4F 5F 57 72  1594 	.ascii "GPIO_Write"
             69 74 65
      00005F 00                    1595 	.db	0
      000060 00 00 01 D5           1596 	.dw	0,469
      000064 47 50 49 4F 5F 57 72  1597 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000072 00                    1598 	.db	0
      000073 00 00 02 16           1599 	.dw	0,534
      000077 47 50 49 4F 5F 57 72  1600 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000084 00                    1601 	.db	0
      000085 00 00 02 56           1602 	.dw	0,598
      000089 47 50 49 4F 5F 57 72  1603 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      00009A 00                    1604 	.db	0
      00009B 00 00 02 9A           1605 	.dw	0,666
      00009F 47 50 49 4F 5F 52 65  1606 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      0000B2 00                    1607 	.db	0
      0000B3 00 00 02 D3           1608 	.dw	0,723
      0000B7 47 50 49 4F 5F 52 65  1609 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      0000C9 00                    1610 	.db	0
      0000CA 00 00 03 0B           1611 	.dw	0,779
      0000CE 47 50 49 4F 5F 52 65  1612 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      0000DF 00                    1613 	.db	0
      0000E0 00 00 03 53           1614 	.dw	0,851
      0000E4 47 50 49 4F 5F 45 78  1615 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      0000FD 00                    1616 	.db	0
      0000FE 00 00 00 00           1617 	.dw	0,0
      000102                       1618 Ldebug_pubnames_end:
                                   1619 
                                   1620 	.area .debug_frame (NOLOAD)
      0000A6 00 00                 1621 	.dw	0
      0000A8 00 0E                 1622 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0000AA                       1623 Ldebug_CIE0_start:
      0000AA FF FF                 1624 	.dw	0xffff
      0000AC FF FF                 1625 	.dw	0xffff
      0000AE 01                    1626 	.db	1
      0000AF 00                    1627 	.db	0
      0000B0 01                    1628 	.uleb128	1
      0000B1 7F                    1629 	.sleb128	-1
      0000B2 09                    1630 	.db	9
      0000B3 0C                    1631 	.db	12
      0000B4 08                    1632 	.uleb128	8
      0000B5 02                    1633 	.uleb128	2
      0000B6 89                    1634 	.db	137
      0000B7 01                    1635 	.uleb128	1
      0000B8                       1636 Ldebug_CIE0_end:
      0000B8 00 00 00 2F           1637 	.dw	0,47
      0000BC 00 00 00 A6           1638 	.dw	0,(Ldebug_CIE0_start-4)
      0000C0 00 00 81 22           1639 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)	;initial loc
      0000C4 00 00 00 20           1640 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$117-Sstm8s_gpio$GPIO_ExternalPullUpConfig$102
      0000C8 01                    1641 	.db	1
      0000C9 00 00 81 22           1642 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      0000CD 0E                    1643 	.db	14
      0000CE 02                    1644 	.uleb128	2
      0000CF 01                    1645 	.db	1
      0000D0 00 00 81 23           1646 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      0000D4 0E                    1647 	.db	14
      0000D5 03                    1648 	.uleb128	3
      0000D6 01                    1649 	.db	1
      0000D7 00 00 81 37           1650 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      0000DB 0E                    1651 	.db	14
      0000DC 04                    1652 	.uleb128	4
      0000DD 01                    1653 	.db	1
      0000DE 00 00 81 3D           1654 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      0000E2 0E                    1655 	.db	14
      0000E3 03                    1656 	.uleb128	3
      0000E4 01                    1657 	.db	1
      0000E5 00 00 81 41           1658 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      0000E9 0E                    1659 	.db	14
      0000EA 02                    1660 	.uleb128	2
                                   1661 
                                   1662 	.area .debug_frame (NOLOAD)
      0000EB 00 00                 1663 	.dw	0
      0000ED 00 0E                 1664 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0000EF                       1665 Ldebug_CIE1_start:
      0000EF FF FF                 1666 	.dw	0xffff
      0000F1 FF FF                 1667 	.dw	0xffff
      0000F3 01                    1668 	.db	1
      0000F4 00                    1669 	.db	0
      0000F5 01                    1670 	.uleb128	1
      0000F6 7F                    1671 	.sleb128	-1
      0000F7 09                    1672 	.db	9
      0000F8 0C                    1673 	.db	12
      0000F9 08                    1674 	.uleb128	8
      0000FA 02                    1675 	.uleb128	2
      0000FB 89                    1676 	.db	137
      0000FC 01                    1677 	.uleb128	1
      0000FD                       1678 Ldebug_CIE1_end:
      0000FD 00 00 00 13           1679 	.dw	0,19
      000101 00 00 00 EB           1680 	.dw	0,(Ldebug_CIE1_start-4)
      000105 00 00 81 1B           1681 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)	;initial loc
      000109 00 00 00 07           1682 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$100-Sstm8s_gpio$GPIO_ReadInputPin$96
      00010D 01                    1683 	.db	1
      00010E 00 00 81 1B           1684 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      000112 0E                    1685 	.db	14
      000113 02                    1686 	.uleb128	2
                                   1687 
                                   1688 	.area .debug_frame (NOLOAD)
      000114 00 00                 1689 	.dw	0
      000116 00 0E                 1690 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000118                       1691 Ldebug_CIE2_start:
      000118 FF FF                 1692 	.dw	0xffff
      00011A FF FF                 1693 	.dw	0xffff
      00011C 01                    1694 	.db	1
      00011D 00                    1695 	.db	0
      00011E 01                    1696 	.uleb128	1
      00011F 7F                    1697 	.sleb128	-1
      000120 09                    1698 	.db	9
      000121 0C                    1699 	.db	12
      000122 08                    1700 	.uleb128	8
      000123 02                    1701 	.uleb128	2
      000124 89                    1702 	.db	137
      000125 01                    1703 	.uleb128	1
      000126                       1704 Ldebug_CIE2_end:
      000126 00 00 00 13           1705 	.dw	0,19
      00012A 00 00 01 14           1706 	.dw	0,(Ldebug_CIE2_start-4)
      00012E 00 00 81 16           1707 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)	;initial loc
      000132 00 00 00 05           1708 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$94-Sstm8s_gpio$GPIO_ReadInputData$90
      000136 01                    1709 	.db	1
      000137 00 00 81 16           1710 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      00013B 0E                    1711 	.db	14
      00013C 02                    1712 	.uleb128	2
                                   1713 
                                   1714 	.area .debug_frame (NOLOAD)
      00013D 00 00                 1715 	.dw	0
      00013F 00 0E                 1716 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000141                       1717 Ldebug_CIE3_start:
      000141 FF FF                 1718 	.dw	0xffff
      000143 FF FF                 1719 	.dw	0xffff
      000145 01                    1720 	.db	1
      000146 00                    1721 	.db	0
      000147 01                    1722 	.uleb128	1
      000148 7F                    1723 	.sleb128	-1
      000149 09                    1724 	.db	9
      00014A 0C                    1725 	.db	12
      00014B 08                    1726 	.uleb128	8
      00014C 02                    1727 	.uleb128	2
      00014D 89                    1728 	.db	137
      00014E 01                    1729 	.uleb128	1
      00014F                       1730 Ldebug_CIE3_end:
      00014F 00 00 00 13           1731 	.dw	0,19
      000153 00 00 01 3D           1732 	.dw	0,(Ldebug_CIE3_start-4)
      000157 00 00 81 12           1733 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)	;initial loc
      00015B 00 00 00 04           1734 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$88-Sstm8s_gpio$GPIO_ReadOutputData$84
      00015F 01                    1735 	.db	1
      000160 00 00 81 12           1736 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      000164 0E                    1737 	.db	14
      000165 02                    1738 	.uleb128	2
                                   1739 
                                   1740 	.area .debug_frame (NOLOAD)
      000166 00 00                 1741 	.dw	0
      000168 00 0E                 1742 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00016A                       1743 Ldebug_CIE4_start:
      00016A FF FF                 1744 	.dw	0xffff
      00016C FF FF                 1745 	.dw	0xffff
      00016E 01                    1746 	.db	1
      00016F 00                    1747 	.db	0
      000170 01                    1748 	.uleb128	1
      000171 7F                    1749 	.sleb128	-1
      000172 09                    1750 	.db	9
      000173 0C                    1751 	.db	12
      000174 08                    1752 	.uleb128	8
      000175 02                    1753 	.uleb128	2
      000176 89                    1754 	.db	137
      000177 01                    1755 	.uleb128	1
      000178                       1756 Ldebug_CIE4_end:
      000178 00 00 00 13           1757 	.dw	0,19
      00017C 00 00 01 66           1758 	.dw	0,(Ldebug_CIE4_start-4)
      000180 00 00 81 0B           1759 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)	;initial loc
      000184 00 00 00 07           1760 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$82-Sstm8s_gpio$GPIO_WriteReverse$78
      000188 01                    1761 	.db	1
      000189 00 00 81 0B           1762 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      00018D 0E                    1763 	.db	14
      00018E 02                    1764 	.uleb128	2
                                   1765 
                                   1766 	.area .debug_frame (NOLOAD)
      00018F 00 00                 1767 	.dw	0
      000191 00 0E                 1768 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000193                       1769 Ldebug_CIE5_start:
      000193 FF FF                 1770 	.dw	0xffff
      000195 FF FF                 1771 	.dw	0xffff
      000197 01                    1772 	.db	1
      000198 00                    1773 	.db	0
      000199 01                    1774 	.uleb128	1
      00019A 7F                    1775 	.sleb128	-1
      00019B 09                    1776 	.db	9
      00019C 0C                    1777 	.db	12
      00019D 08                    1778 	.uleb128	8
      00019E 02                    1779 	.uleb128	2
      00019F 89                    1780 	.db	137
      0001A0 01                    1781 	.uleb128	1
      0001A1                       1782 Ldebug_CIE5_end:
      0001A1 00 00 00 21           1783 	.dw	0,33
      0001A5 00 00 01 8F           1784 	.dw	0,(Ldebug_CIE5_start-4)
      0001A9 00 00 80 FD           1785 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)	;initial loc
      0001AD 00 00 00 0E           1786 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$76-Sstm8s_gpio$GPIO_WriteLow$70
      0001B1 01                    1787 	.db	1
      0001B2 00 00 80 FD           1788 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      0001B6 0E                    1789 	.db	14
      0001B7 02                    1790 	.uleb128	2
      0001B8 01                    1791 	.db	1
      0001B9 00 00 80 FE           1792 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      0001BD 0E                    1793 	.db	14
      0001BE 03                    1794 	.uleb128	3
      0001BF 01                    1795 	.db	1
      0001C0 00 00 81 0A           1796 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      0001C4 0E                    1797 	.db	14
      0001C5 02                    1798 	.uleb128	2
                                   1799 
                                   1800 	.area .debug_frame (NOLOAD)
      0001C6 00 00                 1801 	.dw	0
      0001C8 00 0E                 1802 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0001CA                       1803 Ldebug_CIE6_start:
      0001CA FF FF                 1804 	.dw	0xffff
      0001CC FF FF                 1805 	.dw	0xffff
      0001CE 01                    1806 	.db	1
      0001CF 00                    1807 	.db	0
      0001D0 01                    1808 	.uleb128	1
      0001D1 7F                    1809 	.sleb128	-1
      0001D2 09                    1810 	.db	9
      0001D3 0C                    1811 	.db	12
      0001D4 08                    1812 	.uleb128	8
      0001D5 02                    1813 	.uleb128	2
      0001D6 89                    1814 	.db	137
      0001D7 01                    1815 	.uleb128	1
      0001D8                       1816 Ldebug_CIE6_end:
      0001D8 00 00 00 13           1817 	.dw	0,19
      0001DC 00 00 01 C6           1818 	.dw	0,(Ldebug_CIE6_start-4)
      0001E0 00 00 80 F6           1819 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)	;initial loc
      0001E4 00 00 00 07           1820 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$68-Sstm8s_gpio$GPIO_WriteHigh$64
      0001E8 01                    1821 	.db	1
      0001E9 00 00 80 F6           1822 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      0001ED 0E                    1823 	.db	14
      0001EE 02                    1824 	.uleb128	2
                                   1825 
                                   1826 	.area .debug_frame (NOLOAD)
      0001EF 00 00                 1827 	.dw	0
      0001F1 00 0E                 1828 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0001F3                       1829 Ldebug_CIE7_start:
      0001F3 FF FF                 1830 	.dw	0xffff
      0001F5 FF FF                 1831 	.dw	0xffff
      0001F7 01                    1832 	.db	1
      0001F8 00                    1833 	.db	0
      0001F9 01                    1834 	.uleb128	1
      0001FA 7F                    1835 	.sleb128	-1
      0001FB 09                    1836 	.db	9
      0001FC 0C                    1837 	.db	12
      0001FD 08                    1838 	.uleb128	8
      0001FE 02                    1839 	.uleb128	2
      0001FF 89                    1840 	.db	137
      000200 01                    1841 	.uleb128	1
      000201                       1842 Ldebug_CIE7_end:
      000201 00 00 00 13           1843 	.dw	0,19
      000205 00 00 01 EF           1844 	.dw	0,(Ldebug_CIE7_start-4)
      000209 00 00 80 F0           1845 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)	;initial loc
      00020D 00 00 00 06           1846 	.dw	0,Sstm8s_gpio$GPIO_Write$62-Sstm8s_gpio$GPIO_Write$58
      000211 01                    1847 	.db	1
      000212 00 00 80 F0           1848 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      000216 0E                    1849 	.db	14
      000217 02                    1850 	.uleb128	2
                                   1851 
                                   1852 	.area .debug_frame (NOLOAD)
      000218 00 00                 1853 	.dw	0
      00021A 00 0E                 1854 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      00021C                       1855 Ldebug_CIE8_start:
      00021C FF FF                 1856 	.dw	0xffff
      00021E FF FF                 1857 	.dw	0xffff
      000220 01                    1858 	.db	1
      000221 00                    1859 	.db	0
      000222 01                    1860 	.uleb128	1
      000223 7F                    1861 	.sleb128	-1
      000224 09                    1862 	.db	9
      000225 0C                    1863 	.db	12
      000226 08                    1864 	.uleb128	8
      000227 02                    1865 	.uleb128	2
      000228 89                    1866 	.db	137
      000229 01                    1867 	.uleb128	1
      00022A                       1868 Ldebug_CIE8_end:
      00022A 00 00 00 59           1869 	.dw	0,89
      00022E 00 00 02 18           1870 	.dw	0,(Ldebug_CIE8_start-4)
      000232 00 00 80 69           1871 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      000236 00 00 00 87           1872 	.dw	0,Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$10
      00023A 01                    1873 	.db	1
      00023B 00 00 80 69           1874 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      00023F 0E                    1875 	.db	14
      000240 02                    1876 	.uleb128	2
      000241 01                    1877 	.db	1
      000242 00 00 80 6B           1878 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000246 0E                    1879 	.db	14
      000247 07                    1880 	.uleb128	7
      000248 01                    1881 	.db	1
      000249 00 00 80 77           1882 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      00024D 0E                    1883 	.db	14
      00024E 08                    1884 	.uleb128	8
      00024F 01                    1885 	.db	1
      000250 00 00 80 7D           1886 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      000254 0E                    1887 	.db	14
      000255 07                    1888 	.uleb128	7
      000256 01                    1889 	.db	1
      000257 00 00 80 91           1890 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      00025B 0E                    1891 	.db	14
      00025C 08                    1892 	.uleb128	8
      00025D 01                    1893 	.db	1
      00025E 00 00 80 96           1894 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      000262 0E                    1895 	.db	14
      000263 07                    1896 	.uleb128	7
      000264 01                    1897 	.db	1
      000265 00 00 80 BF           1898 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      000269 0E                    1899 	.db	14
      00026A 08                    1900 	.uleb128	8
      00026B 01                    1901 	.db	1
      00026C 00 00 80 C4           1902 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000270 0E                    1903 	.db	14
      000271 07                    1904 	.uleb128	7
      000272 01                    1905 	.db	1
      000273 00 00 80 D6           1906 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      000277 0E                    1907 	.db	14
      000278 08                    1908 	.uleb128	8
      000279 01                    1909 	.db	1
      00027A 00 00 80 DB           1910 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      00027E 0E                    1911 	.db	14
      00027F 07                    1912 	.uleb128	7
      000280 01                    1913 	.db	1
      000281 00 00 80 EF           1914 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      000285 0E                    1915 	.db	14
      000286 02                    1916 	.uleb128	2
                                   1917 
                                   1918 	.area .debug_frame (NOLOAD)
      000287 00 00                 1919 	.dw	0
      000289 00 0E                 1920 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      00028B                       1921 Ldebug_CIE9_start:
      00028B FF FF                 1922 	.dw	0xffff
      00028D FF FF                 1923 	.dw	0xffff
      00028F 01                    1924 	.db	1
      000290 00                    1925 	.db	0
      000291 01                    1926 	.uleb128	1
      000292 7F                    1927 	.sleb128	-1
      000293 09                    1928 	.db	9
      000294 0C                    1929 	.db	12
      000295 08                    1930 	.uleb128	8
      000296 02                    1931 	.uleb128	2
      000297 89                    1932 	.db	137
      000298 01                    1933 	.uleb128	1
      000299                       1934 Ldebug_CIE9_end:
      000299 00 00 00 13           1935 	.dw	0,19
      00029D 00 00 02 87           1936 	.dw	0,(Ldebug_CIE9_start-4)
      0002A1 00 00 80 56           1937 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      0002A5 00 00 00 13           1938 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      0002A9 01                    1939 	.db	1
      0002AA 00 00 80 56           1940 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      0002AE 0E                    1941 	.db	14
      0002AF 02                    1942 	.uleb128	2
