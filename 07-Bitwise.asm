;07-Bitwise

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;AND
    mov rax, 10011011b
    and rax, 11000111b
    
    ;OR
    mov rax, 10011011b
    or rax,  11000111b
    
    ;XOR
    mov rax, 10011011b
    xor rax, 11000111b
    
    ;Zero Flag
    mov al, 10011011b
    and al, 0
    
    ;Sign Flag
    mov al, 10010001b
    or al,  10000000b
    
    ;NOT
    mov al, 10010001b
    not al
    
    xor rax, rax
    ret