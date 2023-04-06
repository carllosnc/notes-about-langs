class Calc {
  num value;

  Calc({this.value = 0});

  add(num a) {
    this.value += a;
  }

  sub(num a) {
    this.value -= a;
  }

  mul(num a) {
    this.value *= a;
  }

  div(num a) {
    this.value /= a;
  }
}

void main(List<String> args) {
  Calc calc = Calc(value: 10);

  calc
    ..add(10)
    ..add(20)
    ..sub(5)
    ..mul(2)
    ..div(3);

  print(calc.value);
}
