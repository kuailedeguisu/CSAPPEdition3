#include <stdio.h>
// x and f is global
int x = 15213;

void f(void);

int main()
{
    f();
    printf("x=%d\n", x);
    return 0;
}