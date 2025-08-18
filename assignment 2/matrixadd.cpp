#include <stdio.h>

int main() {
    int A[3][3], B[3][3], sum[3][3], mul[3][3],i,j,k;
    


    printf("Enter elements of first 3x3 matrix:\n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            scanf("%d", &A[i][j]);
        }
    }

   
    printf("Enter elements of second 3x3 matrix:\n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            scanf("%d", &B[i][j]);
        }
    }

   
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            sum[i][j] = A[i][j] + B[i][j];
        }
    }

    
    printf("\nSum of matrices:\n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            printf("%d\t", sum[i][j]);
        }
        printf("\n");
    }

    
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            mul[i][j] = 0;
            for (k = 0; k < 3; k++) {
                mul[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    printf("\nMultiplication of matrices:\n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            printf("%d\t", mul[i][j]);
        }
        printf("\n");
    }

    return 0;
}

