.model small                        
.stack 100h                        
.data
msg1 db 'The user entered  $'
msg2 db ' character.$'
char db ?
.code
main proc
    ;printing the msg1
    mov ax,@data
    mov ds,ax
    mov dl,msg1
    mov dx,offset msg1    ; reading each character

    mov ah,9           ;printing the string
    int 21h

    mov ah,1          ;inputing the character
    int 21h
    ;printing msg 2
    mov ax,@data
    mov ds,ax
    mov dl,msg2
    mov dx,offset msg2      ;reading each scharcter in string

    mov ah,9                ;printing the string
    int 21h
    mov ah,4ch                ;terminate the program
    int 21h
main endp
end main