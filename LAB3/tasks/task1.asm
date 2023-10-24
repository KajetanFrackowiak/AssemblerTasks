;org 100h

;mov AH, 02h      ; Wybierz funkcję 02h - Wyświetl znak
;mov DL, [string+2] ; Wczytaj pierwszy znak z ciągu znaków
;int 21h

;mov AH, 00h      ; Zakończ program
;int 21h

;string db "KOCHAM ASEMBLERA$"


org 100h
mov AH, 0Ah
mov DX, string 
int 21h 		;| wczytanie string

mov AH, 02h
mov DL, [string+4]
int 21h				;| wydruk trzeciej literki

mov AH, 00h
int 21h

string db 10h