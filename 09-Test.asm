;09-Test

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp    

    mov al, 01100001b
    test al, 01100110b ;zero flag not set
    
    mov al, 01101101b
    test al, 00010010b ;zero flag set
    
    xor rax, rax
    ret