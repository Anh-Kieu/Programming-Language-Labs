#include <iostream>
using namespace std;

int fibo(int n) {
    if (n == 0) {
        return 1;
    }
    if (n == 1) {
        return 1;
    }
    return fibo(n - 1) + fibo(n - 2);
}

int main() {
    int i = 0;
    int x = 1;
    while (x > 0) {
        x = fibo(i);
        cout << x << endl;
        i = i+1;
    }
    cout << "SUSPICIOUSLY WRONG!" << endl;
    return 0;
}
