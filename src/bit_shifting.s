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
			ldi r16, 0x55
mainloop:	call lights
			lsl r16
			call lights
			lsr r16
			rjmp mainloop

delay:
	ldi r17, 20
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

lights:
	ldi r17, 0b00001111
	and r17, r16
	out PORTB, r17
	ldi r17, 0b11110000
	and r17, r16
	out PORTD, r17
	call delay
	ret
