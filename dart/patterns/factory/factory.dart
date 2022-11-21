import 'package:test/test.dart';

abstract class Button {
  String render();
  void onClick();
}

abstract class Dialog {
  Button dialogButton();
  void render();
}

class WindowsButton extends Button {
  String _label = '';

  WindowsButton({  label }){
    _label = label;
  }

  @override
  void onClick() {
    print('Click on $_label button');
  }

  @override
  String render() {
    return 'Rendering Windows button: ($_label)';
  }
}

class WindowDialog extends Dialog {
  @override
  Button dialogButton() {
    return WindowsButton(label: 'WButton');
  }

  @override
  void render() {
    print(dialogButton().render());
  }
}

class LinuxButton extends Button {
  String _label = '';

  LinuxButton({ label }){
    _label = label;
  }

  @override
  void onClick() {
    print('Click on $_label button');
  }

  @override
  String render() {
    return 'Rendering Linux button: ($_label)';
  }
}

class LinuxDialog extends Dialog {
  @override
  Button dialogButton() {
    return LinuxButton(label: 'LButton');
  }

  @override
  void render() {
    print(dialogButton().render());
  }
}

class Factory {
  static Dialog create({ type }){
    if(type == 'windows'){
      return WindowDialog();
    }

    if(type == 'linux'){
      return LinuxDialog();
    }

    return WindowDialog();
  }
}

void main(List<String> args) {
  var windowsDialog = Factory.create(type: 'windows');
  var linuxDialog = Factory.create(type: 'linux');

  test('check instances', (){
    // ignore: unnecessary_type_check
    expect(windowsDialog is Dialog, true);

    // ignore: unnecessary_type_check
    expect(linuxDialog is Dialog, true);
  });
}
