section .text
bits 64
default rel
global intDiv

intDiv:
    MOV RAX, RCX
    MOV RBX, RDX
    MOV RDX, 0
    IDIV RBX

    RET