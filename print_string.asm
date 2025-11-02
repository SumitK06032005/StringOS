print_string:
    push ax
    push bx
    .loop:
        mov al, [bx]
        cmp al, 0
        je .end

        mov ah, 0x0e
        int 0x10
        inc bx
        jmp .loop

    .end:
        pop ax 
        pop bx
        ret