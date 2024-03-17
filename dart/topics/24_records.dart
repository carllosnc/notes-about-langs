//destruct and set record
setRecord() {
  ({String? foo, String? bar, String? span}) r1 = (foo: null, bar: null, span: null);

  var (:foo, :bar, :span) = r1;

  //set to string
  foo = 'foo';
  bar = 'bar';
  span = 'span';

  print("$foo $bar $span");
}

void main(List<String> args) async {
  //simple record
  (String, int) r1 = ('John Doe', 10);
  print("${r1.$1} ${r1.$2}");

  //named record
  ({String name, int age}) r2 = (name: 'John Doe', age: 10);
  print("${r2.name} ${r2.age}");

  //record with type
  (String, int) r3 = ('John Doe', 10);
  print("${r3.$1} ${r3.$2}");

  //record with type and name
  ({String name, int age}) r4 = (name: 'John Doe', age: 10);
  print("${r4.name} ${r4.age}");

  //function that receives a record
  void rf1(({String name, int age}) r) {
    print("${r.name} ${r.age}");
  }

  rf1((name: 'John Doe', age: 10));

  //function that returns a record with type
  (String, int) rf2() {
    return ('John Doe', 10);
  }

  print("${rf2().$1} ${rf2().$2}");

  //function that returns a named record
  ({String name, int age}) rf3() {
    return (name: 'John Doe', age: 10);
  }

  print("${rf3().name} ${rf3().age}");

  //destruc a record with type
  (String, int) r5 = ('John Doe', 10);
  var (name1, age1) = r5;
  print("$name1 $age1");

  //destruc a record
  ({String name, int age}) r6 = (name: 'John Doe', age: 10);
  var (:name, :age) = r6;
  print("$name $age");

  //generic and record example
  ({T name, int age}) r7<T>(T name) {
    return (name: name, age: 10);
  }

  print("${r7<String>('John Doe').name} ${r7<String>('John Doe').age}");
}
