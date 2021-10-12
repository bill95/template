import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:template/module/callback/DioUtils.dart';

import 'TestRespone.dart';

class TestApiProvider {
  Future<TestResponse> getData() async {
    try {
      Response response = await DioUtils.getInstance().get("");
      return TestResponse.fromJson(jsonDecode(response.toString()));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return TestResponse.withError("");
    }
  }
}
