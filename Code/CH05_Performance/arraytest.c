#include <stdio.h>

void clear_array(long *dest, long n);

int main()
{
    long arr[] = {10, 20, 30, 40, 50, 60};
    long len = sizeof(arr) / sizeof(arr[0]);
    clear_array(arr, len);
    for (int i = 0; i < len; i++)
    {
        printf("%ld ", arr[i]);
    }
    printf("\n");
    return 0;
}

void clear_array(long *dest, long n)
{
    long i;
    for (i = 0; i < n; i++)
    {
        dest[i] = 0;
    }
}