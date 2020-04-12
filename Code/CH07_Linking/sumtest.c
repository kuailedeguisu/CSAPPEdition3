#include "sum.h"
#include <stdio.h>

int a = 10;
static int b = 100;
int
main()
{
    int arr[] = {10, 20, 80, 120};
    int len = sizeof(arr)/sizeof(arr[0]);
    printf("sum=%d\n", sum(arr, len));
    return 0;
}