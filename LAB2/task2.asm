org 100h

mov AH, 09h		; Wyswietlanie łańcucha znaków
mov DX, string	; Przekaz adres łańcucha znkaów do rejestru
int 21h			; Wywołaj przerwanie INT 21h

mov AH, 4Ch		; Kod zakończenia programu	(AH=4Ch)
int 21h			; Zakończ program

string db "Kajetan Frąckowiak$"

;In x86 assembly language, AH is one of the registers that make up the AX register. The AX register is a 16-bit register, and it can be further divided into two 8-bit registers: AH (the high byte) and AL (the low byte).