.model small
.stack 100h
.data
.code

main proc

mov dl,'X'
mov ah,2
int 21h

mov dl,','
mov ah,2
int 21h

mov dl,'Y'
mov ah,2
int 21h

mov dl,10
int 21h

mov dl,88
mov ah,2
int 21h

mov dl,44
mov ah,2
int 21h

mov dl,89
mov ah,2
int 21h

main endp
end main