/*
  Metadata

  https://www.dartlang.org/guides/language/language-tour#generators
*/

import 'lib/todo.dart';

class Television {
  void turnOn() {
    print('turn on');
  }

  @deprecated
  void activate() {
    turnOn();
  }
}

main(List<String> args) {
  var tv = Television();
  tv.activate();

  @Todo('seth', 'make this do something')
  void doSomethig() {
    print('do something');
  }

  doSomethig();
}
