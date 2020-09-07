;02-Variable

%include "io64.inc"

section .data
sum dq 20 ;name size value
SUM dq 20 ;case sensitive
item db 10
_counter dd 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp ;for correct debugging
    
    mov rax, sum ;address
    mov rax, [sum] ;value
    
    xor rax, rax
    ret