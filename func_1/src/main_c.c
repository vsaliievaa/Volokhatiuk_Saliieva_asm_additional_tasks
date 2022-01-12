#include <stdio.h>
#include <stdint.h>
#include "func.h"

#define N 4

void print_matrix(uint64_t* matrix, uint8_t size);

int main() {
    uint64_t matrix[] = {11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41, 42, 43, 44};
    uint8_t size = N;

    printf("Initial matrix: ");
    print_matrix(matrix, size);

    func(matrix, size);

    printf("Transposed matrix: ");
    print_matrix(matrix, size);

	return 0;
}

void print_matrix(uint64_t* matrix, uint8_t size){
    for (size_t i = 0; i < size * size; i++){
        printf("%lu ", matrix[i]);
    }
    printf("\n");
}