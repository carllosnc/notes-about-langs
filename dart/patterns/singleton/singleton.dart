import 'package:test/test.dart';

class SingletonOne {
  static final SingletonOne _instance = SingletonOne._();

  SingletonOne._();

  factory SingletonOne() {
    return _instance;
  }
}

void main(List<String> args) {
  var foo = SingletonOne();
  var bar = SingletonOne();

  print(foo.hashCode);
  print(bar.hashCode);

  test('check singleton', () {
    expect(foo.hashCode == bar.hashCode, true);
  });
}
