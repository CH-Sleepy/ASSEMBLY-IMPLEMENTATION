section .text
bits 64
default rel
global intSub

intSub:
    MOV RAX, RCX
    ADD RAX, RDX

    RET