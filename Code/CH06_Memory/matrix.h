#define ROWLEN1 3
#define COLLEN1 5
#define COLLEN2 7
#define SQUARELEN 10
void matrix_prod(long a[ROWLEN1][COLLEN1],
    long b[COLLEN1][COLLEN2],
    long c[ROWLEN1][COLLEN2]);
void matrix_prod_square(long a[SQUARELEN][SQUARELEN],
    long b[SQUARELEN][SQUARELEN],
    long c[SQUARELEN][SQUARELEN]);