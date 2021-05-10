/*
  ASYNC

  https://www.dartlang.org/guides/language/language-tour#asynchrony-support
*/

Future<String> fn(condition) async {
  if (condition) {
    return Future.delayed(Duration(seconds: 3), (){
      return "after 3s: Hello world!";
    });
  } else {
    throw "Future error";
  }
}

main(List<String> args) async {
  print("Loading...");

  // resolving with self method
  fn(true)
    ..then((res){
      print(res);
    })
    ..catchError((error){
      print("Log: $error");
    })
    ..whenComplete((){
      print("Future complete");
    });

  // resolving with async/await
  try {
    var result = await fn(true);
    print(result);
  } catch (error) {
    print("Log $error");
  } finally {
    print("Future complete");
  }
}
