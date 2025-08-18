#include <stdio.h>
void countCharacters(char str[]);


int main() {
    char str[200];

    printf("Enter a string: ");
    scanf("%s", str); 

    countCharacters(str);

    return 0;
}
void countCharacters(char str[]) {
    int vowels = 0, consonants = 0, digits = 0, special = 0, i;

    for (i = 0; str[i] != '\0'; i++) {
        char ch = str[i];

        
        if (ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'||
            ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U') {
            vowels++;
        }
        
        else if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
            consonants++;
        }
        else if (ch >= '0' && ch <= '9') {
            digits++;
        }
        
        else {
            special++;
        }
    }

    printf("Vowels: %d\n", vowels);
    printf("Consonants: %d\n", consonants);
    printf("Digits: %d\n", digits);
    printf("Special characters: %d\n", special);
}

