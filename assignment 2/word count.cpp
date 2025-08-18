#include <stdio.h>
void countWordsAndLongest(char str[]);
int main() {
    char str[200];

    printf("Enter a sentence: ");
    scanf("%[^\n]", str);

    countWordsAndLongest(str);

    return 0;
}
void countWordsAndLongest(char str[]) {
    int i = 0, count = 0, length = 0, maxLength = 0, start = 0, maxStart = 0;

    while (1) {
        if (str[i] != ' ' && str[i] != '\0') {
            if (length == 0) start = i; 
            length++;
        } 
        else {
            if (length > 0) {
                count++; 
                if (length > maxLength) {
                    maxLength = length;
                    maxStart = start;
                }
                length = 0;
            }
            if (str[i] == '\0') break;
        }
        i++;
    }

    printf("Total words: %d\n", count);
    printf("Longest word: ");
    for (i = maxStart; i < maxStart + maxLength; i++) {
        printf("%c", str[i]);
    }
    printf("\n");
}

