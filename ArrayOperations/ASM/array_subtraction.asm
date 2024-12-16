section .text
bits 64
default rel
global array_subtraction

array_subtraction:
    
    L1:
        MOV RAX, [RDX]
        MOV RBX, [R8]
        SUB RAX, RBX
        MOV [R9], RAX
        ADD RDX, 4
        ADD R8, 4
        ADD R9, 4
    LOOP L1