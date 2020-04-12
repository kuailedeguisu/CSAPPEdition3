#include <stdio.h>
#include "lower.h"

int main()
{
    // char *s1 = "Hello World!"; // Bad error: 10
    char s1[] = "Hello World!";
    lower1(s1);
    char s2[] = "HELLO WORLD!";
    lower2(s2);
    printf("%s\n", s1);
    printf("%s\n", s2);
    return 0;
}