void main(List<String> args) {
  var json = {
    'name': 'Dart',
    'type': 'Programming Language',
    'version': 2.12,
  };

  var {'name': name, 'type': type, 'version': version} = json;

  name = 'Dart 2.12';

  print(name);
  print(type);
  print(version);
}
