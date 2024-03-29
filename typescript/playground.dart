class Button {
  Button({required String label});
}

App(dynamic element) {
  print(element.runtimeType);
}

void main() {
  App(Button(label: 'Click me'));
}
