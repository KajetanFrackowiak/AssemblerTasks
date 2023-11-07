org 100h

mov al, [a]
mul byte [b]	; Pomnóż wartość w 'al' przez 'b'
add al, [c]		; dodaj 'c' do al

mov [wynik], al	; zapisz wynik w 'wynik'

mov ah, 02h		;wyswietl
mov dl, al		; wartosc do wyswietlenia w rejestrze dl
int 21h

mov ah, 4Ch		; funkcja 4Ch zakoncz program
int 21h

a db 02h
b db 03h
c db 04h
wynik db 0		; zmienna wynik 