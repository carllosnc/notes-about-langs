class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  Person copyWith({String? name, int? age}) {
    return Person(name: name ?? this.name, age: age ?? this.age);
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

void main(List<String> args) {
  Person person = Person(name: 'John', age: 20);
  Person clone = person.copyWith(name: 'Jack');
  print(clone.toString());
}
