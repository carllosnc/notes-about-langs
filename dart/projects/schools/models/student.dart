import 'person.dart';

class Student extends Person {

  String registration = '';

  Student({
    required this.registration,
    required String name,
    required String lastname,
    required int age
  }) : super(name: name, lastname: lastname, age: age){

    registration = 'Person$registration';
  }

}