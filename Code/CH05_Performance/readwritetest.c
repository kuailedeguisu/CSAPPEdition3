#include <stdio.h>

void write_read(long *src, long *dst, long n);

int main()
{
    long a[] = {-10, -17};
    write_read(&a[0], &a[1], sizeof(a)/sizeof(a[0]));
    printf("a[0]=%ld, a[1]=%ld\n", a[0], a[1]);
    return 0;
}

void write_read(long *src, long *dst, long n)
{
    long cnt = n;
    long val = 0;
    while (cnt)
    {
        *dst = val;
        val = (*src) + 1;
        cnt--;
    }
}