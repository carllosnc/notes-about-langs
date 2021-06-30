import 'dart:math';

main(List<String> args) {

  double anyToDouble(dynamic arg){
    try {
      return double.parse(arg.toString());
    } catch (e) {
      return 0.0;
    }
  }

  print(anyToDouble(0)); // 0.0
  print(anyToDouble(1)); // 1.0
  print(anyToDouble(20.0)); // 20.0
  print(anyToDouble('10')); // 10.0
  print(anyToDouble(false)); // 0.0
  print(anyToDouble(true)); // 0.0
  print(anyToDouble('2000')); // 2000.0
  print(anyToDouble('hello world')); // 0.0
  print(anyToDouble(null)); // 0.0

}
