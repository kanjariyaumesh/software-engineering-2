/*Write a C program that takes an integer input from the user and prints its multiplication 
table using a for loop. 
? Challenge: Allow the user to input the range of the multiplication table (e.g., from 1 to N).*/
#include<stdio.h>
main()
{
	int num,n;
	printf("enter a number for table :");
	scanf("%d",&num);
	
	printf("enter a num :");
	scanf("%d",&n);
	
	for(int i=1; i<=n; i++)
	{
		printf("%d * %d = %d \n",num,i,num*i);
		
	}
}
