#include <stdio.h>

int main() {
    int N, i;
    float sum = 0, average;

    
    printf("Enter the number of element: ");
    scanf("%d", &N);

    int arr[N]; 

    
    printf("Enter %d numbers:\n", N);
    for (i = 0; i < N; i++) {
        scanf("%d", &arr[i]);
        sum = sum + arr[i]; 
    }

    
    average = sum / N;

    
    printf("Sum of array elements: %f\n", sum);
    printf("Average of array elements: %f\n", average);

    return 0;
}

