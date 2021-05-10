/*
EXCEPTIONS

https://www.dartlang.org/guides/language/language-tour#control-flow-statements
*/

basic(){
  throw Exception("Basic: A simple exceptions");
}

typed(){
  throw FormatException('Expected as least 1 section');
}

main(List<String> args) {

  // basic
  try {
    basic();
  } catch (error) {
    print(error);
  }

  // typed
  try {
    typed();
  } catch (error) {
    print(error);
  }

  // exception from propagating
  try {
    typed();
    basic();
  } on FormatException catch (e){
    print('Typed -> $e');
  } on Exception catch (e){
    print('Basic -> $e');
  } catch (e){
    print('Another exeption -> $e');
  } finally {
    print('Finnaly');
  }

}
