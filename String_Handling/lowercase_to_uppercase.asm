 .model small                  
.stack 100h                    
.data
msg1 db 'Enter a character in lowercase:  $'
msg2 db 'Entered character in uppercase:  $'
.code
main proc
    ;printing the first message
    mov ax,@data
    mov ds,ax
    mov dl,msg1
    mov dx, offset msg1      ;to read each character in each string

    mov ah,9    ; screen routine for string printing
    int 21h

    mov ah, 1          ; inputing the character screen routine
    int 21h
    sub al,32         ; converting the uppercase
    mov bl,al         ; storing the character in bl
    mov dx,10          ;moving to next line
    mov ah,2
    int 21h
    mov dx,13          ;moving the cursor to first line
    mov ah,2
    int 21h
    ;printing the uppercase message
    mov ax,@data
    mov ds,ax
    mov dl,msg2
    mov dx, offset msg2
    mov ah,9      ;printing
    int 21h
    mov dl,bl         ;printing the stored character
    mov ah,2
    int 21h
    mov ah,4ch          ;terminating the program
    int 21h
main endp
end main