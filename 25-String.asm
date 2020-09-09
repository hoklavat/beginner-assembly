;25-String

%include "io64.inc"

section .data
source db "assembly language",0
length equ $-source
destination times length db 0
found db 0

source2 dd 0x11111111, 0x22222222, 0x33333333, 0x44444444
length2 equ $-source2
type2 equ 4
destination2 times length db 0

wordlist dw 0x12, 0xab, 0x45, 0x67
count equ 4

s1 db "abcdefgh",0
s2 db "abcdefgh",0
length3 equ $-s1
equal db 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp
    
    ;mov length elements from beginning in source to destination
    cld
    mov rsi, source
    mov rdi, destination
    mov rcx, length
    rep movsb
    
    ;mov rcx elements from beginning in source2 to destination2 
    cld
    mov rsi, source2
    mov rdi, destination2
    mov rcx, length2/type2
    rep movsd
    
    ;replace all characters in source with a
    cld
    mov rdi, source
    mov al, 'a'
    mov rcx, length - 1
    rep stosb
    mov byte[rdi], 0
    
    ;replace all numbers in source with 1
    cld
    mov rdi, wordlist
    mov rcx, count
    mov ax, 1
    rep stosw
    
    ;convert all lowercase characters in source to uppercase
    cld
    mov rsi, source
    mov rdi, rsi
    mov rcx, length - 1
convert:
    lodsb ;source to al, increment
    sub al, 32
    stosb ; al to source
    loop convert
    
    ;search for 'b' in source
    cld
    mov rdi, source
    mov al, 'b'    
    mov rcx, length
    repne scasb
    jnz notfound
    mov byte[found], 1
    jmp end
notfound:
    mov byte[found], 0
end:

    ;compare to strings
    cld
    mov rsi, s1
    mov rdi, s2
    mov rcx, length3
    repe cmpsb
    jnz notequal
    mov byte[equal], 1
    jmp end2
notequal:
    mov byte[equal], 0
end2:

    xor rax, rax
    ret