#include <iostream>
using namespace std;

int main() {
    float length, width, area;
    cout << "Enter length and width: ";
    cin >> length >> width;
    area = length * width;  // calculation
    cout << "Area of rectangle: " << area << endl;
    return 0;
}

