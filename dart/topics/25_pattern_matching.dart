// https://mokshmahajan.hashnode.dev/unlock-the-magic-of-pattern-matching-in-dart-30

enum Colors { red, green, blue }

logicalOr() {
  var color = Colors.red;

  var isPrimary = switch (color) {
    Colors.red || Colors.green => true,
    _ => false,
  };

  print(isPrimary);
}

logicalAnd() {
  var a = 10;

  var isPrimary = switch (a) {
    > 5 && < 15 => true,
    _ => false,
  };

  print(isPrimary);
}

//relatinal
String asciiCharType(int char) {
  return switch (char) {
    >= 65 && <= 90 => 'Upper Case',
    >= 97 && <= 122 => 'Lower Case',
    >= 48 && <= 57 => 'Digit',
    _ => 'Special Character',
  };
}

//cast
void cast() {
  (num, Object) record = (1, 'Dart');
  var (a as int, b as String) = record;

  print(a);
  print(b);
}

void main(List<String> args) async {
  logicalOr();
  logicalAnd();
  print(asciiCharType(65));
  cast();
}
