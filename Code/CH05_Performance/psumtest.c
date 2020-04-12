#include <stdio.h>

void psum1(float p[], float a[], long n);
void psum2(float p[], float a[], long n);

int main()
{
    float p1[] = {1.2, 2.3, 3.4, 4.5};
    float a1[] = {2.4, 3.6, 4.8, 9.6};
    psum1(p1, a1, 4);
    float p2[] = {1.2, 2.3, 3.4, 4.5};
    float a2[] = {2.4, 3.6, 4.8, 9.6};
    psum2(p2, a2, 4);
    int i;
    for (i = 0; i < 4; i++)
    {
        printf("%f ", p1[i]);
    }
    printf("\n");
    for (i = 0; i < 4; i++)
    {
        printf("%f, ", p2[i]);
    }
    printf("\n");
    return 0;
}

void psum1(float p[], float a[], long n)
{
    long i;
    p[0] = a[0];
    for (i = 1; i < n; i++)
    {
        p[i] = p[i - 1] + a[i];
    }
}

void psum2(float p[], float a[], long n)
{
    long i;
    p[0] = a[0];
    for (i = 1; i < n - 1; i += 2)
    {
        float midval = p[i - 1] + a[i];
        p[i] = midval;
        p[i+1] = midval +  a[i + 1];
    }
    if (i < n)
    {
        p[i] = p[i -1] + a[i];
    }
}

#if 0
chunhongliu-MacBook-Air:CH05_Performance chunhongliu$ gcc -o psumtest psumtest.c
chunhongliu-MacBook-Air:CH05_Performance chunhongliu$ ./psumtest
2.400000 6.000000 10.800000 20.400002 
2.400000, 6.000000, 10.800000, 20.400002,
#endif