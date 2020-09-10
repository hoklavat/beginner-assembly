;30-Procedure5 (Passing Parameter, Stack)

%include "io64.inc"

section .data
array dq 1000, 1001, 1002, 1003
count equ ($-array)/8

section .text
global CMAIN

ArraySum:
    mov rcx, [rsp+16]
    mov rdx, [rsp+8]
    xor rax, rax

.Add:
    add rax, [rdx]
    add rdx, 8
    loop .Add
    ret

CMAIN:
    mov rbp, rsp
    
    push count
    push array
    call ArraySum
    PRINT_DEC 8, rax
    add rsp, 16
    
    xor rax, rax
    ret