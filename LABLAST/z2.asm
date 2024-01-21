org 100h

mov AH, 01h		; odczyt znaku - return w AL
int 21h

cmp AL, 41h  ; porownac z literka 'A', AL < 41h
jle error 	; wszystko ponizej 41 = error,
cmp AL, 5Ah ; AL > 41 && < 5Ah
jle wielka
cmp AL, 61h  ; mala literka a
jl error
cmp AL, 7Ah
jle mala
jg error

koniec:
mov AX, 4C00H
int 21h

wielka:
mov AH, 02h
mov DX, 0h
int 10h  ; to cale przeniesie w lewy gorny róg kursor
mov AH, 09h
mov DX, Str_wielka
int 21h
jmp koniec

mala:
mov AH, 09h
mov DX, Str_mala
int 21h
jmp koniec

error:
mov AH, 09h
mov DX, Str_error
int 21h
jmp koniec


Str_wielka db "WIELKA LITERA$"
Str_mala db "mala litera$"
Str_error db "error$"