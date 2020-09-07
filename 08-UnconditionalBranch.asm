;08-UnconditionalBranch

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    jmp end
    mov ax, 20
    add ax, 30
end:

    xor rax, rax
    ret