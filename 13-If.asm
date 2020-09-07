;13-If

%include "io64.inc"

section .data
var dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp

; if(var == 10) var = 0
if:
    mov rax, qword[var]
    cmp rax, 10
    jne endif
    mov qword[var], 0
endif:

    xor rax, rax
    ret