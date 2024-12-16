section .text
bits 64
default rel
global array_addition

array_addition:

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