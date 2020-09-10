;29-Procedure4 (Passing Parameter, Stack)

%include "io64.inc"

section .data
gt db "parameter 1 is greater than parameter 2",0
lse db "parameter 1 is less than or equal to parameter 2",0

section .text
global CMAIN

IsGreater:
    mov rcx, [rsp+16] ;not pop, because rsp steps are 8-Bit by default
    mov rdx, [rsp+8]
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
    
    push 1
    push -5
    call IsGreater
    test rax, rax
    jnz .Greater
    PRINT_STRING lse
    jmp .End
    
.Greater: ;local label
    PRINT_STRING gt

.End:
    add rsp, 16 ;not to change registers
    ;pop rcx
    ;pop rdx
    
    xor rax, rax
    ret