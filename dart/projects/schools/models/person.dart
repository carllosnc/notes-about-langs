class Person {

  String name = '';
  String lastname = '';
  int age = 0;

  Person({
    required this.name,
    required this.lastname,
    required this.age
  });

  get fullName{
    return "$name $lastname";
  }
}
