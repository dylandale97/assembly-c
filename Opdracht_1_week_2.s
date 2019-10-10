.dseg
c: .byte 2

.cseg
rjmp start

src:
.def a = r16
.def b = r17

start:
	ldi a, 3
	ldi b, 7

loop:
	cpi a, 0
	breq end
	dec a
	dec b
	sts c,a
	cpi b,6
	breq mina
	cpi b,3
	breq minaa

end:
	rjmp end

mina:
	sub b,a
	rjmp loop

minaa:
	dec a
	rjmp loop
