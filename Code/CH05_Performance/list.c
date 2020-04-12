#include "list.h"

long list_len(list_ptr ls)
{
    long len = 0;
    while (ls)
    {
        len++;
        ls = ls->next;
    }
    return len;
}