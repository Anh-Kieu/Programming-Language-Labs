#include<iostream>
#include<string>
using namespace std;

class A {
  public:
    virtual void f() { cout << "Method from A" << endl;} // make it dynamic binding
    void g() { f(); }
};

class B: public A{
  public:
    void f() { cout << "Method from B" << endl;}
};

int main() {
  B b;
  b.g();
}
