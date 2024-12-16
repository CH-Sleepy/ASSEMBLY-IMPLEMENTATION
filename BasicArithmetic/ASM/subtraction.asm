section .text
bits 64
default rel
global subtraction

subtraction:
    MOV RAX, RCX
    ADD RAX, RDX

    RET