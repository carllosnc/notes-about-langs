import 'person.dart';

class Teacher extends Person {

  String registration = '';

  Teacher({
    required String registration,
    required String name,
    required String lastname,
    required int age
  }) : super(name: name, lastname: lastname, age: age){

      registration = 'teacher$registration';
  }

}
