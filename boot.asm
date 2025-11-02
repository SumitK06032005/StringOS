org 0x7c00

; Initialize segment registers

xor ax, ax   ; Making ax = 0x0000
mov ds, ax   ; Setting ds to 0x0000
mov es, ax   ; Also setting es to it as well

start:
    mov bx, msg1 
    call print_string

    mov bx, msg2
    call print_string

    jmp $

%include "print_string.asm"

; Data
msg1: db "Hello, World",0     ; Labeling them and also data is stored
msg2: db "Goodbye",0          ; in ds and es

; Padding and magic number 
times 510-($-$$) db 0
dw 0xaa55