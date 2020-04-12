typedef struct ELE
{
    struct ELE *next;
    long data;
}list_ele, *list_ptr;

long list_len(list_ptr ls);