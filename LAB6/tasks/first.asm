
    a dw 5      
    b dw 3
    c dw 2
    org 100h

    mov AX, 0xAAAA

    ; Push a
    mov BX, [a]
    push BX

    ; Push b
    mov BX, [b]
    push BX

    ; Mnożenie a * b
    pop BX
    imul AX, BX

    ; Push c
    mov BX, [c]
    push BX

    ; Dodawanie (a * b) + c
    pop BX
    add AX, BX

    ; Wypisz wynik
    mov AH, 0
    int 21h

    ; Zakończ program
    int 20h
