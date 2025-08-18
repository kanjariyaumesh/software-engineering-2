#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int number, guess, attempts = 10;

    srand(time(0)); 
    number = rand() % 100 + 1; 

    printf("Guess the number (1 to 100) – You have %d attempts:\n", attempts);

    while (attempts > 0) {
        printf("Enter your guess: ");
        scanf("%d", &guess);

        if (guess == number) {
            printf(" Correct! You guessed the number.\n");
            break;
        } else if (guess > number) {
            printf("Too high!\n");
        } else {
            printf("Too low!\n");
        }

        attempts--;
        if (attempts > 0) {
            printf("Attempts left: %d\n", attempts);
        } else {
            printf("Sorry, you ran out of attempts. The number was %d.\n", number);
        }
    }

    return 0;
}

