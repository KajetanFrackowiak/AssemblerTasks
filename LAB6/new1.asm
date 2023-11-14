org 100h

mov AX, 0xAAAA
push 2137		;Wklada element na stosie, wartosc  z werzchu stosu
push 0xFFFF
push 0xABCD
push AX

pop AX			;domysle bedzie zdjemmowal z werzchu stosu
pop BX
pop word [przyklad]

mov AH, 0h
int 21h
przyklad dw 0