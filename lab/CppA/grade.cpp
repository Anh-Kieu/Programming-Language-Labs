#include <iostream>
 #include <vector>
 using namespace std;
 
 int main() {
     vector<int> vec;
     cout << "Type some integers between 0 and 10" << endl;
     int x;
     do {
         cin >> x;
         vec.push_back(x);
     } while (cin);
     float sum = 0;
     int min = 10;
     for (int &i : vec) {
        if (min > i)
            min = i;
        sum += i;
     }
     float avg = (sum - min)/(vec.size()-1);
     char grade;
     if (avg >= 9) grade = 'A';
     else if (avg >= 8) grade = 'B';
     else if (avg >= 7) grade = 'C';
     else if (avg >= 6) grade = 'D';
     else grade = 'F';
     cout << "The avg without the min val is " << avg << ". Thus, grade = " << grade << endl;
     return 0;
 }

