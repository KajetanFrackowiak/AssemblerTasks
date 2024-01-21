org 100h

mov si, litera        ; Wskaźnik do etykiety 'litera'
mov al, [si]          ; Wczytaj znak z etykiety 'litera' do AL
mov ah, 09h           ; Funkcja 09h: Wyświetl znak
int 21h

mov si, string        ; Wskaźnik do etykiety 'string'
mov al, [si]          ; Wczytaj pierwszy znak z etykiety 'string' do AL
mov ah, 09h           ; Funkcja 09h: Wyświetl znak
int 21h

add si, 3             ; Przesuń wskaźnik o 3 bajty (trzy znaki)
mov al, [si]          ; Wczytaj znak spod nowego wskaźnika do AL
mov ah, 09h           ; Funkcja 09h: Wyświetl znak
int 21h

mov ah, 00h           ; Funkcja 00h: Zakończ program
int 21h

litera db 'A'
string db 'asembler jest super'
