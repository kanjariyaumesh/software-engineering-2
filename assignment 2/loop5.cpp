/*Write a C program to print numbers from 1 to 10 using all three types of loops 
(while, for, do-while). */
#include<stdio.h>
main()
{
	printf("for loop\n");
	
	for(int i=1; i<=10; i++)
	{
		printf("%d ",i);
	}
	printf("\n\n");
	
	printf("while loop\n");
	
	int j = 1;
	while(j <= 10)
	{
		printf("%d ",j);
		j++;
	}
	 
	 printf("\n\ndo-while loop:\n");
    int i = 1;
    do {
        printf("%d ", i);
        i++;
    } while (i <= 10);

}


