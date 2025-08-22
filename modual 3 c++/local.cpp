#include <iostream>
using namespace std;
int globalVar = 100;


void showVariables();

int main()
 {
    cout << "In main - Global variable: " << globalVar << endl;
    showVariables();

    return 0;
}
void showVariables() {
    int localVar = 50;  // Local variable
    cout << "Inside function - Local variable: " << localVar << endl;
    
}

