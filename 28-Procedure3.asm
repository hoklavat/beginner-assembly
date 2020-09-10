;28-Procedure3 (Passing Parameter, Register)

%include "io64.inc"

section .data
array dq 1000, 1001, 1002, 1003
count equ ($-array)/8

section .text
global CMAIN

ArraySum:
    xor rax, rax

.Add:
    add rax, [rdx]
    add rdx, 8
    loop .Add
    ret

CMAIN:
    mov rbp, rsp
    
    mov rcx, count
    mov rdx, array
    call ArraySum
    PRINT_DEC 8, rax
    
    xor rax, rax
    ret