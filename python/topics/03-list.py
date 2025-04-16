# https://realpython.com/python-lists-tuples/

# lists

a = ['foo', 'bar', 'span', 'baz', 'qux']
print(a)

# list are ordered

ord1 = ['foo', 'bar', 'span']
ord2 = ['bar', 'span', 'foo']

print(ord1 == ord2)  # false

# lists can contain arbitrary objects

arb = [1, "two", True, 4.32] # type: ignore

# lists can be accessed by index

acc = ['foo', 'bar', 'baz', 'qux', 'quux']
acc[0]
acc[2:4]
acc[:3]
acc[3:]
acc[0:3:2]

# in and not in

'foo' in ['foo', 'bar', 'span']  # boolean
'foo' not in ['foo', 'bar', 'span']  # boolean

# concatenation and replication

['foo'] + ['bar'] + ['span']
(['foo'] * 3) + (['bar'] * 3)

# len, min, max

len([1, 2, 3])
max(1, 2, 3)
min(1, 2, 3)

# lists can be nested

['a', ['bb', ['ccc']]]

# append itens

apn = []

apn.append('foo')
apn.append('bar')
apn.append('span')
