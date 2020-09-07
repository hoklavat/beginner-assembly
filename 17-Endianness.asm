;17-Endianness

%include "io64.inc"

section .data
value dd 0x12345678

section .text
global CMAIN
CMAIN:
    mov rbp, rsp    
    
    mov al, [value] ;0x78
    mov bl, [value+1] ;0x56
    mov cl, [value+2] ;0x34
    mov dl, [value+3] ;0x12  
    
    xor rax, rax
    ret