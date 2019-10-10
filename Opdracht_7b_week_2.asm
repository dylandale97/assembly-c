;
; AssemblerApplication3.asm
;
; Created: 2-10-2019 13:34:35
; Author : Brouwnie
;


; Replace with your application code
start:
	ldi r16, 0xff
	out DDRD, r16
	ldi r16, 0x0
	out DDRB, r16

loop:
	lds r16, 0x23
	andi r16, 0b00001100
	cpi r16, 0x0
	breq loop	;dit verwijderen voor 7a
	mov r17, r16
	out PORTD,r17
	rjmp loop