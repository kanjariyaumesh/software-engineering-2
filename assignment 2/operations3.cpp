/*Write a C program that accepts two integers from the user and performs 
arithmetic, relational, and logical operations on them. Display the results.*/
#include<stdio.h>
main()
{
	int a , b ;
	printf("enter first value a  :");
	scanf("%d",&a);
	
	printf("enter second value b :");
	scanf("%d",&b);
	
	printf("\narithmetic operation\n");
	printf("sum %d\n",a+b);
	printf("sub %d\n", a-b);
	printf("mul %d\n",a*b);
	printf("div %d\n",a/b);
	
	printf("\nRelational Operations\n");
    printf("a == b: %d\n", a == b);
    printf("a != b: %d\n", a != b);
    printf("a > b : %d\n", a > b);
    printf("a < b : %d\n", a < b);
    printf("a >= b: %d\n", a >= b);
    printf("a <= b: %d\n", a <= b);
    
    printf("\nLogical Operations\n");
    printf("(a && b): %d\n", a && b); 
    printf("(a || b): %d\n", a || b); 
    printf("!(a): %d\n", !a);         
    printf("!(b): %d\n", !b);
}
