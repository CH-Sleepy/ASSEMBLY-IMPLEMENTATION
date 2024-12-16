#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main()
{
    int size;
    scanf("%d", &size);
    int* a = (int*) malloc (size * sizeof(int));
    int* b = (int*) malloc (size * sizeof(int));
    int* c = (int*) malloc (size * sizeof(int));

    // read file
    for (int i = 0; i < size; i++)
    {
        scanf("%d", &a[i]);
    }

    for (int i = 0; i < size; i++)
    {
        scanf("%d", &b[i]);
    }

    printf("Starting...\n");
    array_multiplication(size, a, b, c);
    printf("Printing Results...\n");

    for (int i = 0; i < size; i++)
    {
        printf("[%d] : %d\n", i, c[i]);
    }

    return 0;
}