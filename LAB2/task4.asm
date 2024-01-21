org 100h ; Start

; Read a character from the keyboard
mov AH, 01h     ; Set the function code for INT 21h to 01h (read character)
int 21h         ; Invoke the INT 21h interrupt

; Print a space
mov AH, 02h      ; Set the function code for INT 21h to 02h (print character)
mov DL, ' '      ; Load a space character into DL register
int 21h          ; Invoke the INT 21h interrupt

; Print the character that was read
mov AH, 02h      ; Set the function code for INT 21h to 02h (print character)
int 21h          ; Invoke the INT 21h interrupt

; Terminate the program
mov AH, 4Ch      ; Set the exit program function code (AH=4Ch)
int 21h          ; Terminate the program

; End of the program
