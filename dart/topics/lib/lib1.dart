class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String myName(){
    return "my name is ${this.name}";
  }
}

String foo(){
  return "it's a simple function";
}

num bar(){
  return 42;
}

final List<String> span = const ["first", "second", "third"];
