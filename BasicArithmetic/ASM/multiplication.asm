section .text
bits 64
default rel
global multiplication

multiplication:
    MOV RAX, RCX
    IMUL RDX

    RET