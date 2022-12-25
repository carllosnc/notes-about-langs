// working like generatos
import 'dart:async';

Stream<int> stm1() async* {
  yield 1;
  await Future.delayed(Duration(seconds: 1));
  yield 2;
  await Future.delayed(Duration(seconds: 1));
  yield 3;
}

void main(List<String> args) {
  final controlle = StreamController<int>();

  controlle.sink.add(10);
  controlle.sink.add(3);
  controlle.sink.add(5);

  controlle.stream.map((event) => event * 2).listen(
    (event) {
      print(event);
    },
  );
}
