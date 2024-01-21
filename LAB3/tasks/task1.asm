org 100h

mov AH, 0Ah       ; Funkcja 0Ah - Wczytaj łańcuch znaków
mov DX, buffer    ; Adres, pod który zostanie wczytany łańcuch
int 21h

mov AL, [buffer+2] ; Wczytaj trzecią literę (indeks 2) do AL
mov AH, 0Eh       ; Funkcja 0Eh - Wyświetl znak z AL
int 10h

mov AH, 4Ch       ; Zakończ program
int 21h

buffer db 10       ; Bufor na wczytany łańcuch, wartość 0 wskazuje na jego zakończenie
