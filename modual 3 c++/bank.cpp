#include <iostream>
using namespace std;

class bankaccount {
private:
    double balance;

public:
    // Constructor for initializing balance
    bankaccount() {
        balance = 25000;
    }

    // getter
    double getbalance() {
        return balance;
    }

    void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            cout << "You withdrew: " << amount << endl;
        } else {
            cout << "Insufficient balance" << endl;
        }
    }

    void deposit(double amount) {
        balance += amount;
        cout << "Deposited: " << amount << endl;
    }

    void display() {
        cout << "Your current balance is: " << balance << endl;
    }
};

int main() {
    int choice;
    double amount;
    bankaccount b1;   // constructor automatically sets 25000

    do {
        cout << "\nBank Menu\n";
        cout << "1. Show Balance\n";
        cout << "2. Deposit\n";
        cout << "3. Withdraw\n";
        cout << "4. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1:
                b1.display();
                break;

            case 2:
                cout << "Enter amount to deposit: ";
                cin >> amount;
                b1.deposit(amount);
                break;

            case 3:
                cout << "Enter amount to withdraw: ";
                cin >> amount;
                b1.withdraw(amount);
                break;

            case 4:
                cout << "Thank you for banking!" << endl;
                break;

            default:
                cout << "Invalid input, please try again." << endl;
        }
    } while (choice != 4);

    return 0;
}

