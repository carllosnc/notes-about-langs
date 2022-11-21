# when an error occurs, or exception as we call it.
# Python will normaly stop generate and error message
try:
    print(1/0)
except Exception as error:
    print('An exception occurred:', error)

try:
    print(1/1)
except:
    print('And exception occurred')
else:
    print('No errors')
finally:
    print('Finnaly')


# raise exceptions
def fn():
    raise Exception('my custom exception')


try:
    fn()
except Exception as e:
    print(e)
finally:
    print('finally')
