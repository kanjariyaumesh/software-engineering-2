/*Write a C program that stores 5 integers in a one-dimensional array and prints 
them. Extend this to handle a two-dimensional array (3x3 matrix) and 
calculate the sum of all elements.*/
#include <stdio.h>

int main() 
{
    
    int arr[5] = {10, 20, 30, 40, 50};
    printf("One-Dimensional Array:\n");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    
    int matrix[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };

    int sum = 0;
    printf("\nTwo-Dimensional Array :\n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", matrix[i][j]);
            sum += matrix[i][j];
        }
        printf("\n");
    }

    printf("\nSum of all elements in the 3x3 matrix = %d\n", sum);

    return 0;
}

