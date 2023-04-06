enum Days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Color {
  red('red'),
  green('green'),
  blue('blue');

  const Color(this.name);
  final String name;
}

void main(List<String> args) {
  void printColor(Color color) {
    print(color.name);
  }

  printColor(Color.red);
  printColor(Color.green);
  printColor(Color.blue);
}
