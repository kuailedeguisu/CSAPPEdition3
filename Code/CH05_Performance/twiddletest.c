#include <stdio.h>

void twiddle1(long *xp, long *yp);
void twiddle2(long *xp, long *yp);

int main()
{
    long x = 10, y = 20;
    twiddle1(&x, &y);
    printf("%ld\n", x);
    long a = 10, b = 20;
    twiddle2(&a, &b);
    printf("%ld\n", a);
    long m = 10, n = 10;
    twiddle1(&m, &m);
    printf("%ld\n", m);
    twiddle2(&n, &n);
    printf("%ld\n", n);
    return 0;
}

void twiddle1(long *xp, long *yp)
{
    *xp += *yp;
    *xp += *yp;
}

void twiddle2(long *xp, long *yp)
{
    *xp += 2 * *yp;
}

#if 0
50
50
40
30
两个指针指向同一个内存位置：内存别名引用
#endif