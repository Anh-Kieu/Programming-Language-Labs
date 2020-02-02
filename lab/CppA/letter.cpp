#include <iostream>
using namespace std;

int main() {
    cout << "Enter your name: " << endl;
    string first_name;
    cin >> first_name;
    cout << "Hello, " << first_name << endl;
    cout << "Enter the name of a person you want to invite for dinner: " << endl;
    string friend_name;
    cin >> friend_name;
    char friend_diet;
    cout << "Enter their diet restriction:\na. No food restriction\nv. Vegetarian\ng. Vegan" << endl;
    cin >> friend_diet;
    // invite dinner
    if (friend_diet == 'a') 
        cout << "Hi " << friend_name << ". Let's go out and eat everything!" << endl;
    else if (friend_diet == 'v')
        cout << "Hi " << friend_name << ". Let's have vegetarian food" << endl;
    else
        cout << "Hi " << friend_name << ". Let's have vegan food!" << endl;

    
    // motivation quotes
    int friend_age;
    cout << "How old is your friend?" << endl;
    cin >> friend_age;
    cout << "I heard that you will turn " << friend_age + 1 << endl;
    if (friend_age == 15) 
        cout << "Sweet 16 coming" << endl;
    else if (friend_age == 17) 
        cout << "Umm abt to be 18? You're about to be old." << endl;
    else if (friend_age == 20)
        cout << "Congrats, 21 coming, don't get wasted." << endl;
    else
        cout << "Happy " << friend_age+1<< "th birthday haha" << endl;
}
