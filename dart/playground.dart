import 'dart:convert';

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  Pessoa.fromJson(Map<String, dynamic> json)
      : nome = json['nome'],
        idade = json['idade'];

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "idade": idade,
      };
}

void main(List<String> args) {
  var p1 = Pessoa('John', 10);

  var items = [
    p1.toJson().toString(),
    p1.toJson().toString(),
    p1.toJson().toString(),
  ].toList().toList();

  print(json.encode(items));
}
