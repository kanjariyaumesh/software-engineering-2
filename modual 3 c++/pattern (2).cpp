#include <iostream>
using namespace std;

int main() {
    int rows;

    cout << "Enter number of rows: ";
    cin >> rows;

    for (int i = 1; i <= rows; i++) {          // Outer loop ? rows
        for (int j = 1; j <= i; j++) {         // Inner loop ? stars
            cout << "* ";
        }
        cout << endl;                          // New line after each row
    }

    return 0;
}

