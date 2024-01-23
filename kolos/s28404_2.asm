org 100h

mov AH, 00h
mov AL, 0Dh
int 10h

mov DX, 4Ah

zielone_pikseleczki_z_panem_HYLA:
mov AH, 0Ch
mov AL, 2h
mov CX, 9Fh
inc DX
int 10h
cmp DX, 6Ah
jle zielone_pikseleczki_z_panem_HYLA

mov AX, 4C00h
int 21h