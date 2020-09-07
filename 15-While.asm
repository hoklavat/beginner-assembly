;15-While

%include "io64.inc"

section .data
x dq 0
y dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp

; while(x <= y) x++
while:
    mov rax, [x]
    cmp rax, [y]
    jg endwhile
    inc qword[x]
    jmp while
endwhile:

    mov qword[x], 0
dowhile:
    inc qword[x]
    mov rax, [x]
    cmp rax, [y]
    jle dowhile
enddowhile:

; Faster Version
    mov qword[x], 0
    mov rax, qword[x]
    mov rbx, qword[y]
dowhile2:
    inc rax
    cmp rax, rbx
    jle dowhile2
enddowhile2:
    mov [x], rax

    xor rax, rax
    ret