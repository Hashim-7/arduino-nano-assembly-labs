.equ SREG, 0x3f
.equ PORTB, 0x05
.equ DDRB, 0x04
.org 0
main:	ldi r16, 0
	out SREG, r16
	ldi r16, 0x0F
	out DDRB, r16
mainloop:
	ldi r16, 0x01
	out PORTB, r16
	ldi r17, 40
	call delay
	ldi r16, 0x00
	out PORTB, r16
	ldi r17, 20
	call delay
rjmp mainloop

delay:
	outer:
		ldi r18, 125
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
	ret
