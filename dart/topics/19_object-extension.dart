extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

extension IntExtension on int {
  int add(int value) {
    return this + value;
  }

  int substract(int value) {
    return this - value;
  }

  int multiply(int value) {
    return this * value;
  }

  int divide(int value) {
    return this ~/ value;
  }
}

void main(List<String> args) {
  print('hello'.capitalize());
  print(10.add(20));
  print(10.substract(20));
}
