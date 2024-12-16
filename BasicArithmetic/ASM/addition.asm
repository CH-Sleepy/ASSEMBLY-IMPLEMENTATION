section .text
bits 64
default rel
global addition

addition:
    MOV RAX, RCX
    ADD RAX, RDX

    RET