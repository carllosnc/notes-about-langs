from abc import ABC, abstractmethod


class NetWorkInterface(ABC):
    @abstractmethod
    def connect(self):
        pass

    @abstractmethod
    def transfer(self):
        pass


class RealNetwork(NetWorkInterface):
    def connect(self):
        return 'interface connection'

    def transfer(self):
        return 'interface transfer'


class FakeNetwork(NetWorkInterface):
    def connect(self):
        return 'faker interface connection'

    def transfer(self):
        return 'faker transfer'
