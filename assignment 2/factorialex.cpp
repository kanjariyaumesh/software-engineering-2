#include <stdio.h>
int factorialIterative(int n);
int factorialRecursive(int n);
int main() {
    int n;

    printf("Enter a number: ");
    scanf("%d", &n);

    printf("Iterative Factorial of %d = %d\n", n, factorialIterative(n));
    printf("Recursive Factorial of %d = %d\n", n, factorialRecursive(n));

    return 0;
}
int factorialIterative(int n) {
    int fact = 1;
    for (int i = 1; i <= n; i++) {
        fact *= i;
    }
    return fact;
}
int factorialRecursive(int n) {
    if (n <= 1)
        return 1;
    return n * factorialRecursive(n - 1);
}
