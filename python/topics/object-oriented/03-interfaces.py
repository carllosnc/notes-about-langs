from abc import ABC, abstractmethod

class NetWorkInterface(ABC):
    @abstractmethod
    def connect(self):
        pass

    @abstractmethod
    def transfer(self):
        pass

class RealNetwork(NetWorkInterface):
    def connect(self): # type: ignore
        return 'interface connection'

    def transfer(self): # type: ignore
        return 'interface transfer'


class FakeNetwork(NetWorkInterface):
    def connect(self): # type: ignore
        return 'faker interface connection'

    def transfer(self): # type: ignore
        return 'faker transfer'
