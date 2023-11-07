org 100h

mov AX, 10

;add AX, 3h
;sub AX, 5h

add AX, [a]
sub AX, [b]

mov ah, 00h
int 21h

a dw 2137h
b dw 03h