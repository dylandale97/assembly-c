;
; AssemblerApplication3.asm
;
; Created: 2-10-2019 13:34:35
; Author : Brouwnie
;


; Replace with your application code
.dseg
	dest: .byte 12

.cseg
	rjmp start

src:
.def a = r16
.def b = r17

start:
	ldi xh, high(dest)
	ldi xl, low(dest)
	ldi a, 1
	ldi b, 0
	ldi r18, 3

loop:
	st x+, a
	cpi b,1
	breq loop1
	mul a, r18
	cp a, r0
	brsh end
	mov a, r0
	ldi b, 1
	rjmp loop

loop1:
	ldi b,0
	dec a
	ldi b,0
	rjmp loop

end:
	rjmp end