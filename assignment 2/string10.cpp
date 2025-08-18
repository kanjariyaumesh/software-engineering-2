/*Write a C program that takes two strings from the user and concatenates them 
using strcat(). Display the concatenated string and its length using 
strlen(). */
#include<stdio.h>
#include<string.h>
int main()
{
	char str1[100],str2[100];
	
	printf("enter 1 string :");
	scanf("%s",&str1);
	
	printf("enter 2 string :");
	scanf("%s",&str2);
	
	strcat(str1, str2);
	
	printf("%s",str1);
	
	int length= strlen(str1);
	
	printf("\nlength is :%d",strlen(str1));
	
	
	return 0;
}
