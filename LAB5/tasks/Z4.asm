org 100h

; Wczytaj wartości 'a', 'b', i 'c' od użytkownika
mov ah, 0Ah
mov dx, input_a
int 21h

mov ah, 0Ah
mov dx, input_b
int 21h

mov ah, 0Ah
mov dx, input_c
int 21h

; Przenieś wartość z bufora do AX i przekształć na liczbę
mov al, [input_a+2]
sub al, '0'
mov ah, 0
mov [a], ax

mov al, [input_b+2]
sub al, '0'
mov ah, 0
mov [b], ax

mov al, [input_c+2]
sub al, '0'
mov ah, 0
mov [c], ax

; Oblicz wynik 2a + 2b - 2c
mov ax, [a]
add ax, ax    ; Pomnóż 'a' przez 2
add ax, [b]
add ax, ax    ; Pomnóż 'b' przez 2
sub ax, [c]
sub ax, ax    ; Pomnóż 'c' przez 2

; Wyświetl wynik
mov [wynik], ax
mov ah, 02h
mov dl, al
int 21h

; Zakończ program
mov ah, 4Ch
int 21h

a dw 0
b dw 0
c dw 0
wynik dw 0
input_a db 12, 0
input_b db 12, 0
input_c db 12, 0
