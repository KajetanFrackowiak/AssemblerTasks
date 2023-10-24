;org 100h ;obowiazkowe przesuniecie

;mov AH, 02h
;mov DX, string
;int 21h

;mov AH, 00h ;|
;int 21h ;|-zamkniecie programu

;string dw "KOCHAM ASEMBLERA$"

org 100h

mov AX, string
mov BX, [string]

mov AH, 00h
int 21h

string dw 2137h