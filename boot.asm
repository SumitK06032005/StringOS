org 0x7c00
; Initialize segment registers
xor ax, ax
mov ds, ax
mov es, ax

start:
    mov bx, msg1 
    call print_string

    mov bx, msg2
    call print_string

    jmp $

%include "print_string.asm"

; Data
msg1: db "Hello, World",0
msg2: db "Goodbye",0

; Padding and magic number 
times 510-($-$$) db 0
dw 0xaa55