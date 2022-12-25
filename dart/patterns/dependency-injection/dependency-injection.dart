// button constract
abstract class Button {
  String render();
}

// dialog contract
abstract class Dialog {
  Button button;

  Dialog({required this.button});

  String render();
}

// this implementations can be a factory
class WindowsButton implements Button {
  @override
  String render() {
    return 'Windows button';
  }
}

class LinuxButton implements Button {
  @override
  String render() {
    return 'Linux button';
  }
}

// inject button in dialog
class WindowsDialog extends Dialog {
  WindowsDialog({required Button button}) : super(button: button) {
    super.button = button;
  }

  @override
  String render() {
    return 'Render dialog: ${button.render()}';
  }
}

void main(List<String> args) {

  // this dialog can receive multiple buttons
  var dialog = WindowsDialog(button: LinuxButton());

  print(dialog.render());
}
