.model small                    
.stack 100h                    
.data
.code
main proc
    ;Entering the first number
    mov ah,1
    int 21h
    mov bl,al
    ;Entering the space
    mov dl,' '
    mov ah,2
    int 21h
    ;Entering the second number
    mov ah,1
    int 21h
    mov cl,al
    ;swapping values
    mov dl,bl
    mov bl,cl
    mov cl,dl
    ;just swapping sign to show after changes
    mov dl,'-'
    mov ah,2
    int 21h

    mov dl,'>'
    mov ah,2
    int 21h
    ;displaying swapped value of bl
    mov dl,bl
    mov ah,2
    int 21h

    mov dl,' ' ;Entering the space
    mov ah,2
    int 21h
    ;displaying swapped value of cl
    mov dl,cl
    mov ah,2
    int 21h

    mov ah,4ch       ;giving control back to the program
    int 21h

main endp
end main