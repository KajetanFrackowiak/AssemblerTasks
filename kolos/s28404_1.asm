org 100h

mov ah, 01h     
int 21h
mov dl, al 


cmp dl, 'A' 
jb nie_zwiekszona
cmp dl, 'Z'
ja nie_zwiekszona

add dl, 5          
jmp drukuj_sie

nie_zwiekszona:
cmp dl, 'a' 
jb drukuj_sie
cmp dl, 'z'
ja drukuj_sie

sub dl, 5     

drukuj_sie:
mov ah, 02h      
int 21h

mov ah, 00h     
int 21h