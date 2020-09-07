;11-UnsignedComparision (JA, JNBE, JAE, JNB, JB, JNAE, JBE, JNA)

%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    mov ax, 10
    cmp ax, 5
    ja above ;jnbe above
    mov ax, 23
above:

    mov ax, 10
    cmp ax, 10
    jae aboveorequal ;jnb aboveorequal
    mov ax, 53
aboveorequal:

    mov ax, 10
    cmp ax, 15
    jb below ;jnae below
    mov ax, 76
below:

    mov ax, 10
    cmp ax, 10
    jbe beloworequal ;jna beloworequal
    mov ax, 76
beloworequal:

    xor rax, rax
    ret