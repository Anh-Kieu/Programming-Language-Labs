#include"tree.h"
#include<iostream>
#include<string>
using namespace std;
/* If nullptr is causing an error then you are not correctly using C++11 */

BST::BST(){
  this->key = -1; // placeholder till you get a real value
  this->left = nullptr; // nullptr is the null pointer.
  this->right = nullptr;
  this->value = "";
}

bool BST::isleaf(){
  return (this->left == nullptr) && (this->right == nullptr);
}

/* Define the functions insert() and search() here according to their declaration in
the tree.h header file. */

void BST::insert(int k, string v) {
    // empty tree:
  if (isleaf()) {
    key = k;
    value = v;
    left = new BST();
    right = new BST();
    return;
  }
  if (key < k) {
    right->insert(k, v);
  }

  if (key > k) {
    left->insert(k,v);
  }
}

string BST::search(int k) {
  if (this->key == k) {
    return this->value;
  }
  if (this -> key == -1) {
    return "Not Found!";
  }
  if (this-> key < k) {
    return (this->right)->search(k);
  }
  if (this-> key > k) {
    return (this->left)->search(k);
  }
}




int main(){
  BST * t = new BST();

  t->insert(10,"Ten");
  t->insert(5,"Five");
  t->insert(12, "Twelve");
  t->insert(7, "Seven");
  t->insert(4, "Four");
  t->insert(11, "Eleven");

  cout << t->search(5) << endl;
  cout << t->search(10) << endl;
  cout << t->search(6) << endl;
  cout << t->search(7) << endl;
  cout << t->search(11) << endl;

  return 0;
}
