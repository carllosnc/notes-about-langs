changeName(String name) {
  name = "new name";
}

class People {
  late String name;
}

void main(List<String> args) {
  String name = "old name";
  changeName(name);
  print(name);
}
