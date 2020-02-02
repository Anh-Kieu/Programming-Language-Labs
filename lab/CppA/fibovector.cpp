#include <iostream>
#include <vector>
using namespace std;

int fibo(vector<int> &table, int n) {
    if (table[n] != 0) {
        return table[n];
    }
    if (n == 0) {
        table[0] = 1;
    }
    else if (n == 1) {
        table[1] = 1;
    } else {
        table[n] = fibo(table, n - 1) + fibo(table, n - 2);
    }
    return table[n];
}

int main() {
    vector<int> memo(50,0);
    int i = 0;
    int x = 1;
    while (x > 0) {
        x = fibo(memo, i);
        cout << x << endl;
        i = i+1;
    }
    cout << "SUSPICIOUSLY WRONG!" << endl;
    return 0;
}
