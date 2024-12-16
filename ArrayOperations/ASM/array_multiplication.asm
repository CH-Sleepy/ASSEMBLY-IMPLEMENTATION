section .text
bits 64
default rel
global array_multiplication

array_multiplication:
    LEA R10, [RDX]
    L1:
        MOV RAX, [R10]
        MOV RBX, [R8]
        IMUL RAX, RBX
        MOV [R9], RAX
        ADD R10, 4
        ADD R8, 4
        ADD R9, 4
    LOOP L1

    RET