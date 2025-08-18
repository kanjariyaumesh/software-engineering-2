#include <stdio.h>
int fibonacciRecursive(int n);
int fibonacciIterative(int n);


int main() {
    int n, i;

    printf("Enter number of terms: ");
    scanf("%d", &n);
    printf("\nFibonacci Sequence (Recursive): ");
    for (i = 0; i < n; i++) {
        printf("%d ", fibonacciRecursive(i));
    }

    printf("\n\n Fibonacci using Recursive = %d", fibonacciRecursive(n - 1));
    printf("\nFibonacci using Iterative = %d\n", fibonacciIterative(n - 1));

    return 0;
}
int fibonacciRecursive(int n) {
    if (n == 0) return 0;
    else if (n == 1) return 1;
    else return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

int fibonacciIterative(int n) {
    int a = 0, b = 1, c, i;
    if (n == 0) return a;
    for (i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

