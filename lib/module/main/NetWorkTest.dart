import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class NetWorkTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NetWorkState();
  }
}

class NetWorkState extends State<StatefulWidget> {
  Future<void> request() async {
    var dio = Dio();
    dio.options.baseUrl = "http://interface.baoshixingqiu.com/"; //baseUrl
    dio.options.connectTimeout = 5000; //超时时间
    dio.options.receiveTimeout = 3000; //接收数据最长时间
    dio.options.responseType = ResponseType.json; //数据格式
    var path = "index/config";
    var reponse = await dio.get(path);
    print(reponse.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('123');
    return GestureDetector(
      child: new Text("data"),
      onTap: () {
        
        request();
      },
    );
  }
}
