org 100h

section .data
    line_length db 0  ; Długość linii

section .text
    mov ah, 09h
    mov dx, msg_input
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'  ; Konwersja ASCII na liczby
    mov line_length, al

    mov ah, 02h
    mov bh, 0  ; Numer strony
    mov dh, 12 ; Wiersz
    mov dl, 40 ; Kolumna (środek ekranu)
    mov ah, 0Ch ; Funkcja "Pixel Write" INT 10h

draw_line:
    mov cx, line_length
    mov al, 02  ; Kolor (zielony)
    int 10h

    jmp $

msg_input db 'Podaj długość linii: $'
