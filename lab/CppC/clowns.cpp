#include<iostream>
#include<string>
using namespace std;

class Clown {
  public:
    string name;
    Clown(string input) { name = input; }
    virtual void dance() { cout << name << " twirls like a ballerina" << endl; }
};

class CircusClown: public Clown {
public:
  CircusClown(string input): Clown(input) {}
  void dance() { cout << name << " hops up and down" << endl; }
};

int main() {
  Clown *carl = new Clown("Carl");
  carl->dance();
  CircusClown * joe = new CircusClown("Joe");
  joe->dance();
  Clown * bob = new CircusClown("Bob");
  bob->dance();
  Clown * joeJr = (Clown*) joe;
  joeJr->dance();
}
