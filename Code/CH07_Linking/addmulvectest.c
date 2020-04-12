#include <stdio.h>
#include "vector.h"

int x[2] = {1, 2};
int y[2] = {3, 4};
int z[2];
int m[2];

int main()
{
    addvec(x, y, z, 2);
    printf("z=[%d %d]\n", z[0], z[1]);
    mulvec(x, y, m, 2);
    printf("m=[%d %d]\n", m[0], m[1]);
    return 0;
}
