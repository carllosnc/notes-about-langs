public class Playground {
  class Calc {
    int add(int a, int b) {
      return a + b;
    }

    int subtract(int a, int b) {
      return a - b;
    }

    int multiply(int a, int b) {
      return a * b;
    }

    int divide(int a, int b) {
      return a / b;
    }
  }

  public static void main(String[] args) {
    Playground playground = new Playground();
    Calc calc = playground.new Calc();

    System.out.println(calc.add(1, 2));
    System.out.println("Hello, World!, let's learn Java!");
  }
}
