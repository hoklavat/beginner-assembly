;

%include "io64.inc"

section .data

section .text
global CMAIN
CMAIN:
    mov rbp, rsp    
    
    xor rax, rax
    ret