org 100h ;Start

; Ustaw kursor w lewym gornym logu (pozycja 0, 0)
mov AH, 02h 	; Ustaw kod funkcji INT 10h na 02h (ustawienie pozycji kursora)
mov DH, 0		; Ustaw wartość 0 w rejestrze DH (wiersz 0)
mov DL, 0		; Ustaw wartość 0 w rejestrze DL (kolumna 0)
int 10h			; Wywołaj przerwanie 10h

; Wyświetl literę 'A'
mov AH, 02h		; Ustaw kod funkcji INT 10 na 02 (wyświetlanie znaku)
mov DL, 'A'		; Wczytaj literę 'A' do rejestru DL
int 10h 		; Wywołaj przerwanie 

; Zakończ program
mov AH, 4Ch		; Kod zakończenia programu (AH=4Ch)
int 21h  ; Zakończ program

; Koniec programu
