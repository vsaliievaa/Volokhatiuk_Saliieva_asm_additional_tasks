#include <stdio.h>
#include <stdint.h>
#include "func.h"

#define N 3

void print_matrix(uint32_t** matrix, uint8_t size);

int main() {

    uint8_t size = N;

    uint32_t *matrix[N];

    uint32_t array1[] = {11, 12, 13};
    matrix[0] = array1;

    uint32_t array2[] = {21, 22, 23};
    matrix[1] = array2;

    uint32_t array3[] = {31, 32, 33};
    matrix[2] = array3;

    printf("Initial matrix: \n");
    print_matrix(matrix, size);

    func(matrix, size);

    printf("Transposed matrix: \n");
    print_matrix(matrix, size);

    return 0;
}

void print_matrix(uint32_t** matrix, uint8_t size){
    for (size_t i = 0; i < size; i++){
        for (size_t j = 0; j < size; j++){
            printf("%u ", matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}