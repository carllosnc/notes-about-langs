import 'package:dio/dio.dart';

void main() async {

  try {
    var response = await Dio().get('https://baconipsum.com/api/?type=meat-and-filler');
    print(response.data);
  } catch (e) {
    print(e);
  }

}
