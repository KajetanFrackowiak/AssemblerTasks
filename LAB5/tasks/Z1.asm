org 100h

mov ax, [a]   ; Wczytaj wartość z 'a' do rejestru AX
add ax, [b]   ; Dodaj wartość z 'b' do rejestru AX
add ax, [c]   ; Dodaj wartość z 'c' do rejestru AX

mov [wynik], ax ; Zapisz wynik w 'wynik'

mov ah, 02h     ; Funkcja 02h: Wypisz znak na ekranie
mov dl, ah      ; Wartość do wyświetlenia w rejestrze DL
int 21h         ; Wywołaj przerwanie DOS

mov ah, 4Ch     ; Funkcja 4Ch: Zakończ program
int 21h

a db 02h
b db 03h
c db 04h
wynik dw 0     ; Zmienna na wynik (dw for word, 16-bit)
