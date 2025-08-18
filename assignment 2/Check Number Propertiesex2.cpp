/*Write a C program that takes an integer from the user and checks the following using 
different operators: 
o Whether the number is even or odd. 
o Whether the number is positive, negative, or zero. 
o Whether the number is a multiple of both 3 and 5.*/
#include<stdio.h>
int main()
{
	int num;
	printf("enter a number :");
	scanf("%d",&num);
	
	if(num % 2 == 0)
	{
		printf("your number is even\n");
	}
	else
	{
		printf("your number is odd\n");
	}
	{
		if(num < 0)
		{
			printf("your number is nagative\n");
		}
		else if(num > 0)
		{
			printf("your number is positive\n");
			}
			else
			{
				printf("your number is zero\n");
			}
			if (num % 3 == 0 && num % 5 == 0) 
			{
        printf("The number is a multiple of both 3 and 5.\n");
    } 
	else 
	{
        printf("The number is NOT a multiple of both 3 and 5.\n");
    }
	}
}
