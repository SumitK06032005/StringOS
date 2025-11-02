org 0x7c00

jmp main

message: db 'Today I am going to learn new things', 0

print:
    mov ah, 0eh
._loop:
    lodsb
    cmp al,0
    je .done
    int 10h
    jmp ._loop
.done:
    ret
main:
    mov si, message
    call print
    ret


times 510-($-$$) db 0
dw 0xaa55
