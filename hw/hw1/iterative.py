'''
Name: Anh Kieu
CSCI 208
Prof. Wittie
Homework 1 - Iterative
'''

'''
int foo (int n){
if (n<=1) return 5;
else return n + foo(n-1);
}
'''

def foo(x):
    """
    Compute the iterative sum from a number x
    :param x: int
    :return: int (the sum)
    """
    n = 5
    while x > 1:
        n += x
        x -= 1
    return n

def rec(n):
    """
    Original algorithm using recursion
    :param n: int
    :return: int
    """
    if n<=1:
        return 5
    else:
        return n + foo(n-1)

# Test:
print(foo(0) == rec(0))
print(foo(-3) == rec(-3))
print(foo(5) == rec(5))