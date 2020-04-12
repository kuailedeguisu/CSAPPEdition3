#include "dotprod.h"
#include <stdio.h>

int main()
{
    float x[8] = {1.8, 3.2, 4.9, 5.6};
    float y[8] = {3.6, 6.4, 9.8, 11.2};
    printf("prod=%f\n", dot_prod(x, y));
    return 0;
}