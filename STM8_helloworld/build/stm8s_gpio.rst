                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12069 (Linux)
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
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	G$GPIO_DeInit$0$0 ==.
                           000000    59 	C$stm8s_gpio.c$53$0_0$346 ==.
                                     60 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ; genLabel
                                     62 ;	-----------------------------------------
                                     63 ;	 function GPIO_DeInit
                                     64 ;	-----------------------------------------
                                     65 ;	Register assignment might be sub-optimal.
                                     66 ;	Stack space usage: 0 bytes.
      008056                         67 _GPIO_DeInit:
                           000000    68 	C$stm8s_gpio.c$55$1_0$346 ==.
                                     69 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     70 ; genAssign
      008056 16 03            [ 2]   71 	ldw	y, (0x03, sp)
                                     72 ; genPointerSet
      008058 90 7F            [ 1]   73 	clr	(y)
                           000004    74 	C$stm8s_gpio.c$56$1_0$346 ==.
                                     75 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     76 ; genPlus
      00805A 93               [ 1]   77 	ldw	x, y
      00805B 5C               [ 1]   78 	incw	x
      00805C 5C               [ 1]   79 	incw	x
                                     80 ; genPointerSet
      00805D 7F               [ 1]   81 	clr	(x)
                           000008    82 	C$stm8s_gpio.c$57$1_0$346 ==.
                                     83 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     84 ; genPlus
      00805E 93               [ 1]   85 	ldw	x, y
      00805F 1C 00 03         [ 2]   86 	addw	x, #0x0003
                                     87 ; genPointerSet
      008062 7F               [ 1]   88 	clr	(x)
                           00000D    89 	C$stm8s_gpio.c$58$1_0$346 ==.
                                     90 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     91 ; genPlus
      008063 93               [ 1]   92 	ldw	x, y
      008064 1C 00 04         [ 2]   93 	addw	x, #0x0004
                                     94 ; genPointerSet
      008067 7F               [ 1]   95 	clr	(x)
                                     96 ; genLabel
      008068                         97 00101$:
                           000012    98 	C$stm8s_gpio.c$59$1_0$346 ==.
                                     99 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
                                    100 ; genEndFunction
                           000012   101 	C$stm8s_gpio.c$59$1_0$346 ==.
                           000012   102 	XG$GPIO_DeInit$0$0 ==.
      008068 81               [ 4]  103 	ret
                           000013   104 	G$GPIO_Init$0$0 ==.
                           000013   105 	C$stm8s_gpio.c$71$1_0$348 ==.
                                    106 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    107 ; genLabel
                                    108 ;	-----------------------------------------
                                    109 ;	 function GPIO_Init
                                    110 ;	-----------------------------------------
                                    111 ;	Register assignment might be sub-optimal.
                                    112 ;	Stack space usage: 5 bytes.
      008069                        113 _GPIO_Init:
      008069 52 05            [ 2]  114 	sub	sp, #5
                           000015   115 	C$stm8s_gpio.c$81$1_0$348 ==.
                                    116 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    117 ; genAssign
      00806B 16 08            [ 2]  118 	ldw	y, (0x08, sp)
                                    119 ; genPlus
      00806D 93               [ 1]  120 	ldw	x, y
      00806E 1C 00 04         [ 2]  121 	addw	x, #0x0004
      008071 1F 01            [ 2]  122 	ldw	(0x01, sp), x
                                    123 ; genPointerGet
      008073 1E 01            [ 2]  124 	ldw	x, (0x01, sp)
      008075 F6               [ 1]  125 	ld	a, (x)
                                    126 ; genCpl
      008076 88               [ 1]  127 	push	a
      008077 7B 0B            [ 1]  128 	ld	a, (0x0b, sp)
      008079 43               [ 1]  129 	cpl	a
      00807A 6B 04            [ 1]  130 	ld	(0x04, sp), a
      00807C 84               [ 1]  131 	pop	a
                                    132 ; genAnd
      00807D 14 03            [ 1]  133 	and	a, (0x03, sp)
                                    134 ; genPointerSet
      00807F 1E 01            [ 2]  135 	ldw	x, (0x01, sp)
      008081 F7               [ 1]  136 	ld	(x), a
                           00002C   137 	C$stm8s_gpio.c$98$1_0$348 ==.
                                    138 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    139 ; genPlus
      008082 93               [ 1]  140 	ldw	x, y
      008083 5C               [ 1]  141 	incw	x
      008084 5C               [ 1]  142 	incw	x
      008085 1F 04            [ 2]  143 	ldw	(0x04, sp), x
                           000031   144 	C$stm8s_gpio.c$87$1_0$348 ==.
                                    145 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    146 ; genAnd
      008087 0D 0B            [ 1]  147 	tnz	(0x0b, sp)
      008089 2B 03            [ 1]  148 	jrmi	00135$
      00808B CC 80 B1         [ 2]  149 	jp	00105$
      00808E                        150 00135$:
                                    151 ; skipping generated iCode
                           000038   152 	C$stm8s_gpio.c$91$1_0$348 ==.
                                    153 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    154 ; genPointerGet
      00808E 90 F6            [ 1]  155 	ld	a, (y)
                           00003A   156 	C$stm8s_gpio.c$89$2_0$349 ==.
                                    157 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    158 ; genAnd
      008090 88               [ 1]  159 	push	a
      008091 7B 0C            [ 1]  160 	ld	a, (0x0c, sp)
      008093 A5 10            [ 1]  161 	bcp	a, #0x10
      008095 84               [ 1]  162 	pop	a
      008096 26 03            [ 1]  163 	jrne	00136$
      008098 CC 80 A2         [ 2]  164 	jp	00102$
      00809B                        165 00136$:
                                    166 ; skipping generated iCode
                           000045   167 	C$stm8s_gpio.c$91$3_0$350 ==.
                                    168 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    169 ; genOr
      00809B 1A 0A            [ 1]  170 	or	a, (0x0a, sp)
                                    171 ; genPointerSet
      00809D 90 F7            [ 1]  172 	ld	(y), a
                                    173 ; genGoto
      00809F CC 80 A6         [ 2]  174 	jp	00103$
                                    175 ; genLabel
      0080A2                        176 00102$:
                           00004C   177 	C$stm8s_gpio.c$95$3_0$351 ==.
                                    178 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    179 ; genAnd
      0080A2 14 03            [ 1]  180 	and	a, (0x03, sp)
                                    181 ; genPointerSet
      0080A4 90 F7            [ 1]  182 	ld	(y), a
                                    183 ; genLabel
      0080A6                        184 00103$:
                           000050   185 	C$stm8s_gpio.c$98$2_0$349 ==.
                                    186 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    187 ; genPointerGet
      0080A6 1E 04            [ 2]  188 	ldw	x, (0x04, sp)
      0080A8 F6               [ 1]  189 	ld	a, (x)
                                    190 ; genOr
      0080A9 1A 0A            [ 1]  191 	or	a, (0x0a, sp)
                                    192 ; genPointerSet
      0080AB 1E 04            [ 2]  193 	ldw	x, (0x04, sp)
      0080AD F7               [ 1]  194 	ld	(x), a
                                    195 ; genGoto
      0080AE CC 80 B9         [ 2]  196 	jp	00106$
                                    197 ; genLabel
      0080B1                        198 00105$:
                           00005B   199 	C$stm8s_gpio.c$103$2_0$352 ==.
                                    200 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    201 ; genPointerGet
      0080B1 1E 04            [ 2]  202 	ldw	x, (0x04, sp)
      0080B3 F6               [ 1]  203 	ld	a, (x)
                                    204 ; genAnd
      0080B4 14 03            [ 1]  205 	and	a, (0x03, sp)
                                    206 ; genPointerSet
      0080B6 1E 04            [ 2]  207 	ldw	x, (0x04, sp)
      0080B8 F7               [ 1]  208 	ld	(x), a
                                    209 ; genLabel
      0080B9                        210 00106$:
                           000063   211 	C$stm8s_gpio.c$112$1_0$348 ==.
                                    212 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    213 ; genPlus
      0080B9 93               [ 1]  214 	ldw	x, y
      0080BA 1C 00 03         [ 2]  215 	addw	x, #0x0003
                                    216 ; genPointerGet
      0080BD F6               [ 1]  217 	ld	a, (x)
                           000068   218 	C$stm8s_gpio.c$110$1_0$348 ==.
                                    219 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    220 ; genAnd
      0080BE 88               [ 1]  221 	push	a
      0080BF 7B 0C            [ 1]  222 	ld	a, (0x0c, sp)
      0080C1 A5 40            [ 1]  223 	bcp	a, #0x40
      0080C3 84               [ 1]  224 	pop	a
      0080C4 26 03            [ 1]  225 	jrne	00137$
      0080C6 CC 80 CF         [ 2]  226 	jp	00108$
      0080C9                        227 00137$:
                                    228 ; skipping generated iCode
                           000073   229 	C$stm8s_gpio.c$112$2_0$353 ==.
                                    230 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    231 ; genOr
      0080C9 1A 0A            [ 1]  232 	or	a, (0x0a, sp)
                                    233 ; genPointerSet
      0080CB F7               [ 1]  234 	ld	(x), a
                                    235 ; genGoto
      0080CC CC 80 D2         [ 2]  236 	jp	00109$
                                    237 ; genLabel
      0080CF                        238 00108$:
                           000079   239 	C$stm8s_gpio.c$116$2_0$354 ==.
                                    240 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    241 ; genAnd
      0080CF 14 03            [ 1]  242 	and	a, (0x03, sp)
                                    243 ; genPointerSet
      0080D1 F7               [ 1]  244 	ld	(x), a
                                    245 ; genLabel
      0080D2                        246 00109$:
                           00007C   247 	C$stm8s_gpio.c$81$1_0$348 ==.
                                    248 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    249 ; genPointerGet
      0080D2 1E 01            [ 2]  250 	ldw	x, (0x01, sp)
      0080D4 F6               [ 1]  251 	ld	a, (x)
                           00007F   252 	C$stm8s_gpio.c$123$1_0$348 ==.
                                    253 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    254 ; genAnd
      0080D5 88               [ 1]  255 	push	a
      0080D6 7B 0C            [ 1]  256 	ld	a, (0x0c, sp)
      0080D8 A5 20            [ 1]  257 	bcp	a, #0x20
      0080DA 84               [ 1]  258 	pop	a
      0080DB 26 03            [ 1]  259 	jrne	00138$
      0080DD CC 80 E8         [ 2]  260 	jp	00111$
      0080E0                        261 00138$:
                                    262 ; skipping generated iCode
                           00008A   263 	C$stm8s_gpio.c$125$2_0$355 ==.
                                    264 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    265 ; genOr
      0080E0 1A 0A            [ 1]  266 	or	a, (0x0a, sp)
                                    267 ; genPointerSet
      0080E2 1E 01            [ 2]  268 	ldw	x, (0x01, sp)
      0080E4 F7               [ 1]  269 	ld	(x), a
                                    270 ; genGoto
      0080E5 CC 80 ED         [ 2]  271 	jp	00113$
                                    272 ; genLabel
      0080E8                        273 00111$:
                           000092   274 	C$stm8s_gpio.c$129$2_0$356 ==.
                                    275 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    276 ; genAnd
      0080E8 14 03            [ 1]  277 	and	a, (0x03, sp)
                                    278 ; genPointerSet
      0080EA 1E 01            [ 2]  279 	ldw	x, (0x01, sp)
      0080EC F7               [ 1]  280 	ld	(x), a
                                    281 ; genLabel
      0080ED                        282 00113$:
                           000097   283 	C$stm8s_gpio.c$131$1_0$348 ==.
                                    284 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
                                    285 ; genEndFunction
      0080ED 5B 05            [ 2]  286 	addw	sp, #5
                           000099   287 	C$stm8s_gpio.c$131$1_0$348 ==.
                           000099   288 	XG$GPIO_Init$0$0 ==.
      0080EF 81               [ 4]  289 	ret
                           00009A   290 	G$GPIO_Write$0$0 ==.
                           00009A   291 	C$stm8s_gpio.c$141$1_0$358 ==.
                                    292 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    293 ; genLabel
                                    294 ;	-----------------------------------------
                                    295 ;	 function GPIO_Write
                                    296 ;	-----------------------------------------
                                    297 ;	Register assignment is optimal.
                                    298 ;	Stack space usage: 0 bytes.
      0080F0                        299 _GPIO_Write:
                           00009A   300 	C$stm8s_gpio.c$143$1_0$358 ==.
                                    301 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    302 ; genAssign
      0080F0 1E 03            [ 2]  303 	ldw	x, (0x03, sp)
                                    304 ; genPointerSet
      0080F2 7B 05            [ 1]  305 	ld	a, (0x05, sp)
      0080F4 F7               [ 1]  306 	ld	(x), a
                                    307 ; genLabel
      0080F5                        308 00101$:
                           00009F   309 	C$stm8s_gpio.c$144$1_0$358 ==.
                                    310 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
                                    311 ; genEndFunction
                           00009F   312 	C$stm8s_gpio.c$144$1_0$358 ==.
                           00009F   313 	XG$GPIO_Write$0$0 ==.
      0080F5 81               [ 4]  314 	ret
                           0000A0   315 	G$GPIO_WriteHigh$0$0 ==.
                           0000A0   316 	C$stm8s_gpio.c$154$1_0$360 ==.
                                    317 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    318 ; genLabel
                                    319 ;	-----------------------------------------
                                    320 ;	 function GPIO_WriteHigh
                                    321 ;	-----------------------------------------
                                    322 ;	Register assignment is optimal.
                                    323 ;	Stack space usage: 0 bytes.
      0080F6                        324 _GPIO_WriteHigh:
                           0000A0   325 	C$stm8s_gpio.c$156$1_0$360 ==.
                                    326 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    327 ; genAssign
      0080F6 1E 03            [ 2]  328 	ldw	x, (0x03, sp)
                                    329 ; genPointerGet
      0080F8 F6               [ 1]  330 	ld	a, (x)
                                    331 ; genOr
      0080F9 1A 05            [ 1]  332 	or	a, (0x05, sp)
                                    333 ; genPointerSet
      0080FB F7               [ 1]  334 	ld	(x), a
                                    335 ; genLabel
      0080FC                        336 00101$:
                           0000A6   337 	C$stm8s_gpio.c$157$1_0$360 ==.
                                    338 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
                                    339 ; genEndFunction
                           0000A6   340 	C$stm8s_gpio.c$157$1_0$360 ==.
                           0000A6   341 	XG$GPIO_WriteHigh$0$0 ==.
      0080FC 81               [ 4]  342 	ret
                           0000A7   343 	G$GPIO_WriteLow$0$0 ==.
                           0000A7   344 	C$stm8s_gpio.c$167$1_0$362 ==.
                                    345 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    346 ; genLabel
                                    347 ;	-----------------------------------------
                                    348 ;	 function GPIO_WriteLow
                                    349 ;	-----------------------------------------
                                    350 ;	Register assignment is optimal.
                                    351 ;	Stack space usage: 1 bytes.
      0080FD                        352 _GPIO_WriteLow:
      0080FD 88               [ 1]  353 	push	a
                           0000A8   354 	C$stm8s_gpio.c$169$1_0$362 ==.
                                    355 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    356 ; genAssign
      0080FE 1E 04            [ 2]  357 	ldw	x, (0x04, sp)
                                    358 ; genPointerGet
      008100 F6               [ 1]  359 	ld	a, (x)
      008101 6B 01            [ 1]  360 	ld	(0x01, sp), a
                                    361 ; genCpl
      008103 7B 06            [ 1]  362 	ld	a, (0x06, sp)
      008105 43               [ 1]  363 	cpl	a
                                    364 ; genAnd
      008106 14 01            [ 1]  365 	and	a, (0x01, sp)
                                    366 ; genPointerSet
      008108 F7               [ 1]  367 	ld	(x), a
                                    368 ; genLabel
      008109                        369 00101$:
                           0000B3   370 	C$stm8s_gpio.c$170$1_0$362 ==.
                                    371 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
                                    372 ; genEndFunction
      008109 84               [ 1]  373 	pop	a
                           0000B4   374 	C$stm8s_gpio.c$170$1_0$362 ==.
                           0000B4   375 	XG$GPIO_WriteLow$0$0 ==.
      00810A 81               [ 4]  376 	ret
                           0000B5   377 	G$GPIO_WriteReverse$0$0 ==.
                           0000B5   378 	C$stm8s_gpio.c$180$1_0$364 ==.
                                    379 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    380 ; genLabel
                                    381 ;	-----------------------------------------
                                    382 ;	 function GPIO_WriteReverse
                                    383 ;	-----------------------------------------
                                    384 ;	Register assignment is optimal.
                                    385 ;	Stack space usage: 0 bytes.
      00810B                        386 _GPIO_WriteReverse:
                           0000B5   387 	C$stm8s_gpio.c$182$1_0$364 ==.
                                    388 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    389 ; genAssign
      00810B 1E 03            [ 2]  390 	ldw	x, (0x03, sp)
                                    391 ; genPointerGet
      00810D F6               [ 1]  392 	ld	a, (x)
                                    393 ; genXor
      00810E 18 05            [ 1]  394 	xor	a, (0x05, sp)
                                    395 ; genPointerSet
      008110 F7               [ 1]  396 	ld	(x), a
                                    397 ; genLabel
      008111                        398 00101$:
                           0000BB   399 	C$stm8s_gpio.c$183$1_0$364 ==.
                                    400 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
                                    401 ; genEndFunction
                           0000BB   402 	C$stm8s_gpio.c$183$1_0$364 ==.
                           0000BB   403 	XG$GPIO_WriteReverse$0$0 ==.
      008111 81               [ 4]  404 	ret
                           0000BC   405 	G$GPIO_ReadOutputData$0$0 ==.
                           0000BC   406 	C$stm8s_gpio.c$191$1_0$366 ==.
                                    407 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    408 ; genLabel
                                    409 ;	-----------------------------------------
                                    410 ;	 function GPIO_ReadOutputData
                                    411 ;	-----------------------------------------
                                    412 ;	Register assignment is optimal.
                                    413 ;	Stack space usage: 0 bytes.
      008112                        414 _GPIO_ReadOutputData:
                           0000BC   415 	C$stm8s_gpio.c$193$1_0$366 ==.
                                    416 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    417 ; genAssign
      008112 1E 03            [ 2]  418 	ldw	x, (0x03, sp)
                                    419 ; genPointerGet
      008114 F6               [ 1]  420 	ld	a, (x)
                                    421 ; genReturn
                                    422 ; genLabel
      008115                        423 00101$:
                           0000BF   424 	C$stm8s_gpio.c$194$1_0$366 ==.
                                    425 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
                                    426 ; genEndFunction
                           0000BF   427 	C$stm8s_gpio.c$194$1_0$366 ==.
                           0000BF   428 	XG$GPIO_ReadOutputData$0$0 ==.
      008115 81               [ 4]  429 	ret
                           0000C0   430 	G$GPIO_ReadInputData$0$0 ==.
                           0000C0   431 	C$stm8s_gpio.c$202$1_0$368 ==.
                                    432 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    433 ; genLabel
                                    434 ;	-----------------------------------------
                                    435 ;	 function GPIO_ReadInputData
                                    436 ;	-----------------------------------------
                                    437 ;	Register assignment might be sub-optimal.
                                    438 ;	Stack space usage: 0 bytes.
      008116                        439 _GPIO_ReadInputData:
                           0000C0   440 	C$stm8s_gpio.c$204$1_0$368 ==.
                                    441 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    442 ; genAssign
      008116 1E 03            [ 2]  443 	ldw	x, (0x03, sp)
                                    444 ; genAssign
                                    445 ; genPointerGet
      008118 E6 01            [ 1]  446 	ld	a, (0x1, x)
                                    447 ; genReturn
                                    448 ; genLabel
      00811A                        449 00101$:
                           0000C4   450 	C$stm8s_gpio.c$205$1_0$368 ==.
                                    451 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
                                    452 ; genEndFunction
                           0000C4   453 	C$stm8s_gpio.c$205$1_0$368 ==.
                           0000C4   454 	XG$GPIO_ReadInputData$0$0 ==.
      00811A 81               [ 4]  455 	ret
                           0000C5   456 	G$GPIO_ReadInputPin$0$0 ==.
                           0000C5   457 	C$stm8s_gpio.c$213$1_0$370 ==.
                                    458 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    459 ; genLabel
                                    460 ;	-----------------------------------------
                                    461 ;	 function GPIO_ReadInputPin
                                    462 ;	-----------------------------------------
                                    463 ;	Register assignment might be sub-optimal.
                                    464 ;	Stack space usage: 0 bytes.
      00811B                        465 _GPIO_ReadInputPin:
                           0000C5   466 	C$stm8s_gpio.c$215$1_0$370 ==.
                                    467 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    468 ; genAssign
      00811B 1E 03            [ 2]  469 	ldw	x, (0x03, sp)
                                    470 ; genAssign
                                    471 ; genPointerGet
      00811D E6 01            [ 1]  472 	ld	a, (0x1, x)
                                    473 ; genAnd
      00811F 14 05            [ 1]  474 	and	a, (0x05, sp)
                                    475 ; genReturn
                                    476 ; genLabel
      008121                        477 00101$:
                           0000CB   478 	C$stm8s_gpio.c$216$1_0$370 ==.
                                    479 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
                                    480 ; genEndFunction
                           0000CB   481 	C$stm8s_gpio.c$216$1_0$370 ==.
                           0000CB   482 	XG$GPIO_ReadInputPin$0$0 ==.
      008121 81               [ 4]  483 	ret
                           0000CC   484 	G$GPIO_ExternalPullUpConfig$0$0 ==.
                           0000CC   485 	C$stm8s_gpio.c$225$1_0$372 ==.
                                    486 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    487 ; genLabel
                                    488 ;	-----------------------------------------
                                    489 ;	 function GPIO_ExternalPullUpConfig
                                    490 ;	-----------------------------------------
                                    491 ;	Register assignment might be sub-optimal.
                                    492 ;	Stack space usage: 1 bytes.
      008122                        493 _GPIO_ExternalPullUpConfig:
      008122 88               [ 1]  494 	push	a
                           0000CD   495 	C$stm8s_gpio.c$233$1_0$372 ==.
                                    496 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    497 ; genAssign
      008123 1E 04            [ 2]  498 	ldw	x, (0x04, sp)
                                    499 ; genPlus
      008125 1C 00 03         [ 2]  500 	addw	x, #0x0003
                                    501 ; genPointerGet
      008128 F6               [ 1]  502 	ld	a, (x)
                           0000D3   503 	C$stm8s_gpio.c$231$1_0$372 ==.
                                    504 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    505 ; genIfx
      008129 0D 07            [ 1]  506 	tnz	(0x07, sp)
      00812B 26 03            [ 1]  507 	jrne	00111$
      00812D CC 81 36         [ 2]  508 	jp	00102$
      008130                        509 00111$:
                           0000DA   510 	C$stm8s_gpio.c$233$2_0$373 ==.
                                    511 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    512 ; genOr
      008130 1A 06            [ 1]  513 	or	a, (0x06, sp)
                                    514 ; genPointerSet
      008132 F7               [ 1]  515 	ld	(x), a
                                    516 ; genGoto
      008133 CC 81 40         [ 2]  517 	jp	00104$
                                    518 ; genLabel
      008136                        519 00102$:
                           0000E0   520 	C$stm8s_gpio.c$236$2_0$374 ==.
                                    521 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    522 ; genCpl
      008136 88               [ 1]  523 	push	a
      008137 7B 07            [ 1]  524 	ld	a, (0x07, sp)
      008139 43               [ 1]  525 	cpl	a
      00813A 6B 02            [ 1]  526 	ld	(0x02, sp), a
      00813C 84               [ 1]  527 	pop	a
                                    528 ; genAnd
      00813D 14 01            [ 1]  529 	and	a, (0x01, sp)
                                    530 ; genPointerSet
      00813F F7               [ 1]  531 	ld	(x), a
                                    532 ; genLabel
      008140                        533 00104$:
                           0000EA   534 	C$stm8s_gpio.c$238$1_0$372 ==.
                                    535 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
                                    536 ; genEndFunction
      008140 84               [ 1]  537 	pop	a
                           0000EB   538 	C$stm8s_gpio.c$238$1_0$372 ==.
                           0000EB   539 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008141 81               [ 4]  540 	ret
                                    541 	.area CODE
                                    542 	.area CONST
                                    543 	.area INITIALIZER
                                    544 	.area CABS (ABS)
