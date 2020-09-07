;16-Array

%include "io64.inc"

section .data
array1 dd 1, 2, 3, 4, 5 ;4x8 {1, 2, 4, 8}
array2 dq 10, 20, 30, 40, 50, 60, 70, 80 ; 8x8
Size equ $-array2 ;
TypeSize equ 8
Count equ Size/TypeSize

section .text
global CMAIN
CMAIN:
    mov rbp, rsp    
    
    mov eax, [array1+12] ;32-Bit direct addressing, offset=4x3=12
    
    mov rsi, array2
    mov rax, rsi
    mov rcx, 2
    mov rbx, [rsi+rcx*8] ;mov rbx, [rsi+16], third element, 64-Bit direct addressing
    mov rbx, [rsi+rcx*8+16] ;fifth element, 64-Bit indirect addressing
    
    mov rsi, array2
    mov rdx, Count
    xor rcx, rcx
printvar:
    mov rax, [rsi+rcx*TypeSize]
    PRINT_DEC 8, rax
    NEWLINE
    inc rcx
    cmp rcx, rdx
    jl printvar
        
    xor rax, rax
    ret