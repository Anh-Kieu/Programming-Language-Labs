#include <iostream>
using namespace std;

int main() {
    cout << "char: " << sizeof(char) << endl;
    cout << "bool: " << sizeof(bool) << endl;
    cout << "short: " << sizeof(short) << endl;
    cout << "int: " << sizeof(int) << endl;
    cout << "float: " << sizeof(float) << endl;
    cout << "long: " << sizeof(long) << endl;
    cout << "long long: " << sizeof(long long) << endl;
    cout << "double: " << sizeof(double) << endl;
    cout << "long double: " << sizeof(long double) << endl;

    cout << "Non-lossy implicit coercion: " << endl;
    short s = 31;
    long x = s;
    cout << "Set a long = a short: "<< x << endl;
    cout << "Short = "<< s << endl;
    cout << "Long = "<< x << endl;

    float f = 31.234;
    double d = 2*f;
    cout << "Set a double = a multiple of float: " << endl; 
    cout << "Float = "<<f << endl; 
    cout << "Double = "<<d << endl; 


    cout << "Lossy implicit coercion: " << endl;
    int i = 128;
    short y = i;
    cout << "Set an int to a short:" << endl;
    cout << "Int i = "<< i << endl;
    cout << "Short y = i ="<< y << endl;

    cout << "Set a float to int:" << endl;
    float p = 3.14;
    int q = p;
    cout << "Float p = "<< p << endl;
    cout << "Int q = "<< q << endl;
    return 0;
}
