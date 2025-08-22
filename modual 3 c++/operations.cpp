#include <iostream>
using namespace std;

int main() {
    int a = 5, b = 3;

        cout << "Arithmetic sum: " << a+b <<endl; 
		cout << "Arithmetic sub: " << a-b <<endl;
		cout << "Arithmetic mul: " << a*b <<endl;
		cout << "Arithmetic div: " << a/b <<endl;
		cout << "Arithmetic mod: " << a%b <<endl;
		cout<<endl;
    
    cout << "Relational greter: " << (a>b) << endl;
    cout << "Relational less: " << (a<b) << endl;
    cout << "Relational greter equal: " << (a>=b) << endl;
    cout << "Relational: less equal" << (a<=b) << endl;
    cout << "Relational not equal: " << (a!=b) << endl;
    cout << "Relational equal equal: " << (a==b) << endl;
	
cout<<endl;
    
    cout << "Logical and: " << (a>0 && b>0) <<endl;
	cout << "Logical or: " << (a>0 || b>0) <<endl;
	cout << "Logical not: " << !(a>b) <<endl; 

    return 0;
}

