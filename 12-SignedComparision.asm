;12-SignedComparision (JG, JNLE, JGE, JNL, JL, JNGE, JLE, JNG)

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    mov ax, -10
    cmp ax, -15
    jg greater ;jnle greater
    mov ax, 23
greater:

    mov ax, -10
    cmp ax, -10
    jge greaterorequal ;jnl greaterorequal
    mov ax, 53
greaterorequal:

    mov ax, -10
    cmp ax, -5
    jl less ;jnge less
    mov ax, 76
less:

    mov ax, -10
    cmp ax, -10
    jle lessorequal ;jng lessorequal
    mov ax, 76
lessorequal:

    xor rax, rax
    ret