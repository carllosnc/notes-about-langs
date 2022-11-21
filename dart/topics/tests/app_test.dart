import "package:test/test.dart";

void main() {

  test("String.split() splits the string on the delimiter", (){
    var string = "foo,bar,span";
    expect(string.split(","), equals(["foo", "bar", "span"]));
  });

}
