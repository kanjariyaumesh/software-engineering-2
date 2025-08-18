#include<stdio.h>
int main()
{
	int num;
	
	printf("enter a num :");
	scanf("%d",&num);
	
	for(int i=2; i<=num; i++)
	{
		for(int j=2; j<=i/2; j++)
		if (i%j==0)
		{
			printf("number is prime");
		}
		else
		{
			printf("number is not prime");
		}
	}
	
}
