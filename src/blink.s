.equ SREG, 0x3f
.equ PORTB, 0x05
.equ DDRB, 0x04
.org 0
main:	ldi r16, 0
	out SREG, r16
	ldi r16, 0x0F
	out DDRB, r16
	ldi r16, 0x01
	out PORTB, r16
	ldi r17, 25
	outer:
		ldi r18, 248
		middle:
			ldi r19, 255
			inner:
				nop
				dec r19
				cpi r19, 0
				brne inner
			dec r18
			cpi r18, 0
			brne middle
		dec r17
		cpi r17, 0
		brne outer
	ldi r16, 0x00
	out PORTB, r16
	ldi r17, 25
	outer2:
		ldi r18, 248
		middle2:
			ldi r19, 255
			inner2:
				nop
				dec r19
				cpi r19, 0
				brne inner2
			dec r18
			cpi r18, 0
			brne middle2
		dec r17
		cpi r17, 0
		brne outer2
	mainloop:	rjmp mainloop
