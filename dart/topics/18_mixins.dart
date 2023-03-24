//class animal
class Animal {
  String name;
  Animal(this.name);
  void eat() => print('$name is eating');
}

//mixin swim
mixin Swimmer {
  void swim() => print('Swimming');
}

//class dolphin who extends animal and implements swim
class Dolphin extends Animal with Swimmer {
  Dolphin(String name) : super(name);
}

//class fish who extends animal and implements swim
class Fish extends Animal with Swimmer {
  Fish(String name) : super(name);
}

void main(List<String> args) {
  final flipper = Dolphin('Flipper');
  flipper.eat();
  flipper.swim();

  final nemo = Fish('Nemo');
  nemo.eat();
  nemo.swim();
}
