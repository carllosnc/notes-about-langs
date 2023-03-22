class Person {
  final String name;
  final int age;
  final String address;

  Person({
    required this.name,
    required this.age,
    required this.address,
  });

  Person copyWith({
    String? name,
    int? age,
    String? address,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
      address: address ?? this.address,
    );
  }

  void printValues() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void main(List<String> args) {
  final person = Person(
    name: 'John',
    age: 20,
    address: '123 Main St',
  );

  final copy = person.copyWith(name: 'Jane', age: 21);

  person.printValues();
  copy.printValues();
}
