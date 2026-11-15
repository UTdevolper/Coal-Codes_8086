.model small
.stack 100h
.data
.code

main proc

mov dl,'u'
mov ah,2
int 21h

mov dl,'z'
mov ah,2
int 21h

mov dl,'m'
mov ah,2
int 21h

mov dl,'a'
mov ah,2
int 21h

mov dl,10
int 21h

mov dl,'7'
mov ah,2
int 21h

mov dl,'2'
mov ah,2
int 21h

mov dl,'9'
mov ah,2
int 21h

mov dl,'0'
mov ah,2
int 21h

mov dl,'0'
mov ah,2
int 21h

main endp
end main