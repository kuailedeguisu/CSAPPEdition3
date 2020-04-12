typedef long data_t;
typedef struct vector
{
    long len;
    data_t *data;
} vec_rec, *vec_ptr;

vec_ptr new_vec(long len);
void set_vec(vec_ptr v, long len, data_t *data);
int get_vec_element(vec_ptr v, long index, data_t *dest);
long vec_length(vec_ptr v);
void combine1(vec_ptr, data_t *dest);
void combine2(vec_ptr v, data_t *dest);
void combine3(vec_ptr v, data_t *dest);
void combine4(vec_ptr v, data_t *dest);
void combine5(vec_ptr v, data_t *dest);
void combine6(vec_ptr v, data_t *dest);
void combine7(vec_ptr v, data_t *dest);
void combine8(vec_ptr v, data_t *dest);
data_t *get_vec_start(vec_ptr v);



