#include <stdio.h>
void reverseString(char str[]);
int main() {
    char str[100];

    printf("Enter a string: ");
    scanf("%s", str); 

    reverseString(str);

    printf("Reversed string: %s\n", str);

    return 0;
}
void reverseString(char str[]) {
    int length = 0, i;
    char temp;

    while (str[length] != '\0') {
        length++;
    }
	    for (i = 0; i < length -1; i++) {
        temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
    }
}


