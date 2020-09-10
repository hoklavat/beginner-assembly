;31-LocalVariables

%include "io64.inc"

section .data
varA dq 100
varB dq 200

section .text
global CMAIN

Proc:
    push rbp
    mov rbp, rsp
    
    sub rsp, 16 ;allocate storage on stack for two variables
    
    mov rcx, [rbp+24] ;varA
    mov rdx, [rbp+16] ;varB
    
    mov [rbp-8], rcx 
    mov [rbp-16], rdx
    
    mov rsp, rbp ;restore rsp
    pop rbp
    ret

CMAIN:
    mov rbp, rsp
    
    push qword[varA]
    push qword[varB]
    call Proc    
    add rsp, 16    
    
    xor rax, rax
    ret