#include <stdio.h>
#include <string.h>
int isNumberPalindrome(int num);
int isStringPalindrome(char str[]);

int main() {
    int choice;

    printf("Choose option:\n");
    printf("1. Check Number Palindrome\n");
    printf("2. Check String Palindrome\n");
    printf("Enter choice: ");
    scanf("%d", &choice);

    if (choice == 1) {
        int n;
        printf("Enter a number: ");
        scanf("%d", &n);

        if (isNumberPalindrome(n))
            printf("%d is a palindrome.\n", n);
        else
            printf("%d is not a palindrome.\n", n);

    } else if (choice == 2) {
        char str[100];
        printf("Enter a string: ");
        scanf("%s", str);

        if (isStringPalindrome(str))
            printf("\"%s\" is a palindrome.\n", str);
        else
            printf("\"%s\" is not a palindrome.\n", str);

    } else {
        printf("Invalid choice.\n");
    }

    return 0;
}
int isNumberPalindrome(int num) {
    int original = num, reversed = 0, digit;
    while (num != 0) {
        digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }
    return (original == reversed);
}

int isStringPalindrome(char str[]) {
    int i, len = strlen(str);
    for (i = 0; i < len / 2; i++) {
        if (str[i] != str[len - i - 1])
            return 0;
    }
    return 1;
}

