#include <iostream>
using namespace std;

int main() {
    // int &j;
    cout << "1. It is impossible to declare a ref without initializing it" << endl;
    
    int *p;
    cout << "2. It is possible to declare a pointer without initializing it" << endl;
    
    int i = 0;
    int b = 2;
    bool c = true;
    bool &j = c;
    cout << j << endl;
    j = b;
    cout << j << endl;
    j = i;
    cout << j << endl;
    cout << c << endl;
    cout << i << endl;
    cout << b << endl;
    cout << "3. It is impossible to reassign a reference. The equal sign will just change the value that it holds reference to (and change according to the original ref type. For example true -> 1)." << endl;
    
    int x = 32;
    int *k = &x;
    cout << *k << endl;
    k = &b;
    cout << *k << endl;
    cout << "4. It is possible to reassign a pointer so it points to a different mem address" << endl;
    
    int n = 5; int *o = &n; int &r = *o;
    *o += r;
    cout << n  << " " << *o << " " << r << endl;

    cout << "5. The integer is first set to be 5. Then the pointer points to the integer. The reference makes reference to the value the pointer is pointing to, which is 5 (the integer). Thus, when we increase the value the pointer pointing to by the reference value (which is the integer value 5), we change everything to be 5+5 = 10 (change pointer value change integer change reference).:w" << endl;
    return 0;
}
