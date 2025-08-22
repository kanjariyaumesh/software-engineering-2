#include <iostream>
using namespace std;

class Rectangle {
    float length, width; 
public:
    void setDimensions(float l, float w) {
        length = l; width = w;
    }
    float area() {
        return length * width;
    }
};

int main() {
    Rectangle rect;          
    float l, w;
    cout << "Enter length and width: ";
    cin >> l >> w;
    rect.setDimensions(l, w);
    cout << "Area of rectangle: " << rect.area() << endl;
    return 0;
}

