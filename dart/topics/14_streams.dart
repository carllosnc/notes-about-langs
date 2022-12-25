import 'dart:async';

Stream<int> counter() {
  final controller = StreamController<int>();
  var count = 0;

  Timer.periodic(Duration(seconds: 1), (timer) {
    controller.sink.add(count++);
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
  var ex1 = getNumbers();

  print(ex1.first);
}
