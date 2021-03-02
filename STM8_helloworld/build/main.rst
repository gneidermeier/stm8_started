                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12069 (Linux)
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
      000001                         27 __start__stack:
      000001                         28 	.ds	1
                                     29 
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; interrupt vector 
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
      008000                         47 __interrupt_vect:
      008000 82 00 80 07             48 	int s_GSINIT ; reset
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
      008007                         56 __sdcc_init_data:
                                     57 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   58 	ldw x, #l_DATA
      00800A 27 07            [ 1]   59 	jreq	00002$
      00800C                         60 00001$:
      00800C 72 4F 00 00      [ 1]   61 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   62 	decw x
      008011 26 F9            [ 1]   63 	jrne	00001$
      008013                         64 00002$:
      008013 AE 00 00         [ 2]   65 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   66 	jreq	00004$
      008018                         67 00003$:
      008018 D6 80 23         [ 1]   68 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   69 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   70 	decw	x
      00801F 26 F7            [ 1]   71 	jrne	00003$
      008021                         72 00004$:
                                     73 ; stm8_genXINIT() end
                                     74 	.area GSFINAL
      008021 CC 80 04         [ 2]   75 	jp	__sdcc_program_startup
                                     76 ;--------------------------------------------------------
                                     77 ; Home
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME
                                     80 	.area HOME
      008004                         81 __sdcc_program_startup:
      008004 CC 80 24         [ 2]   82 	jp	_main
                                     83 ;	return from main will return to caller
                                     84 ;--------------------------------------------------------
                                     85 ; code
                                     86 ;--------------------------------------------------------
                                     87 	.area CODE
                           000000    88 	G$main$0$0 ==.
                           000000    89 	C$main.c$9$0_0$347 ==.
                                     90 ;	./main.c: 9: int main(void)
                                     91 ; genLabel
                                     92 ;	-----------------------------------------
                                     93 ;	 function main
                                     94 ;	-----------------------------------------
                                     95 ;	Register assignment is optimal.
                                     96 ;	Stack space usage: 0 bytes.
      008024                         97 _main:
                           000000    98 	C$main.c$15$1_0$347 ==.
                                     99 ;	./main.c: 15: GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
                                    100 ; genIPush
      008024 4B E0            [ 1]  101 	push	#0xe0
                                    102 ; genIPush
      008026 4B 01            [ 1]  103 	push	#0x01
                                    104 ; genIPush
      008028 4B 0F            [ 1]  105 	push	#0x0f
      00802A 4B 50            [ 1]  106 	push	#0x50
                                    107 ; genCall
      00802C CD 80 69         [ 4]  108 	call	_GPIO_Init
      00802F 5B 04            [ 2]  109 	addw	sp, #4
                           00000D   110 	C$main.c$17$1_0$347 ==.
                                    111 ;	./main.c: 17: while (1)
                                    112 ; genLabel
      008031                        113 00102$:
                           00000D   114 	C$main.c$21$2_0$348 ==.
                                    115 ;	./main.c: 21: GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
                                    116 ; genIPush
      008031 4B 01            [ 1]  117 	push	#0x01
                                    118 ; genIPush
      008033 4B 0F            [ 1]  119 	push	#0x0f
      008035 4B 50            [ 1]  120 	push	#0x50
                                    121 ; genCall
      008037 CD 81 0B         [ 4]  122 	call	_GPIO_WriteReverse
      00803A 5B 03            [ 2]  123 	addw	sp, #3
                           000018   124 	C$main.c$22$2_0$348 ==.
                                    125 ;	./main.c: 22: Delay(0xFFFF);
                                    126 ; genIPush
      00803C 4B FF            [ 1]  127 	push	#0xff
      00803E 4B FF            [ 1]  128 	push	#0xff
                                    129 ; genCall
      008040 CD 80 49         [ 4]  130 	call	_Delay
      008043 5B 02            [ 2]  131 	addw	sp, #2
                                    132 ; genGoto
      008045 CC 80 31         [ 2]  133 	jp	00102$
                                    134 ; genLabel
      008048                        135 00104$:
                           000024   136 	C$main.c$25$1_0$347 ==.
                                    137 ;	./main.c: 25: }
                                    138 ; genEndFunction
                           000024   139 	C$main.c$25$1_0$347 ==.
                           000024   140 	XG$main$0$0 ==.
      008048 81               [ 4]  141 	ret
                           000025   142 	G$Delay$0$0 ==.
                           000025   143 	C$main.c$27$1_0$350 ==.
                                    144 ;	./main.c: 27: void Delay(uint16_t nCount)
                                    145 ; genLabel
                                    146 ;	-----------------------------------------
                                    147 ;	 function Delay
                                    148 ;	-----------------------------------------
                                    149 ;	Register assignment is optimal.
                                    150 ;	Stack space usage: 0 bytes.
      008049                        151 _Delay:
                           000025   152 	C$main.c$30$1_0$350 ==.
                                    153 ;	./main.c: 30: while (nCount != 0)
                                    154 ; genAssign
      008049 1E 03            [ 2]  155 	ldw	x, (0x03, sp)
                                    156 ; genLabel
      00804B                        157 00101$:
                                    158 ; genIfx
      00804B 5D               [ 2]  159 	tnzw	x
      00804C 26 03            [ 1]  160 	jrne	00117$
      00804E CC 80 55         [ 2]  161 	jp	00104$
      008051                        162 00117$:
                           00002D   163 	C$main.c$32$2_0$351 ==.
                                    164 ;	./main.c: 32: nCount--;
                                    165 ; genMinus
      008051 5A               [ 2]  166 	decw	x
                                    167 ; genGoto
      008052 CC 80 4B         [ 2]  168 	jp	00101$
                                    169 ; genLabel
      008055                        170 00104$:
                           000031   171 	C$main.c$34$1_0$350 ==.
                                    172 ;	./main.c: 34: }
                                    173 ; genEndFunction
                           000031   174 	C$main.c$34$1_0$350 ==.
                           000031   175 	XG$Delay$0$0 ==.
      008055 81               [ 4]  176 	ret
                                    177 	.area CODE
                                    178 	.area CONST
                                    179 	.area INITIALIZER
                                    180 	.area CABS (ABS)
