# function
def fn():
    print('hello world')


# args
def calc(a, b):
    return a + b


# multi args
def calc(*args):
    print(type(args))

    for item in args:
        print(item)


# keyword arguments
def my_function(arg1, arg2, arg3):
    print(arg1, arg2, arg3)


my_function(arg1='foo', arg2='bar', arg3='span')


# arbitrary keyword arguments, **kwargs
def my_function2(**args):
    print(f"args: {args['foo']}")


my_function2(bar="hello", foo="world")


# default parameter value
def my_function3(country="Norway"):
    print("I am from" + country)


my_function3("Sweden")
my_function3("India")
my_function3("Brazil")


# lambda functions
def my_function4(callback):
    callback()


my_function4(lambda: print('hello world!'))
