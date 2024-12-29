section .data
ELEMENT_COUNT DQ 0
M1 DQ 0
M2 DQ 0
R DQ 0

section .text
bits 64
default rel
global matrixAdd

matrixAdd:
    MOV RAX, [RCX]
    MOV QWORD[ELEMENT_COUNT], RAX

    MOV R10, QWORD[ELEMENT_COUNT]
    W1:

    MOV RAX, [RDX]
    MOV RBX, [R8]
    ADD RAX, RBX
    MOV [R9], RAX

    ADD RDX, 8
    ADD R8, 8
    ADD R9, 8

    DEC R10
    CMP R10, 0
    JE EW1
    JMP W1
    EW1:
    RET