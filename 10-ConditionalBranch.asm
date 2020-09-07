;10-ConditionalBranch (JZ, JNZ, JC, JNC, JO, JNO, JS, JNS)

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp    

    ;Zero Flag
    mov ax, 100
    sub ax, 100
    jz zero ;jnz zero
    mov ax, 35
zero:
    
    ;Carry Flag
    mov al, 100
    add al, 200
    jc carry ;jnc carry
    mov al, 92
carry:
    
    ;Overflow Flag
    mov al, -100
    sub al, 100
    jo overflow ;jno overflow
    mov al, 56
overflow:

    ;Sign Flag
    mov al, 0b
    or al, 10000000b
    js sign ;jns sign
    mov al, 44
sign:
    
    xor rax, rax
    ret