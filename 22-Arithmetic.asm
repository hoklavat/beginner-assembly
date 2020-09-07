;22-Arithmetic

%include "io64.inc"

section .data
varA dq 2
varB dq 20
varC dq 10
result dq 0
divzero dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;result = (varA * -100)/(varB - varC)
    mov rax, -100
    imul qword[varA] ;rdx:rax = varA * -100
    
    mov rbx, qword[varB]
    sub rbx, qword[varC] ;rbx = varB - varC
    jz DivByZero
    idiv rbx
    mov [result], rax
    mov byte[divzero], 0
    jmp end    
DivByZero:
    mov byte[divzero], 1
end:
    xor rax, rax
    ret