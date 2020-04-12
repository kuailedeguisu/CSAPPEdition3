#include "lower.h"

void lower1(char *s)
{
    long i;
    for (i = 0; i < mystrlen(s); i++)
    {
        if (s[i] >= 'A' && s[i] <= 'Z')
        {
            s[i] -= 'A' - 'a';
        }
    }
}

void lower2(char *s)
{
    long i;
    long length = mystrlen(s);
    for (i = 0; i < length; i++)
    {
        if (s[i] >= 'A' && s[i] <= 'Z')
        {
            s[i] -= 'A' - 'a';
        }
    }
}

size_t mystrlen(char *s)
{
    long length = 0;
    while ( *s != '\0')
    {
        s++;
        length++;
    }
    return length;
}