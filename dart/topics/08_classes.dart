/*
CLASSES

https://www.dartlang.org/guides/language/language-tour#classes
*/

/*---------------------------------------
  constructors

  If you don’t declare a constructor, a
  default constructor is provided for you.

  Subclasses don’t inherit constructors
  from their superclass.
----------------------------------------*/

/*---------------------------------------
  basic syntax
----------------------------------------*/
class Point1 {
  var x;
  var y;

  Point1(num x, num y){
    this.x = x;
    this.y = y;
  }
}

/*---------------------------------------
  short syntax
----------------------------------------*/
class Point2 {
  var x, y;

  Point2(this.x, this.y);
}

/*---------------------------------------
  named constructors
----------------------------------------*/
class Point3 {
  var x, y;

  Point3.string(String this.x, String this.y);
  Point3.integer(int this.x, int this.y);
  Point3.number(num this.x, int this.y);
  Point3.origin(){ x = 0; y = 0; }
  Point3.middle(){ x = 10; y = 10; }
}

/*---------------------------------------
  inherit constructors
----------------------------------------*/
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Programmer extends Person {
  String language;

  Programmer(String name, int age, String language): super(name, age){
    this.language = language;
  }
}

/*---------------------------------------
  initialize and validate
----------------------------------------*/
class People {
  var name, age;

  People(String this.name, int this.age) : assert(age >= 18) {
    print('People class initilized');
  }
}

class Car {
  var name, age;

  Car(name, age) : name = name, age = age {
    print('Car initialized');
  }
}

/*---------------------------------------
  redirecting constructors
----------------------------------------*/
class Cords {
  num x, y;

  Cords(this.x, this.y);

  // Delegate to the main constructor.
  Cords.origin(num x) : this(x, 0);
}

/*---------------------------------------
  constant constructors
----------------------------------------*/
class ImmutablePoint {
  final num x, y;

  const ImmutablePoint(this.x, this.y);

  // immutable
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}

/*---------------------------------------
  methods
----------------------------------------*/
class Foo{
  int first(){
    return 1;
  }

  String second(){
    return '2';
  }
}

/*---------------------------------------
  getters and setters
----------------------------------------*/
class Rectangle {
  /*
    you can create additional properties
    by implementing setters and getters
  */

  num get left => 100;
  set left(num value) => left = value;

  num get right => 100;
  set right(num value) => right = value;

  num get bottom => 10;
  set bottom(num value) => bottom = bottom;

  num get top => 10;
  set top(num value) => value = value;
}

/*---------------------------------------
  abstract methods
----------------------------------------*/
abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething(){
    print('Doing something ...');
  }
}

/*---------------------------------------
  extending a class
----------------------------------------*/
class Persona{
  String name;
  int age;

  Persona(this.name, this.age);
}

class Worker extends Persona{
  String job;

  Worker(String name, int age, String job) : super(name, age){
    this.job = job;
  }
}

/*---------------------------------------
  overriding members
----------------------------------------*/
class Television {
  String turnOn(){
    return 'Method by television class';
  }
}

class SmartTelevision extends Television{
  @override
  String turnOn(){
    return 'Method Overrided by SmartTelevision class';
  }
}

/*---------------------------------------
  mixins
----------------------------------------*/
mixin Musical{
  void playPiano(){
    print('♫♪♫ Playing piano! ♫♪♫');
  }
}

mixin MusicalPerformer{
  void playGuitar(){
    print('♫♫♫ Playing guitar! ♪♪♪');
  }
}

class Musician with Musical, MusicalPerformer {
  String name;

  Musician(this.name);
}

/*---------------------------------------
  class variables and methods
----------------------------------------*/
class Storage {
  static String type = 'fruits';
  static List<String> listFruits = const ['Apple', 'Orangle', 'Kiwifruit'];

  static showFruits(){
    listFruits.forEach((item){
      print(item);
    });
  }
}

main(List<String> args) {
  // inherit constructor
  Programmer bob = Programmer('bob', 20, 'Dart');
  print(bob is Programmer);

  // initialize and validate
  Car gol = Car('gol', 2012);
  print(gol is Car);

  // constant constructors
  print(ImmutablePoint.origin.x);
  print(ImmutablePoint.origin.y);

  // getters and setters
  Rectangle rect = new Rectangle();

  print(rect is Rectangle);
  print("""
    top -> ${rect.top}
    bottom -> ${rect.bottom}
    right -> ${rect.right}
    left -> ${rect.left}
  """);

  // extending a class
  Worker joe = Worker('joe', 20, 'programmer');
  print(joe is Persona);
  print(joe is Worker);
  print(joe.name);

  // overriding members
  SmartTelevision tele = SmartTelevision();
  print(tele is Television);
  print(tele is SmartTelevision);
  print(tele.turnOn());

  // mixins
  Musician jimmy = Musician('Jimmy');
  jimmy.playPiano();
  jimmy.playGuitar();

  // classs variables and methods
  print(Storage.type);
  print(Storage.listFruits);
  Storage.showFruits();
}
