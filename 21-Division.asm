;21-Division

%include "io64.inc"

section .data
var dq 2

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;8-Bit Unsigned Division
    mov ax, 23
    mov bl, 2
    div bl
    
    ;16-Bit Unsigned Division
    mov dx, 0x40
    mov ax, 0
    mov bx, 0x100
    div bx
    
    ;32-Bit Unsigned Division
    xor edx, edx
    mov eax, 203
    mov ebx, 5
    div ebx
    
    ;64-Bit Unsigned Division
    xor rdx, rdx
    mov rax, 100
    div qword[var]
    
    mov edx, -1 ;sign extension
    mov eax, -100
    mov ebx, 2
    idiv ebx
    
    mov al, 40
    cbw
    mov bl, 10
    idiv bl
    
    mov ax, -200
    cwd
    mov bx, 100
    idiv bx
    
    mov eax, 6000
    cdq
    mov ebx, -6
    idiv ebx
    
    mov rax, 307
    cqo
    mov rbx, 5
    idiv rbx

    xor rax, rax
    ret