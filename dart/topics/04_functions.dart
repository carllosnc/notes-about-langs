/*
  FUNCTIONS

  https://www.dartlang.org/guides/language/language-tour#functions
*/

/*---------------------------------------
  basic
----------------------------------------*/
fn1(){
  return 'a simple function';
}

fn2(arg){
  return arg;
}

/*---------------------------------------
  typed
----------------------------------------*/
String typed1(){
  return 'typed function';
}

Function typed2(){
  return (){
    return "Returning another function";
  };
}

void typed3(){
  print('no return');
}

// Short syntax
String short() => "Short syntax to 'return exp;'";

/*---------------------------------------
  optional named parameters
----------------------------------------*/
optional({String foo, String bar}){
  print('$foo -> $bar');
}

/*---------------------------------------
  optional positional parameters
----------------------------------------*/
optional_positional(String foo, String bar, [String span]){
  print('$foo $bar $span');
}

/*---------------------------------------
  default named parameters value
----------------------------------------*/
default1({String hello = "hello",  String world = "world"}){
  print('$hello $world');
}

default2({List<String> list = const ['1', '2', '3']}){
  print(list);
}

/*---------------------------------------
  function as a first-class object
----------------------------------------*/
firstClass(fn){
  fn('function as a first-class object');
}

/*---------------------------------------
  lexical scope
----------------------------------------*/
scope(){
  // foo scope variable
  var value1 = 'foo value';

  bar(){
    // bar scope variable
    var value2 = 'bar value';

    print('$value1 - $value2');
  }

  bar();
}

/*---------------------------------------
  lexical closures

  A closure is a function object that
  has access to variables in its lexical
  scope, even when the function is used
  outside of its original scope.
----------------------------------------*/

Function makeAdder(num addBy){
  return (num i) => addBy + i;
}

/*---------------------------------------
  main function
----------------------------------------*/
main(List<String> args) {

  // function as a parameter
  // anon function
  firstClass((arg){
    print(arg);
  });

  // optional named parameters
  optional(foo: "hello");
  optional(foo: "hello", bar: "world");

  // optional positional parameters
  optional_positional('hello', 'world');
  optional_positional('hello', 'word', 'again');

  // default named parameters value
  default1();
  default1(hello:"Olá", world:"mundo");

  default2();

  // lexical scope
  scope();

  // lexical closure
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);

  add2(2); // 4
  add4(2); // 6

}

