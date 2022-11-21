# if, else, elif
a = 200
b = 33
c = 500
x = 41

if b > a:
    print('b is greate than a')
elif a == b:
    print('a and b are equals')
else:
    print('a is greater than b')

# short hand if
if a > b:
    print('a is greater than b')

# short hand if...else
print("A") if a > b else print("B")

# and
if a > b and c > a:
    print('Both conditions are True')

# or
if x > 10:
    print("Above ten")
    if x > 20:
        print("and also above 20!")
    else:
        print("bot not above 20.")

# the pass statement
if b > a:
    pass
