.equ SREG, 0x3f
.equ DDRB, 0x04
.equ PORTB, 0x05
.equ DDRD, 0x0A
.equ PORTD, 0x0B

.org 0
main:		ldi r16, 0
			out SREG, r16
			ldi r16, 0x0F
			out DDRB, r16
			ldi r16, 0xF0
			out DDRD, r16
			ldi r16, 0xDB
			ldi r17, 0b00001111
			and r16, r17
			out PORTB, r16
			ldi r16, 0xDB
			ldi r17, 0b11110000
			and r16, r17
			out PORTD, r16
mainloop: 	rjmp mainloop
