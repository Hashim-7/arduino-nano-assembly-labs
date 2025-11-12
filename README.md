# arduino-nano-assembly-labs

This repository contains assembly language programs for the Arduino Nano.  
The projects demonstrate I/O control, simple arithmetic, and conditional branching using the ATmega328 microcontroller.

---

## File Descriptions

| File Name          | Description |
|-------------------|-------------|
| `clr_sreg.s`      | Clears the AVR Status Register (SREG) to initialize the system. |
| `led_on.s`        | Turns on LEDs connected to D8, D10, and D11; D9 remains off. |
| `portc_compare.s` | Reads 4-bit input from PORTC, adds 2 if <8, subtracts 1 if ≥8, outputs the result to PORTB LEDs. |
| `blink.s`         | Blinks the LED connected to D8 using a software delay loop. |
| `write_DB.s`      | Outputs the byte `0xDB` across 8 LEDs connected to PORTB (PB0–PB3) and PORTD (PD4–PD7) in an infinite loop. |
| `bit_shifting.s`  | Displays a shifting LED pattern: loads `0x55`, shifts bits left and right using LSL and LSR, and outputs the result to LEDs with a timed delay for visible animation. |

---

## Usage

1. Assemble the `.s` files in `src/` to generate the `.hex` files in `build/` using your preferred AVR assembler.  
2. Upload the `.hex` files to the Arduino Nano using `avrdude` or the Arduino IDE.  
3. Observe the corresponding LED outputs as described for each program.
