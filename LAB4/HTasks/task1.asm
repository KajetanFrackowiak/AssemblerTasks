org 100h

mov AH, 01h
int 21h			;| Odczyt literki - zapis AL

cmp AL, 61h
jge wieksze
jl mniejsze

wieksze:
mov AH, 09h
mov DX, mala
int 21h

mniejsze:
mov AH, 09h
mov DX, wielka
int 21h

koniec:
mov AH, 00h
int 21h

mala db "mala literka $"
wielka db "wielka litera$"