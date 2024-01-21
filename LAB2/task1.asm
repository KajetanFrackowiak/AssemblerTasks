org 100h         ; Start

mov DL, 'A'      ; Wczytaj literkę 'A' do rejestru DL
mov AH, 02h      ; Ustaw kod funkcji INT 21h na 02h (wyświetlanie znaku)
int 21h          ; Wywołaj przerwanie INT 21h

mov DL, 'g'      ; Wczytaj literkę 'g' do rejestru DL
mov AH, 02h      ; Ustaw kod funkcji INT 21h na 02h (wyświetlanie znaku)
int 21h          ; Wywołaj przerwanie INT 21h

mov AX, 4C00h    ; Kod zakończenia programu (AH=4Ch, AL=00h)
int 21h          ; Zakończ program

; Koniec programu


;http://www.ctyme.com/intr/int-21.htm
;https://mhyla.com/wia2-2/