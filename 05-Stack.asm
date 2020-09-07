;05-Stack

%include "io64.inc"

section .data
var dd 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    push eax
    pop ebx
    push dword[var]
    
    xor rax, rax
    ret