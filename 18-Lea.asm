;18-Lea

%include "io64.inc"

section .data
sum dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    mov rax, [sum]
    lea rbx, [sum] ;load address of sum to rbx
    mov rcx, [rbx]
    lea rdx, [rax+10]
    
    xor rax, rax
    ret