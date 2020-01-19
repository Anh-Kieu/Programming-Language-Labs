'''
Name: Anh Kieu
CSCI 208
Prof. Wittie
Homework 1 - Recursive
'''

'''
int numdigits(int x){
int t=x, n =1;
while (t>=10){
n++;
t=t/10;
}
return n;
}
'''

def numdigits(x):
    '''
    Count the number of decimal digit of an integer
    :param x: int to check
    :return: int indicating the number of decimal digit
    '''
    n = abs(x) # take negative number into account
    # base case: if number only has 1 digit
    if n < 10:
        return 1
    else:
        return numdigits(n / 10) + 1

def numdigits_tail(x, num_decimal = 1):
    '''
    Count the number of decimal digit of an integer using TAIL RECURSION
    :param x: int to check
    :return: int indicating the number of decimal digit
    '''
    n = abs(x) # take negative number into account
    if n < 10:
        return num_decimal
    else:
        return numdigits_tail(n/10, num_decimal + 1)

# test case:
print("Test case: 2")
print(numdigits(2))
print(numdigits_tail(2))
print("Test case: 93212")
print(numdigits(93212))
print(numdigits_tail(93212))
print("Test case: -123")
print(numdigits(-123))
print(numdigits_tail(-123))