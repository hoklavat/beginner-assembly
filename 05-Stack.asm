;05-Stack

%include "io64.inc"

section .data
var dq 7

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    push 800
    pop rax
    
    mov rbx, 20
    push rbx
    push qword[var]
    pop rcx
    pop qword[var]
    
    xor rax, rax
    ret