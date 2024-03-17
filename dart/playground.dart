//mixin example
mixin Swimmer {
  void swim() => print('Swimming');
}

//mixin with properties
mixin Flyer {
  int age = 0;
  void fly() => print('Flying');
}

//mixin with methods
mixin Runner {
  void run() => print('Running');
  void runFor(int distance) => print('Running for $distance meters');
}

//mixin with abstract methods
mixin Jumper {
  void jump() => print('Jumping');
  void jumpOver(int distance);
}

//mixin that extends another mixin
mixin SuperJumper on Jumper {
  void superJump() => print('Super Jumping');
}

//class that use mixins
class Animal with Swimmer, Flyer, Runner, Jumper, SuperJumper {
  String name;
  Animal(this.name);
  void eat() => print('$name is eating');
  void jumpOver(int distance) => print('$name is jumping over $distance meters');
}

void main() async {
  final flipper = Animal('Flipper');
  flipper.eat();
  flipper.swim();
  flipper.fly();
  flipper.run();
  flipper.runFor(100);
  flipper.jump();
  flipper.jumpOver(10);
  flipper.superJump();
  print(flipper.age);
  flipper.age = 10;
  print(flipper.age);
}
