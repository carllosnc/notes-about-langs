import 'dart:async';

Stream<int> counter() {
  final controller = StreamController<int>.broadcast();
  var count = 0;

  Timer.periodic(Duration(seconds: 1), (timer) {
    controller.add(count++);
  });

  return controller.stream;
}

Stream<int> getNumbers() async* {
  for (var element in List<int>.generate(10, (index) => index)) {
    yield element;

    await Future.delayed(
      Duration(seconds: 1),
    );
  }
}

Stream<int> getNumbersException() async* {
  for (var element in List<int>.generate(10, (index) => index)) {
    yield element;

    await Future.delayed(Duration(seconds: 1));

    if (element == 3) {
      throw Exception('this is my exception');
    }
  }
}

void main(List<String> args) {
  var ex1 = counter();

  ex1.listen((event) {
    print('listener1 : ${event}');
  });

  ex1.listen((event) {
    print('listener2 : ${event}');
  });
}
