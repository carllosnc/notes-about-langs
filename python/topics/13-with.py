'''
with statement in python is used in exception handling to make the code clean
and much more readable.
'''

with open('tmp1.txt', 'w') as file:
    file.write('Hello world by with statement')


# a simple file writer object
class MessageWriter(object):
    def __init__(self, file_name) -> None:
        self.file_name = file_name

    def __enter__(self):
        self.file = open(self.file_name, 'w')
        return self.file

    def __exit__(self, exec_type, exec_val, exec_tb):
        self.file.close()


# working like a try catch
with MessageWriter('tmp2.txt') as xfile:
    xfile.write('write by the class')
