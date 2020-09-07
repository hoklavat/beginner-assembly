;20-Multiplication

%include "io64.inc"

section .data
var dd 5
value dq 100

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;8-Bit Unsigned Multiplication
    mov al, 10
    mov bl, 30
    mul bl ;ah al
    
    ;16-Bit Unsigned Multiplication
    mov ax, 0x1000
    mov bx, 0x2000
    mul bx ;dx ax, CF/OF set
    
    ;32-Bit Unsigned Multiplication
    mov eax, 100
    mul dword[var] ;edx eax
    
    ;64-Bit Unsigned Multiplication
    mov rax, 300
    mov rbx, 3
    mul rbx
    
    ;64-Bit Signed Multiplication
    mov rax, -100
    mov rbx, 50
    imul rbx
    
    mov rax, 10
    imul rax, 5
    
    mov rbx, -20
    imul rax, rbx
    imul rax, [value]
    
    mov ax, 10000
    mov bx, 20
    imul ax, bx ;CF/OF set
    
    mov rbx, 30
    imul rax, rbx, 20
    imul rax, [value], 10
    
    xor rax, rax
    ret