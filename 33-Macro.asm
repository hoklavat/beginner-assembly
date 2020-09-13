;33-Macro

%include "io64.inc"

;single-line macros
%define size 100
%define size 400

%define move mov
%define destination rdi
%define source rsi

%define bsize size*8 ;last size is 1 so 1*8 = 8
%define size 1

%define sum(x,y) (x+y)
%define square(x) ((x)*(x))

%define num1 10
%define num2 20

;multi-line macros
%macro clear_rax 0
    xor rax, rax
%endmacro

%macro clear_reg 1.nolist ;don't list in soft-code
    xor %1, %1
%endmacro

%macro min 3.nolist ;register, integer-1, integer-2
    mov %1, %2
    cmp %1, %3
    jl %%less
    mov %1, %3
%%less:    
%endmacro

section .data
asm db "assembly",0
string times 10 db 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    move source, 10
    move destination, source
    
    mov rax, bsize
    
    mov rbx, sum(1,2)*10
    
    mov rbx, square(num1+num2)
    
    clear_reg rbx
    
    min rax, 1, 3
    min rbx, 10, -10
    PRINT_DEC 8, rax
    NEWLINE
    PRINT_DEC 8, rbx
    NEWLINE
    
    mov rax, 100
    PRINT_DEC 8, rax
    NEWLINE
    PRINT_HEX 8, rax
    NEWLINE
    PRINT_STRING asm
    NEWLINE
    
    GET_DEC 8, rax
    GET_HEX 8, rbx
    PRINT_DEC 8, rax
    NEWLINE
    PRINT_HEX 8, rbx
    NEWLINE
    
    GET_CHAR rbx ;string after integer
    GET_STRING string, 10
    PRINT_STRING string
    NEWLINE
    
    clear_rax
    ret