import 'package:test/test.dart';

class Button {
  String _label = '';

  String render() {
    return 'Generic button $_label';
  }

  factory Button.windows({label}) {
    return WindowsButton(label);
  }

  factory Button.linux({label}) {
    return LinuxButton(label);
  }
}

class WindowsButton implements Button {
  @override
  String _label = '';

  WindowsButton(this._label);

  @override
  String render() {
    return 'Windows button $_label';
  }
}

class LinuxButton implements Button {
  @override
  String _label = '';

  LinuxButton(this._label);

  @override
  String render() {
    return 'Linux button $_label';
  }
}

void main(List<String> args) {
  test('check types', () {
    // ignore: unnecessary_type_check
    expect(Button.windows(label: 'WButton') is Button, true);

    // ignore: unnecessary_type_check
    expect(Button.linux(label: 'LButton') is Button, true);
  });
}
