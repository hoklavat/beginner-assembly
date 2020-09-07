;19-RIP

%include "io64.inc"

section .data
data dq 100

section .text
global CMAIN
;default rel
CMAIN:
    mov rbp, rsp   
    
     mov rax, [rel data] ;mov rax, [rip+0x1b20] 
    
    xor rax, rax
    ret