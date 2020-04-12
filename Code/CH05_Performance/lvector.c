#include "lvector.h"
#include <stddef.h>
#include <stdlib.h>

#define IDENT 1
#define OP *

vec_ptr new_vec(long len)
{
    vec_ptr result = (vec_ptr)malloc(sizeof(vec_rec));
    data_t *data = NULL;
    if (!result)
    {
        return NULL;
    }

    result->len = len;
    if (len > 0)
    {
        data = (data_t *)calloc(len, sizeof(vec_rec));
        if (!data)
        {
            free((void *)result);
            return NULL;
        }
    }
    result->data = data;
    return result;
}

void set_vec(vec_ptr v, long len, data_t *data)
{
    v->len = len;
    v->data = data;
}

int get_vec_element(vec_ptr v, long index, data_t *dest)
{
    if (index < 0 || index >= v->len)
    {
        return 0;
    }
    *dest = v->data[index];
    return 1;
}

long vec_length(vec_ptr v)
{
    return v->len;
}

data_t *get_vec_start(vec_ptr v)
{
    return v->data;
}

void combine1(vec_ptr v, data_t *dest)
{
    long i;
    *dest = IDENT;
    for (i = 0; i < vec_length(v); i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }

}

void combine2(vec_ptr v, data_t *dest)
{
    long i;
    *dest = IDENT;
    long length = vec_length(v);
    for (i = 0; i < length; i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }

}

void combine3(vec_ptr v, data_t *dest)
{
    long i;
    *dest = IDENT;
    long length = vec_length(v);
    data_t *data = get_vec_start(v);
    for (i = 0; i < length; i++)
    {
        *dest = *dest OP data[i];
    }
}

void combine4(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;
    for (i = 1; i < length; i++)
    {
        acc = acc OP data[i];
    }
    *dest = acc;
}

void combine5(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    long limit = length - 1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    for (i = 0; i < limit; i += 2)
    {
        acc = (acc OP data[i]) OP data[i+1];
    }

    for (; i < length; i++)
    {
        acc = acc * data[i];
    }
    *dest = acc;
}

void combine6(vec_ptr v, data_t *dest)
{
     // k = 5
    long i;
    long length = vec_length(v);
    long limit = length - 5 - 1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    for (i = 0; i < limit; i += 5)
    {
        acc = (((((acc OP data[i]) OP data[i+1]) OP data[i+2]) OP data[i+3]) OP data[i+4]);
    }

    for (; i < length; i++)
    {
        acc = acc * data[i];
    }
    *dest = acc;
}

void combine7(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    long limit = length - 1;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    for (i = 0; i < limit; i += 2)
    {
        acc0 = acc0 OP data[i];
        acc1 = acc1 OP data[i+1];
    }

    for (; i < length; i++)
    {
        acc0 = acc0 * data[i];
    }
    *dest = acc0 OP acc1;
}

void combine8(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    long limit = length - 1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    for (i = 0; i < limit; i += 2)
    {
        acc = acc OP (data[i] OP data[i+1]);
    }

    for (; i < length; i++)
    {
        acc = acc * data[i];
    }
    *dest = acc;
}

