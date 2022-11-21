# class life cycle python

class Foo:
    def __init__(self) -> None:
        print('init')

    def __enter__(self):
        print('enter')

    def __exit__(self):
        print('exit')


fn = Foo()
