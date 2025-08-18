#include <stdio.h>

int main() {
    int m1, m2, m3, m4, m5;
    int sum;
    float percentage;
    char grade;


    printf("Subject 1: ");
    scanf("%d", &m1);
    printf("Subject 2: ");
    scanf("%d", &m2);
    printf("Subject 3: ");
    scanf("%d", &m3);
    printf("Subject 4: ");
    scanf("%d", &m4);
    printf("Subject 5: ");
    scanf("%d", &m5);

    
    sum = m1 + m2 + m3 + m4 + m5;
    
    printf("\nTotal Marks = %d", sum);
    
    percentage = (float)sum / 5;
    printf("\nPercentage = %f", percentage);

    // Grade calculation using if-else
    if (percentage > 90)
	 {
        grade = 'A';
    }
	 else if (percentage > 75 && percentage <= 90) 
	 {
        grade = 'B';
    }
	 else if (percentage > 50 && percentage <= 75) 
	 {
        grade = 'C';
    } 
	else
	 {
        grade = 'D';
    }

    printf("\nGrade = %c\n", grade);

    return 0;
}

