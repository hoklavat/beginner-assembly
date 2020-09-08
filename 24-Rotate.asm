;24-Rotate

%include "io64.inc"

section .data
var db 10110001b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;Rotate Left
    mov al, 10110001b
    rol al, 1
    
    mov al, 10110001b
    mov cl, 1
    rol al, cl
    
    rol byte[var], 1
    
    clc ;stc
    mov al, 10110001b
    rcl al, 1
    rcl al, 1
    
    ;Rotate Right
    mov al, 10110001b
    ror al, 1
    
    mov al, 10110001b
    mov cl, 1
    ror al, cl
    
    ror byte[var], 1
    
    clc ;stc
    mov al, 10110001b
    rcr al, 1
    rcr al, 1
    
    xor rax, rax
    ret