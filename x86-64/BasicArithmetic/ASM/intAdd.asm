section .text
bits 64
default rel
global intAdd

intAdd:
    MOV RAX, RCX
    ADD RAX, RDX

    RET