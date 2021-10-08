import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:template/module/bean/BSBEAN.dart';
import 'package:template/module/bean/NetWorkBean.dart';
import 'package:template/module/http/http_manager.dart';
import 'package:template/module/net/Api.dart';
import 'package:template/module/utils/SpUtil.dart';

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
    if (reponse.statusCode == HttpStatus.ok) {
      var data = jsonDecode(reponse.toString());
      NetWorkBean config = NetWorkBean.fromMap(data);
      print(config.toString() + config.data.toString());
      print(config.data.openAd);
    }
    print(reponse.data.toString());
  }

  Future<void> request2() async {
    var dio = Dio();
    dio.options.baseUrl = "http://interface.baoshixingqiu.com/"; //baseUrl
    dio.options.connectTimeout = 5000; //超时时间
    dio.options.receiveTimeout = 3000; //接收数据最长时间
    dio.options.responseType = ResponseType.json; //数据格式
    var path = "/home/ore-list";
    var reponse = await dio.get(path,
        queryParameters: {"token": "792300b12113596c6241c31a17639beb"});
    if (reponse.statusCode == HttpStatus.ok) {
      var data = jsonDecode(reponse.toString());
      BSBEAN config = BSBEAN.fromMap(data);
      print(config.toString());
    }
    print(reponse.data.toString());
    // print(SpUtil.getDate<String>("time"));
    SpUtil.getDate<String>("time").then((value) {
      print("存储的值为${value}");
    });
    SpUtil.setData("time", "1888-94-44");
    SpUtil.getDate<String>("time").then((value) {
      print("存储的值为${value}");
    });

    print(
        SpUtil.getDate<String>("time").then((value) => null, onError: (e) {}));
  }

  Future<void> request3() async {
    var dio = Dio();
    dio.options.baseUrl = "http://interface.baoshixingqiu.com/"; //baseUrl
    dio.options.connectTimeout = 5000; //超时时间
    dio.options.receiveTimeout = 3000; //接收数据最长时间
    dio.options.responseType = ResponseType.json; //数据格式
    var path = "/home/ore-list";
    var reponse = await dio.get(path,
        queryParameters: {"token": "792300b12113596c6241c31a17639beb"});
    if (reponse.statusCode == HttpStatus.ok) {
      var data = jsonDecode(reponse.toString());
      BSBEAN config = BSBEAN.fromMap(data);
      print(config.toString());
    }
    print(reponse.data.toString());
    // HttpManager.getInstance().get(Address.TEST_API);
    // HttpManager.getInstance().get("index/config");
  }

  Future<void> request4() async {
    // HttpManager().init(
    //   baseUrl: "http://interface.baoshixingqiu.com",
    // );
    HttpManager().get(
        params: {"token": "792300b12113596c6241c31a17639beb"},
        url: "/index/config",
        tag: "tag",
        successCallback: (data) {
          print(data);
        },
        errorCallback: (error) {
          print(error);
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('123');
    return GestureDetector(
      child: new Text("data"),
      onTap: () {
        request4();
      },
    );
  }
}
