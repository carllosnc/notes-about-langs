Iterable<int> gen() sync* {
  for (var item in List<int>.generate(10, (index) => index)) {
    yield item;
  }
}

void main(List<String> args) {
  gen().forEach(print);
}
