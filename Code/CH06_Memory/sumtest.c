#include <stdio.h>
#include "sum.h"

int main()
{
    int arr[VECLEN] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    printf("sum=%d\n", sum_vec(arr));
    int twoarr[ROWLEN][COLUMNLEN] = {{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
                      {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
                      {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
                      {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
                      {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
                      {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}};
    printf("sum=%d\n", sum_array_rows(twoarr));
    return 0;
}