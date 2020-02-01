'''
Name: Anh Kieu
CSCI 208
Prof. Wittie
'''

from enum import Enum, auto

class Fruit(Enum):
    ORANGE = auto()
    BANANA = auto()
    BLUEBERRY = auto()

    def getMessage(self):
        return "I am " + fruit.name

print(list(Fruit))

for fruit in Fruit:
    print(fruit)
    print(fruit.getMessage())
