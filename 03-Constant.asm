;03-Constant

%include "io64.inc"

BufferSize equ 500*4

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    mov rax, BufferSize
    
    xor rax, rax
    ret