import 'package:flutter/material.dart';
import 'package:template/module/main/RowTest.dart';
import 'package:template/module/main/test.dart';
import 'hello.dart';
import 'homepage.dart';

class router {
  static final Map<String, WidgetBuilder> map = <String, WidgetBuilder>{
    '/a': (BuildContext context) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(children: [
              Row(
                children: [
                  // Expanded(flex: 3, child: Text("12312323")),
                  // Expanded(child: Text("12"))
                  Text(
                    "123",
                    maxLines: 1,
                  ),
                  Expanded(
                      child: Text(
                    "===============",
                    maxLines: 1,
                  )),
                ],
              ),
              Row(
                children: [
                  // Expanded(flex: 3, child: Text("12312323")),
                  // Expanded(child: Text("12"))
                  Text("123"),
                  Expanded(
                      child: Text(
                    "---------------",
                    maxLines: 1,
                  ))
                ],
              ),
            ])),
            Column(
              children: [Text("data"), Text("23")],
            )
          ],
        ),
    '/b': (BuildContext context) => Text("page b"),
    '/c': (BuildContext context) => Image.network(
          "https://up.enterdesk.com/edpic_source/ef/bd/5c/efbd5ce92c3373a1f5da79981498904b.jpg",
          width: 1280,
          height: 720,
        ),
    '/d': (BuildContext context) => Image.asset("assets/images/testgif.gif"),
    '/e': (BuildContext context) => homepage(),
    '/g': (BuildContext context) => hello(),
    '/f': (BuildContext context) => RowTest(),
  };
  static var data = [
    '测试主页',
    '文字控件',
    '图片网络',
    '图片本地',
    "hello测试刷新view",
    "homepage测试",
    "rowTest"
  ];

  List<String> getTitleData() {
    return data;
  }

  // Map<String, WidgetBuilder> getData() {
  //   return <String, WidgetBuilder>{
  //     '/a': (BuildContext context) => Test(),
  //     '/b': (BuildContext context) => Text("page b"),
  //     '/c': (BuildContext context) => Image.network(
  //         "https://up.enterdesk.com/edpic_source/ef/bd/5c/efbd5ce92c3373a1f5da79981498904b.jpg"),
  //     '/d': (BuildContext context) => Image.asset("assests/images/bg.jpg")
  //   };
  // }

  Map<String, WidgetBuilder> getData2() {
    return map;
  }
}
