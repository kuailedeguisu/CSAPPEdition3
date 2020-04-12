#include "list.h"
#include <stdio.h>

int main()
{
    list_ele le1;
    list_ele le2;
    list_ele le3;
    le1.data = 10;
    le2.data = 20;
    le3.data = 30;
    le1.next = &le2;
    le2.next = &le3;
    le3.next = NULL;
    printf("%ld\n", list_len(&le1));
    return 0;
}