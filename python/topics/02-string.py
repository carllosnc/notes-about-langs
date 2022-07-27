# https://realpython.com/python-strings/#string-manipulation

# strings

string = 'hello world'
print(type(string))

# the + operator

print('hello' + ' ' + 'world')

# the * operator

print(3 * 'foo.')

# the in operator

print('h' in 'hello world')  # true
print('hello' in 'hello world')  # true
print('foo' in 'hello world')  # false

# the not in operator

print('h' not in 'hello world')  # false
print('hello' not in 'hello world')  # false
print('foo' not in 'hello world')  # true

# built-in string functions

print(chr(37))  # converts an integer to a character
print(ord('a'))  # converts a character to an integer
print(len('hello world'))  # return a length of a string
print(type(str(20 + 20)))  # return a string representation of an object

# string index

string_index = "hello world"

print(string_index[0])  # h
print(string_index[1])  # e
print(string_index[2])  # l
print(string_index[3])  # l
print(string_index[4])  # o

# string slicing

string_slicing = "hello world"

print(string_slicing[0:5])  # hello
print(string_slicing[6:11])  # world

# interpolating variable into a string

h = 'hello'
w = 'world'

print('printing:', h, w)
print(f'printing: {h} {w}')
print(f"printing: {h} {w}")

# built-in string methods

print('hello world'.capitalize())
print('hello world'.upper())
print('HELLO WORLD'.lower())
print('HellO WorlD'.swapcase())
print('hello world'.title())

# find and replace

print('foo boo spoo'.count('oo'))  # 3
print('foo boo spoo'.count('oo', 0, 8))  # 2

print('foobarspan'.endswith('span'))  # true
print('foobarspan'.endswith('bar', 0, 6))  # true

print('foo bar span baz foo qux'.find('bar'))
