import 'lib/lib1.dart' hide bar;
import 'lib/lib2.dart' as lib2;
import 'lib/lib3.dart' show first;

main(List<String> args) {
  // lib1
  Person bob = Person('Bob', 20);
  print(bob.myName());
  print(foo());
  print(span);

  // lib2
  print(lib2.foo());
  print(lib2.bar());
  print(lib2.span());

  // lib3
  print(first);
}
