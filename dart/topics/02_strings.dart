/*
  STRINGS

  https://www.dartlang.org/guides/language/language-tour#strings
*/

/*---------------------------------------
  strings
----------------------------------------*/

var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

hello(arg) => "$arg, Hello world!";

/*---------------------------------------
  literals
----------------------------------------*/

int value = 10;
var ex1 = "It's a expression -> ${1 + 2 / 3}";
var ex2 = "I's a interpolation -> $value";
var ex3 = "It's a expression with a interpolation -> ${value + 10}";
var ex4 = "It's a complex expression -> ${hello('Dart')}";

/*---------------------------------------
  multiline
----------------------------------------*/

String mult1 = """
  I'ts a
  double quote
  example
  of
  multiline
""";

String mult2 = '''
  I'ts a
  single quote
  example
  of
  multiline
''';

String mult3 = """
  It's a multipline
  with interpolation
  ${value}
""";

main(List<String> args) {
  print('string');
}
