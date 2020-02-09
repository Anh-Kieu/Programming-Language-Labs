#include <iostream>
#include "imagine.h"
using namespace std;

Imag::Imag(double x, double y) {
  this->real = x;
  this->imag = y;
}

Imag Imag::add(Imag num) {
  double new_real = this->real + num.real;
  double new_img = this->imag + num.imag;
  return Imag(new_real, new_img);
}

Imag Imag::mult(Imag num) {
  double new_real = this->real * num.real - this->imag * num.imag;
  double new_img = this->imag * num.real + num.imag * this->real;
  return Imag(new_real, new_img);
}

Imag operator*(Imag n1, Imag n2){
  return n1.mult(n2);
}

Imag operator+(Imag n1, Imag n2){
  return n1.add(n2);
}

ostream & operator<<(ostream &c, Imag n) {
  c << n.real << " + i" << n.imag;
}

int main() {
  Imag n1 = Imag(0.3, 0.2);
  Imag n2 = Imag(0.6, 0.75);

  cout << n1 << endl;
  cout << n2 << endl;
  cout << "n1 + n2 = " << (n1+n2) << endl;
  cout << "n1 * n2 = " << (n1*n2) << endl;
  cout << "n1 * n1 * n1 * n1 = " << (n1*n1*n1*n1) << endl;
}
