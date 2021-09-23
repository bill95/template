import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:template/module/costomview/YYMarquee.dart';
import 'package:template/module/main/tab.dart';
import 'package:template/module/main/test.dart';
import 'GridViewTest.dart';
import 'NetWorkTest.dart';
import 'hello.dart';
import 'homepage.dart';

class router {
  static final Map<String, WidgetBuilder> map = <String, WidgetBuilder>{
    '/a': (BuildContext context) => YYMarquee(
          stepOffset: 200.0,
          duration: Duration(seconds: 5),
          paddingLeft: 50.0,
          children: [
            Text(
              '手机用户155****0523借款成功',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFFEE8E2B),
              ),
            ),
            Text(
              '手机用户1345****0531借款成功',
              style: TextStyle(fontSize: 13, color: Color(0xFFEE8E2B)),
            ),
            Text(
              '手机用户145****0555借款成功',
              style: TextStyle(fontSize: 13, color: Color(0xFFEE8E2B)),
            ),
            Text(
              '手机用户175****0594借款成功',
              style: TextStyle(fontSize: 13, color: Color(0xFFEE8E2B)),
            ),
            Text(
              '手机用户185****0521借款成功',
              style: TextStyle(fontSize: 13, color: Color(0xFFEE8E2B)),
            ),
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
    '/F': (BuildContext context) => GridViewTest(),
    '/h': (BuildContext context) => NetWorkTest(),
    '/i': (BuildContext context) => TabHome(),
  };
  static var data = [
    '测试主页',
    '文字控件',
    '图片网络',
    '图片本地',
    "hello测试刷新view",
    "homepage测试",
    "GridViewTest",
    "NetWorkTest",
    "TabHome"
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
