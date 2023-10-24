;org 100h ;obowiazkowe przesuniecie

;mov AH, 02h
;mov DX, string
;int 21h

;mov AH, 00h ;|
;int 21h ;|-zamkniecie programu

;string dw "KOCHAM ASEMBLERA$"

org 100h

mov BX, [string], 1337h

mov AH, 00h
int 21h

string db 2137h