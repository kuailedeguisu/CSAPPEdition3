#include "matrix.h"
#include <stdio.h>

int main()
{
    long first_matrix[ROWLEN1][COLLEN1] = {{1, 2, 3, 4, 5},
                                          {1, 2, 3, 4, 5},
                                          {1, 2, 3, 4, 5}};
    long second_matrix[COLLEN1][COLLEN2] = {{1, 2, 3, 4, 5, 6, 7},
                                           {1, 2, 3, 4, 5, 6, 7},
                                           {1, 2, 3, 4, 5, 6, 7},
                                           {1, 2, 3, 4, 5, 6, 7},
                                           {1, 2, 3, 4, 5, 6, 7}};
    long result_matrix[ROWLEN1][COLLEN2];
    matrix_prod(first_matrix, second_matrix, result_matrix);
    long first_square_matrix[SQUARELEN][SQUARELEN] = 
        {{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
         {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}};
    long second_square_matrix[SQUARELEN][SQUARELEN] = 
        {{11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20},
         {11, 12, 13, 14, 15, 16, 17, 18, 19, 20}};
    long result_square_matrix[SQUARELEN][SQUARELEN];
    printf("===============\n");
    matrix_prod_square(first_square_matrix, second_square_matrix, result_square_matrix);
    return 0;
}