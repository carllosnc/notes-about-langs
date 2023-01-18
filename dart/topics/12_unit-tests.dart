import "package:test/test.dart";

void main(List<String> args) async {
  // simple tests
  test("String.split() splits the string on the delimiter", () {
    var string = "foo,bar,span";
    expect(string.split(","), equals(["foo", "bar", "span"]));
  });

  test("String.trim removes surrounding whitespace", () {
    var string = " foo ";
    expect(string.trim(), equals("foo"));
  });

  // grouping the tests
  group("Int", () {
    test(".remainder returns the remainder of division", () {
      expect(11.remainder(3), equals(2));
    });

    test(".RadixString() return a hex string", () {
      expect(11.toRadixString(16), equals("b"));
    });
  });

  // matchers
  test(".split() splits the string on the delimiter", () {
    expect("foo,bar,baz",
        allOf([contains("foo"), isNot(startsWith("bar")), endsWith("baz")]));
  });
}
