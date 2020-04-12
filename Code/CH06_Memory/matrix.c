#include "matrix.h"
#include <stdio.h>

void matrix_prod(long a[ROWLEN1][COLLEN1],
    long b[COLLEN1][COLLEN2],
    long c[ROWLEN1][COLLEN2])
{
    long i, j, k;
    long temp[COLLEN2] = {0};
    for (i = 0; i < ROWLEN1; i++)
    {
        for (j = 0; j < COLLEN1; j++)
        {
            for (k = 0; k < COLLEN2; k++)
            {
                temp[k] += a[i][j] * b[j][k];
            }
        }

        for (k = 0; k < COLLEN2; k++)
        {
            c[i][k] = temp[k];
            printf("%20ld\t", c[i][k]);
        }
        printf("\n");
    }

}

void matrix_prod_square(long a[SQUARELEN][SQUARELEN],
    long b[SQUARELEN][SQUARELEN],
    long c[SQUARELEN][SQUARELEN])
{
    long i, j, k;
    long sum;
    for (i = 0; i < SQUARELEN; i++)
    {
        for (j = 0; j < SQUARELEN; j++)
        {
            sum = 0;
            for (k = 0; k < SQUARELEN; k++)
            {
                sum += a[i][j] * b[j][k];
            }
            c[i][j] += sum;
            printf("%20ld\t", c[i][j]);
        }
        printf("\n");
    }
}