import "topics/lib/lib1.dart";

foo({ fix, bar, span, Function lets}){
  print(fix);
  print(bar);
  print(span);

  lets("hello world");
}

main(List<String> args) {
  Person bob = Person("bob", 13);

  print(bob);

  foo(
    fix: <String>["primeiro", "segundo", "terceiro"],
    bar: "Segundo",
    span: "Terceiro",
    lets: (arg) => {
      print(arg)
    }
  );
}
