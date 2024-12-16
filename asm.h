#ifndef asm
#define asm

// Basic Arithmetic
extern int addition (int a, int b);
extern int subtraction (int a, int b);
extern int multiplication (int a, int b);
extern int division (int a, int b);

// Array Operations
extern void array_addition(int n, int* a, int* b, int* c);
extern void array_subtraction(int n, int* a, int* b, int* c);
extern void array_multiplication(int n, int* a, int* b, int* c);
extern void array_division(int n, int* a, int* b, int* c);

#endif