.model small                    
.stack 100h                     
.data
.code
main proc
    ;Entering the first number
    mov ah,1
    int 21h
    mov bl,al

    mov dl,'-' ;Entering the + sign
    mov ah,2
    int 21h
    ;Entering the second number
    mov ah,1
    int 21h
    mov cl,al

    sub bl,cl    ;adding the two numbers (Register addressing mode)
    add bl,48

    mov dl,'='
    mov ah,2
    int 21h
    ;displaying result
    mov dl,bl
    mov ah,2
    int 21h

    mov ah,4ch       ;giving control back to the program
    int 21h

main endp
end main