;23-Shift

%include "io64.inc"

section .data
var db 10110001b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;Left Shift
    mov al, 10110001b
    shl al, 1
    
    mov al, 10110001b
    mov cl, 1
    shl al, cl
    
    shl byte[var], 1
    
    mov al, 10110001b
    sal al, 1
    
    ;Right Shift    
    mov al, 10110001b
    shr al, 1
    
    mov al, 10110001b
    mov cl, 1
    shr al, cl
    
    shr byte[var], 1

    mov al, 10110001b
    sar al, 1
    
    xor rax, rax
    ret