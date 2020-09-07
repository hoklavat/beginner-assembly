;14-IfElse

%include "io64.inc"

section .data
x dq 30
y dq 20
z dq 30

section .text
global CMAIN
CMAIN:
    mov rbp, rsp

; if(x > y && y < z) x = 100 else y = 200
if:
    mov rax, qword[x]
    mov rbx, qword[y]
    cmp rax, rbx
    jle else
    mov rax, qword[z]
    cmp rbx, rax
    jge else
    mov qword[x], 100
    jmp endif
else:
    mov qword[y], 200
endif:

    xor rax, rax
    ret