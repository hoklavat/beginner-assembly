;06-Flags

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;Carry Flag
    mov al, 100
    add al, 255
    
    mov bl, 10
    sub bl, 30
    
    ;Overflow Flag
    mov al, 127
    add al, 1
    
    mov bl, -128
    sub bl, 1
    
    ;Sign Flag
    mov ax, 10
    sub ax, 20
    
    ;Zero Flag
    mov rax, 5
    sub rax, 5
    
    xor rax, rax
    ret