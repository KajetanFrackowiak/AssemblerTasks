org 100h

mov AH, 0Ah
mov DX, bufor
int 21h

mov AL, [bufor+1]
mov AH, 00

mov BL, 2
div BL

mov BP, bufor+2
mov AH, 00h
add BP, AX
mov byte [BP], '$'

mov AH, 09h
mov DX, newline
int 21h

mov DX, bufor+2
int 21h

mov AX, 4C00h
int 21h

newline db 0Ah, 0Dh, '$'
bufor db 0xFF