#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main()
{
    int col, row, size;
    scanf("%d", &row);
    scanf("%d", &col);
    size = row * col;
    int* a = (int*) malloc (size * sizeof(int));
    int* b = (int*) malloc (size * sizeof(int));

    // read file
    for (int i = 0; i < size; i++)
    {
        scanf("%d", &a[i]);
    }

    printf("Starting...\n");
    matrixTranspose(row, col, a, b);
    printf("Printing Results...\n");

    int temp = 0;
    for (int i = 0; i < col; i++)
    {
        for (int j = 0; j < row; j++)
        {
            printf("%d ", b[temp]);
            temp++;
        }
        printf("\n");
    }

    return 0;
}