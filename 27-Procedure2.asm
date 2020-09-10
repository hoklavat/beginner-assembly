;27-Procedure2 (Passing Parameter, Register)

%include "io64.inc"

section .data
gt db "parameter 1 is greater than parameter 2",0
lse db "parameter 1 is less than or equal to parameter 2",0

section .text
global CMAIN

IsGreater:
    cmp rcx, rdx
    jg .Greater
    mov rax, 0
    jmp .End

.Greater:
    mov rax, 1
    ret

.End:
    ret

CMAIN:
    mov rbp, rsp
    
    mov rcx, 1
    mov rdx, -5
    call IsGreater
    test rax, rax
    jnz .Greater
    PRINT_STRING lse
    jmp .End
    
.Greater: ;local label
    PRINT_STRING gt

.End:
    
    xor rax, rax
    ret