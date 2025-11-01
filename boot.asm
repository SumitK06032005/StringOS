mov al, 'H'
call my_print_function
call some_function

my_print_function:
    mov ah, 0x0e
    int 0x10
    ret


some_function :
    pusha
    mov bx, 10
    add bx, 20
    mov ah, 0x0e
    int 0x10
    popa
    ret

times 510-($-$$) db 0
dw 0xaa55