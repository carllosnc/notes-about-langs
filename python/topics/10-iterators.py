'''
list, tuples, dictionaries, and sets are iterable objects
they are iterable containers which you can get an iterator from

all these objects have a iter() methos which is used to get and iterator
'''

mytuple = ("foo", "bar", "span", "fuzz")
myit = iter(mytuple)

print(next(myit))
print(next(myit))
print(next(myit))
print(next(myit))

# looping through and iterator

for x in ('foo', 'bar', 'span'):
    print(x)
