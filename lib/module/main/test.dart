import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:template/constant/Constants.dart';
import 'dart:ui';
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
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Center(
          child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
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
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      )),
    );
  }
}
