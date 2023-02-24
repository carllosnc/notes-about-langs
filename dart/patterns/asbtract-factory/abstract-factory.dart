abstract class Drinkable {
  void pour();
}

class Beer implements Drinkable {
  @override
  void pour() {
    print("Pouring a delicious Beer");
  }
}

class Coffe implements Drinkable {
  @override
  void pour() {
    print("Puring a delicious coffe");
  }
}

abstract class DrinkFactory {
  Drinkable createDrink();
}

class Pub implements DrinkFactory {
  @override
  Drinkable createDrink() {
    return Beer();
  }
}

class CoffeShop implements DrinkFactory {
  @override
  Drinkable createDrink() {
    return Coffe();
  }
}

void main(List<String> args) {
  var mood = 'Sleepy';
  late DrinkFactory destination;

  switch (mood) {
    case "sleepy":
      destination = CoffeShop();
      break;
    case "done":
      destination = Pub();
      break;
    default:
      print("I only have two moods...");
  }

  var myBeverage = destination.createDrink();
  myBeverage.pour();
}
