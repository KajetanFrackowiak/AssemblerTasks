org 100h

mov al, [a]   ; Wczytaj wartość z 'a' do rejestru AL
add al, al     ; Pomnóż 'a' przez 2 (dodaj 'a' do samego siebie)
add al, [b]   ; Dodaj 'b' do 'AL'
add al, [b]   ; Pomnóż 'b' przez 2 (dodaj 'b' do samego siebie)
sub al, [c]   ; Odejmij 'c' od 'AL'
sub al, [c]   ; Pomnóż 'c' przez 2 (odejmij 'c' od samego siebie)

mov [wynik], al

mov ah, 02h		; wypisz znak na ekranie
mov dl, al 		; wartosc do wyswietlenia w rejestrze dl
int 21h

mov ah, 4Ch
int 21h

a db 02h
b db 03h
c db 04h
wynik db 0		; Zmienna na wynik 
