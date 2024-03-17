#include <iostream>

int main()
{
  // arimethic operators
  int a = 10;
  int b = 20;
  int c = a + b;
  int d = a - b;
  int e = a * b;
  int f = a / b;
  int g = a % b;

  std::cout << c << std::endl;
  std::cout << d << std::endl;
  std::cout << e << std::endl;
  std::cout << f << std::endl;
  std::cout << g << std::endl;

  // assignment operators
  int h = 10;
  h += 10; // h = h + 10;
  h -= 10; // h = h - 10;
  h *= 10; // h = h * 10;
  h /= 10; // h = h / 10;
  h %= 10; // h = h % 10;

  std::cout << h << std::endl;

  // comparison operators
  bool i = a == b;
  bool j = a != b;
  bool k = a > b;
  bool l = a < b;
  bool m = a >= b;
  bool n = a <= b;

  std::cout << i << std::endl;
  std::cout << j << std::endl;
  std::cout << k << std::endl;
  std::cout << l << std::endl;
  std::cout << m << std::endl;
  std::cout << n << std::endl;

  // logical operators
  bool o = a == b && a == c;
  bool p = a == b || a == c;
  bool q = !(a == b);

  std::cout << o << std::endl;
  std::cout << p << std::endl;
  std::cout << q << std::endl;

  // increment and decrement operators
  int r = 10;
  r++; // r = r + 1;
  r--; // r = r - 1;
  ++r; // r = r + 1;
  --r; // r = r - 1;

  // ternary operator
  int s = a > b ? a : b;

  std::cout << s << std::endl;

  // bitwise operators
  int t = a & b;

  std::cout << t << std::endl;

  // sizeof operator
  int u = sizeof(int);
}