class _Person {
  String _name = "";
  int _age = 0;

  _Person(this._name, this._age);

  String get name => _name;
  int get age => _age;
}

var bob = _Person('Bob', 30);
