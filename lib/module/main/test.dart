import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:template/constant/Constants.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:template/module/costomview/ContainerRepository.dart';

class Test extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return new Container(
  //     color: Colors.white,
  //     child: new Center(
  //       child: Text(
  //         Constant.url,
  //         textDirection: TextDirection.ltr,
  //         style: TextStyle(color: Colors.black),
  //       ),
  //     ),
  //   );
  final List<String> entries = <String>['测试1', '测试2', '测试3'];
  final List<int> colorCodes = <int>[600, 500, 100];

  void showToast(String content) {
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Center(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize:
              Size.fromHeight(MediaQueryData
                  .fromWindow(window)
                  .padding
                  .top),
              child: SafeArea(
                top: true,
                child: Offstage(),
              ),
            ),
            body: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(
                      child: Listener(
                        // onPointerDown:showToast,
                        child: Text(
                          ' ${entries[index]}',
                        ),
                      )),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
            ),
          )),
    );
  }
}
