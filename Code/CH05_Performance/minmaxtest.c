#include <stdio.h>
#include "minmax.h"

int main()
{
    long a[] = {2, 3, 5, 6, 8};
    long b[] = {1, 2, 3, 9, 10};
    minmax1(a, b, 5);
    int i;
    printf("\na:");
    for (i = 0; i < 5; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\nb:");
    for (i = 0; i < 5; i++)
    {
        printf("%d ", b[i]);
    }
    long c[] = {2, 3, 5, 6, 8};
    long d[] = {1, 2, 3, 9, 10};
    minmax2(c, d, 5);
    printf("\nc:");
    for (i = 0; i < 5; i++)
    {
        printf("%d ", c[i]);
    }
    printf("\nd:");
    for (i = 0; i < 5; i++)
    {
        printf("%d ", d[i]);
    }
    printf("\n");
    return 0;
}