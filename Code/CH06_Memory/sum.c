#include "sum.h"

int sum_vec(int vec[VECLEN])
{
    int sum = 0;
    int i;
    for (i = 0; i < VECLEN; i++)
    {
        sum += vec[i];
    }
    return sum;
}

int sum_array_rows(int v[ROWLEN][COLUMNLEN])
{
    int i, j, sum = 0;
    for (i = 0; i < ROWLEN; i++)
    {
        for (j = 0; j < COLUMNLEN; j++)
        {
            sum += v[i][j];
        }
    }
    return sum;
}