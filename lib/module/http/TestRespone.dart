import 'dart:convert';

import 'package:template/module/bean/BSBEAN.dart';

class TestResponse {
  final BSBEAN data;
  final String error;

  TestResponse(this.data, this.error);

  TestResponse.fromJson(Map<String, dynamic> json)
      : data = BSBEAN.fromMap(json),
        error = "";

  TestResponse.withError(String errorValue)
      : data = BSBEAN(),
        error = errorValue;
}
