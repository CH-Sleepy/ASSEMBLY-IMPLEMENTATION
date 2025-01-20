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

    MOV R10, QWORD[ELEMENT_COUNT]
    L1:
        MOV RAX, [RDX]
        MOV RBX, [R8]
        ADD RAX, RBX
        MOV [R9], RAX

        ADD RDX, 4
        ADD R8, 4
        ADD R9, 4
    LOOP L1

    RET