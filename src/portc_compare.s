.equ SREG, 0x3f
.equ PORTB, 0x05
.equ DDRB, 0x04
.equ PINC, 0x06
.equ DDRC, 0x07
.org 0
main:	ldi r16, 0
	out SREG, r16
	ldi r16, 0x0F
	out DDRB, r16
	ldi r16, 0xF0
	out DDRC, r16
	in r16, PINC
	cpi r16, 8
	brlo lessthan
	ldi r17, 1
	sub r16, r17
	rjmp done
lessthan:	ldi r17, 2
		add r16,r17
done:	out PORTB, r16
	mainloop:	rjmp mainloop
