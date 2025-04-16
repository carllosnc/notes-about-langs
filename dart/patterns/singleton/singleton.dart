import 'package:test/test.dart';

class Singleton {
  static final Singleton _instance = Singleton._();

  Singleton._();

  factory Singleton() {
    return _instance;
  }
}

void main(List<String> args) {
  var foo = Singleton();
  var bar = Singleton();

  print(foo.hashCode);
  print(bar.hashCode);

  test('check singleton', () {
    expect(foo.hashCode == bar.hashCode, true);
  });
}
