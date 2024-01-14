Future<String> fn() async {
  return "Hello World!";
}

void main() async {
  //call stack: 2
  Future.delayed(Duration(seconds: 0), () {
    print("Exec 3");
  });

  //call stack: 1
  fn().then((value) {
    print("Exec 4");
  });

  //call stack: 1
  fn().then((value) {
    print("Exec 1");
  });

  //call stack: 0
  print("Exec 2");
}
