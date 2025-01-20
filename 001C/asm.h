#ifndef asm
#define asm

// Basic Arithmetic
extern int intAdd (int variable_a, int variable_b);
extern int intSub (int variable_a, int variable_b);
extern int intMul (int variable_a, int variable_b);
extern int intDiv (int variable_a, int variable_b);

// Array Operations
extern void arrayAdd (int size, int* f_array, int* s_array, int* result);
extern void arraySub (int size, int* f_array, int* s_array, int* result);
extern void arrayMul (int size, int* f_array, int* s_array, int* result);
extern void arrayDiv (int size, int* f_array, int* s_array, int* result);

extern void matrixAdd (int size, int* matrix_a, int* matrix_b, int* result);
extern void matrixSub (int size, int* matrix_a, int* matrix_b, int* result);
extern void matrixMul (int* matrix_a, int* matrix_b, int* result, int matrix_a_row, int matrix_a_col, int matrix_b_row, int matrix_b_c);
extern void matrixTranspose(int row, int col, int* matrix, int* result);

#endif