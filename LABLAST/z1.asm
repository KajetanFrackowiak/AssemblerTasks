;zad 1
org 100h
mov AH, 01h	; odczytanie znaku; wynik w AL
int 21h

cmp AL, 3Fh ; +10 (dec)
jle caseA
cmp AL, 5Fh
jle caseB	; +7 Eh
cmp AL, 7Eh
jle caseC

caseA:
add AL, 10
caseB:
add AL, 7	; dodac 7
caseC:
sub AL, 12  ; odjac 12

return:
mov AH, 02h
mov DL, AL
int 21h

mov AX, 4C00h
int 21h
;----------------------------