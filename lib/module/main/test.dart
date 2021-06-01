import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:template/constant/Constants.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:template/module/costomview/ContainerRepository.dart';
import 'package:template/module/main/router.dart';

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

  List<String> getData() {
    List<String> data = List();
    // router.map.keys.map((e) => data.add(e) );
    new router().getData2().forEach((key, value) {data.add(key);});
    // print("getData():"+data.toString());
    return data;
  }

  @override
  Widget build(BuildContext context) {
    List<String> data=new router().getTitleData();
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
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.amber[colorCodes[0]],
                    child: Center(
                        child: Listener(
                            // onPointerDown:showToast,
                            child: GestureDetector(
                      child: Text(
                        ' ${data[index]}',
                      ),
                      onTap: () {
                        showToast("123");
                        print("testtet: "+index.toString());
                        print(getData());
                        Navigator.of(context).pushNamed(getData().elementAt(index));
                      },
                    ))),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      )),
    );
  }
}
