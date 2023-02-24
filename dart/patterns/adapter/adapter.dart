const adapteeMessage = 'Adaptee says: Hello World!';

class Adaptee {
  String method() {
    print('Adaptee method is being called.');

    return adapteeMessage;
  }
}

abstract class Target {
  String call();
}

class Adapter implements Target {
  @override
  String call() {
    var adaptee = Adaptee();

    print('Adapter is being called.');

    return adaptee.method();
  }
}

void main(List<String> args) {
  var adapter = Adapter();
  var result = adapter.call();

  print(result);
}
