org 100h

mov AH, 09h       ; Wybierz funkcję 09h - Wyświetl ciąg znaków
mov DX, string    ; Wczytaj adres ciągu znaków
int 21h

mov AH, 00h       ; Zakończ program
int 21h

string db "Kc Assembler$"
