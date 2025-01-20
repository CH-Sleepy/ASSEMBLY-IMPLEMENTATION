section .data
FLOAT_MSG DB "REGISTER CONTENT : %lf \n", 0
IDENTITY_MATRIX DQ 0



section .text
bits 64
default rel
global matrixInverse
extern printf

matrixInverse:
    ; 
    XOR RAX, RAX
    RET