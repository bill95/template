import 'package:dio/dio.dart';

class JsonCallback<T> {
  T convertRespone(Response response) {
    if (response.statusCode == 200) {
      var data = response.data;
    }
  }
}
