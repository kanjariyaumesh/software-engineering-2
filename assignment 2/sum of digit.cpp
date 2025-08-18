#include <stdio.h>

int main() {
    int num, digit, sum = 0, reverse = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    int originalNum = num; 

    while (num != 0) {
        digit = num % 10;        
        sum = sum + digit;            
        reverse = reverse * 10 + digit;
        num /= 10;               
    }

    printf("Sum of digits of : %d\n", originalNum, sum);
    printf("Reversed number: %d\n", reverse);

    return 0;
}

