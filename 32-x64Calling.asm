;32-x64Calling

%include "io64.inc"

section .data
message db "Result is %d",0

section .text
global CMAIN
extern printf

Addition:
    push rbp
    push r12
    push r13
    mov rbp, rsp
    sub rsp, 48
    mov r12, rcx
    add r12, rdx
    add r12, r8
    add r12, r9
    mov [rbp-8], r12
    mov r13, [rbp+64]
    add r13, [rbp+72]
    add r13, [rbp+80]
    mov [rbp-16], r13
    add r12, r13
    mov rax, r12
    mov rsp, rbp
    pop r13
    pop r12
    pop rbp
    ret

CMAIN:
    mov rbp, rsp
    
    sub rsp, 72
    mov rcx, 1
    mov rdx, 2
    mov r8, 3
    mov r9, 4
    mov qword[rsp+32], 5
    mov qword[rsp+40], 6
    mov qword[rsp+48], 7
    mov qword[rsp+56], 8
    call Addition    
    mov rcx, message
    mov rdx, rax
    call printf    
    add rsp, 72
       
    xor rax, rax
    ret