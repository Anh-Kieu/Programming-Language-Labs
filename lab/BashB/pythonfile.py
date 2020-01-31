'''
Name: Anh Kieu
CSCI 208 - BashB
'''

import sys

def findAllCombos(s, c , n):
    if len(s) == 0:
        if len(c) == n:
            print(c)
    elif len(c) == n:
        print(c)
    else:
        first = s[0]
        rest = s[1:]
        findAllCombos(rest, c + first, n)
        findAllCombos(rest, c, n)

def findSubstrings(s):
    for i in range(1, len(s)+ 1):
        findAllCombos(s, "", i)

if __name__ == "__main__":
    if (len(sys.argv) != 2):
        print("Invalid number of argument for python file")
    else:
        findSubstrings(sys.argv[1])
