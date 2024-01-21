org 100h

; Definicja łańcucha znaków
string db "To jest przykladowy lancuch znakow$"

; Wydrukuj pełny łańcuch
mov ah, 09h       ; Funkcja 09h - Wyświetl łańcuch znaków
mov dx, string   ; Adres łańcucha znaków
int 21h

; Wydrukuj znak nowej linii (0A0Dh)
mov dl, 0Dh       ; Znak powrotu karetki
mov ah, 02h       ; Funkcja 02h - Wyświetl znak
int 21h

mov dl, 0Ah       ; Znak nowej linii
int 21h

; Wydrukuj łańcuch do trzeciego znaku
mov ah, 02h       ; Funkcja 02h - Wyświetl znak
mov dl, [string+2] ; Wybierz trzecią literę (indeks 2)
int 21h

mov ah, 4Ch       ; Zakończ program
int 21h
