/* Write a C program to create a file, write a string into it, close the file, then 
open the file again to read and display its contents. */
#include<stdio.h>
#include<string.h>
int main()
{
	FILE *fptr;
	char ch[500];

	
	printf("enter youe char :");
//	scanf("%s",&ch);
   fgets(ch,500,stdin);
	fptr = fopen("12.txt","w");
	fprintf(fptr, "%s", ch); 
		ch[500] = fgetc(fptr);
		fclose(fptr);
		
			
			fptr = fopen("12.txt","r");
			char ch1;
		while(ch1 != EOF)
	{
		printf("%c",ch1);
		ch1 = fgetc(fptr);
	}
	fclose(fptr);
	return 0;
}
