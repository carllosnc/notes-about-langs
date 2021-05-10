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
Function f = (arg){
  print('a simple function');
};

var g = "A simple variable";
const i = "compile-time constant";
final j = "A contant variable at run time";
final String k  = "typing a final variable";

// can change the type.
dynamic h = "A simple dynamic variable";

// final and collections
final l = const [];
final m = const [];
const n = [];

// default value == null
String _default;

/*---------------------------------------
  enum
----------------------------------------*/
enum Color { red, green, blue }

/*---------------------------------------
  main function
----------------------------------------*/
main(List<String> args) {
  // Setting the dynamic variable
  h = false;

  // built in types
  print(a is String);
  print(b is num);
  print(c is int);
  print(d is double);
  print(e is bool);
  print(f is Function);
  print(_default == null);

  print(g);
  print(h);
  print(i);
  print(j);

  print(l);
  print(m);
  print(n);

  // enumerated types
  print(Color.red.index);
  print(Color.green.index);
  print(Color.blue.index);
  print(Color.values);
}
