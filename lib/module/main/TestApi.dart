import 'dart:convert';

import 'package:template/module/bean/BSBEAN.dart';
import 'package:template/module/callback/DioUtils.dart';

typedef RequestCallBack<T> = void Function(T value);

class TestApi {
  void getADATA(RequestCallBack requestCallBack) async {
    var response = await DioUtils.getInstance().get("");
    if (response.statusCode == 200) {
      var data = jsonDecode(response.toString());
      BSBEAN config = BSBEAN.fromMap(data);
      requestCallBack(config);
    }
  }
}
