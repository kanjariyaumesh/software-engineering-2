/*Write a C program that takes three numbers from the user and determines: 
o The largest number. 
o The smallest number. 
? Challenge: Solve the problem using both if-else and switch-case statements. */
#include <stdio.h>

int main() {
    int a, b, c;
    int lar, small;
    
    int choice;

    
    printf("Enter first numbers:\n");
    scanf("%d",&a);
    
     printf("Enter second numbers:\n");
    scanf("%d",&b);
    
     printf("Enter third numbers:\n");
    scanf("%d",&c);
//large number

    if (a >= b && a >= c)
    {
	
        lar= a;
}
    else if (b >= a && b >= c)
    {
        lar = b;
}
	else
	{
        lar = c;
}
// small number

    if (a <= b && a <= c)
    {
        small = a;
    }
    else if (b <= a && b <= c)
     {
		   small = b;
	}
    else
	{
        small = c;
}
	 printf("using if else\n");
	printf("Largest number: %d\n", lar);
    printf("Smallest number: %d\n", small);

// switch case
    if (a >= b && a >= c)
        choice = 1;
    else if (b >= a && b >= c)
        choice = 2;
    else
        choice = 3;

    switch (choice) {
        case 1:
            lar = a;
            break;
        case 2:
            lar = b;
            break;
        case 3:
            lar = c;
            break;
    }

    // Smallest using switch
    if (a <= b && a <= c)
    {
        choice = 1;
    }
	else if (b <= a && b <= c)
    {
	    choice = 2;
    }
	else
{
        choice = 3;
}
    switch (choice) {
        case 1:
            small = a;
            break;
        case 2:
            small = b;
            break;
        case 3:
            small = c;
            break;
    }

    
    printf("using switchcase\n");
    printf("Largest number: %d\n", lar);
    printf("Smallest number: %d\n", small);

    return 0;
}

