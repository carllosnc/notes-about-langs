/*
  VARIABLES AND TYPES

  https://www.dartlang.org/guides/language/language-tour#variables
  https://www.dartlang.org/guides/language/language-tour#enumerated-types
*/

/*---------------------------------------
  built-in types
----------------------------------------*/
String a = "Hello world";
num b = 10;
int c = 10;
double d = 20.1;
bool e = true;
Function f = (arg) {
  print('a simple function');
};

var g = "A simple variable";
const i = "compile-time constant";
final j = "A contant variable at run time";
final String k = "typing a final variable";

// can change the type.
dynamic h = "A simple dynamic variable";

// final and collections
final l = const [];
final m = const [];
const n = [];

/*---------------------------------------
  enum
----------------------------------------*/
enum Color { red, green, blue }

main(List<String> args) {
  print('types');
}
