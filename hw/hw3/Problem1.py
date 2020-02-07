'''
Name: Anh Kieu
CSCI 208
Prof. Wittie
Homework 3
'''

def printAge():
    '''
    The program takes any input in any form then print the thing out.
    Dynamically typed programming language could do this as they don't care about the type of the input.
    Limit users potentially crashing the system by being... unpredictable? (for example, instead of inputting integer
    for age, they might do string, because why not?
    '''
    print("Hi, how old are you?")
    age = input();
    print("Happy " + age)

if __name__ == "__main__":
    printAge()