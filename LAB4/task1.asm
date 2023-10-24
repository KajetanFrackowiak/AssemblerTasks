org 100h

mov AH, 01h
int 21h			;| Odczyt literki - zapis AL

cmp AL, 5Fh
jge wieksze
jl mniejsze

wieksze:
mov AH, 09h
mov DX, wiekszy
int 21h
jmp koniec

mniejsze:
mov AH, 09h
mov DX, miejszy
int 21h
jmp koniec


rowny:
mov AH, 09h
mov DX, rowny
int 21h

koniec:
mov AH, 00h
int 21h

miejszy db ">$"
wiekszy db "<$"
rowny db "==$"