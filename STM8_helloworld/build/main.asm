;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12069 (Linux)
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

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

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
	G$main$0$0 ==.
	C$main.c$9$0_0$347 ==.
;	./main.c: 9: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
	C$main.c$15$1_0$347 ==.
;	./main.c: 15: GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x01
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
	C$main.c$17$1_0$347 ==.
;	./main.c: 17: while (1)
; genLabel
00102$:
	C$main.c$21$2_0$348 ==.
;	./main.c: 21: GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
; genIPush
	push	#0x01
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_WriteReverse
	addw	sp, #3
	C$main.c$22$2_0$348 ==.
;	./main.c: 22: Delay(0xFFFF);
; genIPush
	push	#0xff
	push	#0xff
; genCall
	call	_Delay
	addw	sp, #2
; genGoto
	jp	00102$
; genLabel
00104$:
	C$main.c$25$1_0$347 ==.
;	./main.c: 25: }
; genEndFunction
	C$main.c$25$1_0$347 ==.
	XG$main$0$0 ==.
	ret
	G$Delay$0$0 ==.
	C$main.c$27$1_0$350 ==.
;	./main.c: 27: void Delay(uint16_t nCount)
; genLabel
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Delay:
	C$main.c$30$1_0$350 ==.
;	./main.c: 30: while (nCount != 0)
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
; genIfx
	tnzw	x
	jrne	00117$
	jp	00104$
00117$:
	C$main.c$32$2_0$351 ==.
;	./main.c: 32: nCount--;
; genMinus
	decw	x
; genGoto
	jp	00101$
; genLabel
00104$:
	C$main.c$34$1_0$350 ==.
;	./main.c: 34: }
; genEndFunction
	C$main.c$34$1_0$350 ==.
	XG$Delay$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
