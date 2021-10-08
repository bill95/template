import 'package:dio/dio.dart';

import 'Address.dart';
import 'DataHelper.dart';
import 'HttpManager.dart';

class Api {
  ///示例请求
  static request(JsonCallBack jsonCallBack,
      {Map<String, dynamic> queryParameters}) {
    var params = DataHelper.getBaseMap();
    // params['param'] = param;
    // HttpManager.getInstance().get(Address.TEST_API, params: params);
  }
}

class JsonCallBack {
  onSuccess() {}

  onFail() {}
}

class TestJsonCallBack implements JsonCallBack {
  @override
  onFail() {}

  @override
  onSuccess() {}
}
