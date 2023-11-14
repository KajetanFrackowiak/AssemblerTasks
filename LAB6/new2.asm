org 100h

push [a]	; Wrzucamy na stos
push [b]	; Wrzucamy na stos
pop AX		; zdejmujemy ze stosu
pop BX		; zdejmujemy ze stosu
mul BX		
push AX
pop AX
pop BX
add AX, BX
push AX

mov AH, 0h
int 21h

a dw 2
b dw 3