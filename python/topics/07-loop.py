# range
for x in range(10):
    print(x)

for x in range(5, 10):
    print(x)

for x in range(2, 10, 2):
    print(x)

# list
for x in ['foo', 'bar', 'span']:
    print(x)

# tuple
for x in ('foo', 'bar', 'span'):
    print(x)

# set
for x in {'foo', 'foo', 'bar', 'span'}:
    print(x)

# dict
dict = {
    'foo': 'first',
    'bar': 'second',
    'span': 'third'
}

for x, y in dict.items():
    print(f"{x} - {y}")
