/*Write a C program that defines a structure to store a student's details (name, 
roll number, and marks). Use an array of structures to store details of 3 
students and print them. */
#include<stdio.h>
#include<string.h>
struct student
{
	char name[100];
	int roll;
	int marks;	
};
int main()
{
		struct student s1;
	
	strcpy(s1.name,"umesh");
	s1.roll = 1;
	s1.marks = 85;
	
	printf("your name is : %s\n",s1.name);
	printf("your roll no is : %d\n",s1.roll);
	printf("marks    :%d \n",s1.marks);
	
	
	printf("\n");
	
	struct student s2;
	
	strcpy(s2.name,"keyur");
	s2.roll = 2;
	s2.marks = 75;
	
	printf("your name is : %s\n",s2.name);
	printf("your roll no is : %d\n",s2.roll);
	printf("marks    :%d \n",s2.marks);
	
	
	printf("\n");
	
		struct student s3;
	
	strcpy(s3.name,"keyur");
	s3.roll = 3;
	s3.marks = 95;
	
	printf("your name is : %s\n",s3.name);
	printf("your roll no is : %d\n",s3.roll);
	printf("marks    :%d \n",s3.marks);
	
	
	
}
