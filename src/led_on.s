.equ SREG, 0x3f
.equ PORTB, 0x05
.equ DDRB, 0x04
.org 0
main:	ldi r16, 0
	out SREG, r16
	ldi r16, 0x0F
	out DDRB, r16
	out PORTB, r16
	mainloop:	rjmp mainloop
