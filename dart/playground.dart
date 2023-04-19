Future<String> getMessage({required String message, required int time}) async {
  return Future.delayed(Duration(seconds: time), () {
    return message;
  });
}

void main(List<String> args) {
  var message1 = getMessage(message: 'Hello', time: 2);
  var message2 = getMessage(message: 'World', time: 3);

  Future.forEach([message1, message2], (message) {
    print(message);
  });
}
