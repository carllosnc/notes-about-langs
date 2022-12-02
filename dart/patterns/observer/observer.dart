// my notification class
class Notification {
  String message = '';
  DateTime timestamp = DateTime.now();

  Notification(this.message, this.timestamp);
  Notification.forNow(this.message){
    timestamp = new DateTime.now();
  }
}

// my observable
class Observable {
  List<Observer> _observers = [];

  Observable(List<Observer> observers){
    _observers = observers;
  }

  void registerObserver(Observer observer){
    _observers.add(observer);
  }

  void notifyObservers(Notification notification){
    for(var observer in _observers){
      observer.notify(notification);
    }
  }
}

// observer that receiver notifications
class Observer {
  String name = '';

  Observer(this.name);

  void notify(Notification notification){
    print('Notification sended to: $name');
  }
}

class CoffeMaker extends Observable {
  CoffeMaker(List<Observer> observers) : super(observers);

  void brew(){
    print('Brewing the coffee...');
    notifyObservers(Notification.forNow("coffee's done"));
  }
}

void main(List<String> args) {
  var me = Observer("tyler");
  var myWife = Observer("Kate");

  var mrCoffee = CoffeMaker(List.from([me]));

  mrCoffee.registerObserver(myWife);
  mrCoffee.brew();
}
