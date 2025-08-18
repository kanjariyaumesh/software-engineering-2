/*Write a C program that calculates the factorial of a number using a function. 
Include function declaration, definition, and call.*/
#include <stdio.h>
int factorial(int n);
int main() 
{
    int num, result;

    printf("Enter a number: ");
    scanf("%d", &num);

   	 result = factorial(num);
     printf("Factorial of %d is %d\n", num, result);
     return 0;
}
int factorial(int n) 
{
    int fact = 1;
    for (int i = 1; i <= n; i++) 
	{
        fact = fact * i;
    }
    return fact;
}
