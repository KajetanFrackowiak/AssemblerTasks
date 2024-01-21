org 100h

mov AH, 02h
mov BH, 0		; Ustaw stronę
mov DH, 12		; Ustaw wiersz 12 (środek ekranu)
mov DL, 200		; Ustaw kolumnę 40 (środek ekranu)
int 10h

mov AH, 02h
mov DL, 'C'
int 10h

mov AH, 4Ch
int 21h