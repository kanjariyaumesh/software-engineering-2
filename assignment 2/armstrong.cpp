#include <stdio.h>
#include <math.h>

int main() {
    int num, originalNum, remainder, n = 0;
    int result = 0, i;

   
    printf("Enter a number: ");
    scanf("%d", &num);

    originalNum = num;
    while (originalNum != 0) {
        originalNum = originalNum/ 10;
        n++;
    }

    originalNum = num;
    while (originalNum != 0) {
        remainder = originalNum % 10;
        result = result + pow(remainder, n);
        originalNum = originalNum / 10;
    }

    if (result == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

   
    printf("\nArmstrong numbers between 1 and 1000 are:\n");
    for (i = 1; i <= 1000; i++) {
        int temp = i, digits = 0, sum = 0;

        while (temp != 0) {
            temp =temp/ 10;
            digits++;
        }

        temp = i;
        while (temp != 0) {
            remainder = temp % 10;
            sum =sum + pow(remainder, digits);
            temp =temp/ 10;
        }

        if (sum == i)
            printf("%d ", i);
    }

    return 0;
}

