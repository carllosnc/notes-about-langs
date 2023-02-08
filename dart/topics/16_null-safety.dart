int? couldReturnNullButDoesnt() => -3;

void main(List<String> args) {
  int? couldBeNullButIsnt = 1;

  List<int?> listThatCouldHoldNulls = [10, 10, 4];

  int a = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first ?? 2;
  int c = couldReturnNullButDoesnt()!.abs();

  print(a);
  print(b);
  print(c);
}
