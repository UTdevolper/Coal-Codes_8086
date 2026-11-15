.model small
.stack 100h
.data
.code

main proc

mov dl,'2'
mov ah,2
int 21h

mov dl,','
mov ah,2
int 21h

mov dl,'9'
mov ah,2
int 21h

mov dl,10
int 21h

mov dl,50
mov ah,2
int 21h

mov dl,44
mov ah,2
int 21h

mov dl,57
mov ah,2
int 21h

main endp
end main