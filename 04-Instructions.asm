;04-Instructions

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;Value to Register
    mov rax, 0x1020304050607080    
    ;add rbx, 0x1020304050607080 ;only last 8 digit
    add rbx, rax
    
    ;Negative Number
    xor rax, rax
    add rax, 0x80000000 ;0xffffffff80000000
    xor rax, rax
    mov rbx, 0x80000000
    add rax, rbx ;0x80000000
    
    ;Partitions
    mov r10, -1
    mov r10b, 0 ;last 2 digit zeroed
    mov r10w, 0 ;last 4 digit zeroed
    or r10d, 0 ;first 8 digit cleared
    
    
    xor rax, rax
    ret