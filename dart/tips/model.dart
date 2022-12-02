import 'package:dio/dio.dart';

class Album {
  int userId = 0;
  int id = 0;
  String title = '';

  Album({
    required this.userId,
    required this.id,
    required this.title
  });

  factory Album.fromJson(Map<String, dynamic> json){
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title']
    );
  }
}

void main(List<String> args) async {
  try {
    var res = await Dio().get('https://jsonplaceholder.typicode.com/albums');

    var items = (res.data as List).map((item) => Album.fromJson(item));

    items.forEach((element) {
      print(element.title);
    });

  } catch (e) {
    print(e);
  }
}
