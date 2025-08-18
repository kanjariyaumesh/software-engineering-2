/* Write a C program that acts as a simple calculator. The program should take two numbers 
and an operator as input from the user and perform the respective operation (addition, 
subtraction, multiplication, division, or modulus) using operators. 
=> Challenge: Extend the program to handle invalid operator inputs.*/
#include <stdio.h>

int main() 
{
    int num1, num2;
    int choice;
    

    
    printf("Enter first number: ");
    scanf("%d", &num1);

    printf("Enter second number: ");
    scanf("%d", &num2);

	  printf("Enter 1 for sum:\n ");  
       printf("Enter 2 for sub: \n");
       printf("Enter 3 for mul: \n");
       printf("Enter 4 for div: \n");
       printf("Enter 5 for mod: \n");
      scanf(" %d", &choice); 
    
    
    switch (choice)
	{
        case 1:printf("Result: %d  \n",num1 + num2);
                 break;
        case 2: printf("Result: %d\n", num1 - num2);
                   break;
        case 3: printf("Result: %d\n", num1 * num2);
                  break;
        case 4:  printf("Result: %d\n", num1 / num2);
        		   break;
        case 5: printf("Result: %d\n",  num1 % num2);
             	  break;
             	  default : printf("invalid input");
             	  
             	  
        
    }

    return 0;
}

