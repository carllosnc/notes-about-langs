/*
  OPERATORS

  https://www.dartlang.org/guides/language/language-tour#operators
*/

class Mock {
  String text;
  Mock(this.text);

  up() {
    this.text = this.text.toUpperCase();
  }

  zz() {
    this.text = 'zz${text}zz';
  }

  xx() {
    this.text = 'xx${text}xx';
  }
}

main(List<String> args) {
  // arithmetic operators

  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0

  // equality and relational operators

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  // type test operators

  print("foo" is! num);

  // logical operators

  if (!false) {
    print('inverts the following expression');
  }

  if (true && true) {
    print('logical AND');
  }

  if (false || true) {
    print('logical OR');
  }

  // conditional expressions
  var value;

  var exp1 = value ?? "hello world";

  print('$exp1');

  // cascade notation
  Mock foo = Mock('Hello world');
  foo
    ..up()
    ..zz()
    ..xx();

  print(foo.text);

  // other operators

  // () - Function application
  // [] - List access
  // . - Member access
  // ?. - Conditional member access

  Mock bar = Mock('Hello world!');
  print(bar.text);
}
