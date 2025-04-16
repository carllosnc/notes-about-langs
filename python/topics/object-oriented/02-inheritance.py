"""
inheritance allows us to define a class inherits all
the methods and properties from another class
"""


class Person:
    def __init__(self, fname, lname): # type: ignore
        self.firstname = fname
        self.lastname = lname

    def printname(self):
        print(self.firstname, self.lastname)


class Student(Person):
    def __init__(self, fname, lname): # type: ignore
        super().__init__(fname, lname)
        self.graduationyear = 2019

    def welcome(self):
        print("welcome", self.firstname, self.lastname,
              "to the class of", self.graduationyear)
