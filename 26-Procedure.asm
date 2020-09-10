;26-Procedure

%include "io64.inc"

section .data
action db "procedure is called",0
PrintProc dq 0

section .text
global CMAIN

PrintString:
    PRINT_STRING action
    ret

;Nesting Procedures
NestedProc:
    push 100
    call PrintString
    pop rax ;pop data pushed into stack in procedure before ret. rsp holds return address.
    ret

CMAIN:
    mov rbp, rsp    
    
    call PrintString
    
    mov rax, PrintString
    call rax
    
    mov qword[PrintProc], PrintString
    call qword[PrintProc]
    
    call NestedProc
    
    xor rax, rax
    ret