#include<iostream>
using namespace std;
int main() {
    int number, guess=65;
    
    cout<<"this is a guess game"<<endl;
    
    do
    {
    	cout<<"Enter your guess: ";
        cin>>number;
        
         if (guess == number) {
            cout<<" Correct! You guessed the number"<<endl;
            break;
        } else if (guess > number) {
            printf("Too high!\n");
        } else {
            printf("Too low!\n");
        }
        

	}while(number != 65);
}
	
