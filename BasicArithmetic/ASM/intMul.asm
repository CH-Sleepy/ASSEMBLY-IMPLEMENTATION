section .text
bits 64
default rel
global intMul

intMul:
    MOV RAX, RCX
    IMUL RDX

    RET