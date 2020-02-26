#include <iostream>
#include <string>
using namespace std;

int main() {
  int a = 1, b = 1;
  // normal int
  const int c = 1;
  // const int
  int *d = &a;
  // normal pointer to a normal int
  // int *e = &c;
  // normal pointer cannot point to the constant because the pointer might modify the constant which is not allowed
  const int *f = &a;
  // normal pointer to a const int
  const int *g = &c;
  // normal pointer to a const int
  int * const h = &a;
  // const pointer to a normal int
  const int * const i = &c;
  // const pointer to a const int
  int &j = a;
  // reference to a normal int
  // int &k = c;
  // Cannot use reference to the const
  const int &m = a;
  // reference to a normal int;
  // int & const n = a;
  // there is no const reference

  a = 2;
  // c = 2;
  // illegal as constant
  *d = 3;
  // *f = 3;
  // cannot change the const int in the pointer
  f = &b;
  // h = &b;
  // h is a const pointer, cannot change where it points
  // *j = 3;
  // j is not a pointer
  // m = 3;
  // reference is declared const 
  cout << "SUCCESS" << endl;
  return 0;
}
