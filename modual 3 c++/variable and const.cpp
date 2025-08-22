#include <iostream>
using namespace std;

int main() {
    
    int age = 20;
    float height = 5.8;
    char grade = 'A';
    bool isStudent = true;

       const float PI = 3.14;

    
    float circleArea = PI * height * height; 
    
    cout << "Age: " << age << endl;
    cout << "Height: " << height << endl;
    cout << "Grade: " << grade << endl;
    cout << "Is student? " << isStudent << endl;
    cout << "Circle area: " << circleArea << endl;

    return 0;
}

