a dw 5
b dw 3
c dw 2
org 100h

mov AX, OxAAAA

; Push a
mov BX, [a]

; Push b
mov BX, [b]

; Mnozenie
pop BX
add AX, BX

; Push c
mov BX, [c]
push BX

; odejmowanie
pop BX
sub AX, BX

