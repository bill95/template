import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioUtils {
  static String baseUrl = "http://interface.baoshixingqiu.com/";
  static int connectTimeout = 5000;
  static int receiveTimeout = 3000;
  static Dio dio;

  static Dio getInstance() {
    if (dio == null) {
      dio = DefaultDio();
    }
  }

  static Dio DefaultDio() {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl; //baseUrl
    dio.options.connectTimeout = connectTimeout; //超时时间
    dio.options.receiveTimeout = receiveTimeout; //接收数据最长时间
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (url) {
        // return "PROXY 192.168.11.184:12345";
        return 'DIRECT';
      };
    };
  }

  static get(String path, Map<String, dynamic> queryParameters,
      JsonCallBack callBack) async {
    var reponse = await dio.get(path,
        queryParameters: {"token": "792300b12113596c6241c31a17639beb"});
    handleReponse(reponse, callBack);
  }

  static void handleReponse(Response reponse, JsonCallBack callBack) {
    if (reponse.statusCode == 200) {
      // callBack.onSuccess()
    }
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
