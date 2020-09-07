;01-Debug

%include "io64.inc"

section .data
counter dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    mov rax, 50
    mov [counter], rax
    
    xor rax, rax
    ret