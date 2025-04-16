# classes
class MyClass:
    x = 5


p1 = MyClass()

print(p1.x)


# __init__ function
class Person1:
    def __init__(self, name, age): # type: ignore
        self.name = name
        self.age = age

    def myfunc(self):
        print('Hello my name is' + self.name)


p1 = Person1('John', 36)

print(p1.name)
print(p1.age)


# the self parameter
class Person2:
    def __init__(SELF, name, age): # type: ignore
        SELF.name = name
        SELF.age = age

    def myfunc(SELF): # type: ignore
        print('hello my name is ' + SELF.name)


p2 = Person2("John", 36)
p2.myfunc()
