import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:template/constant/Constants.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:template/module/costomview/ContainerRepository.dart';
import 'package:template/module/main/router.dart';

class Test extends StatefulWidget {
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

  var _indexNum;

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
    new router().getData2().forEach((key, value) {
      data.add(key);
    });
    // print("getData():"+data.toString());
    return data;
  }


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    new TestImpl();
  }
}

class TestImpl extends State<StatefulWidget> {
  var _indexNum;
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
    new router().getData2().forEach((key, value) {
      data.add(key);
    });
    // print("getData():"+data.toString());
    return data;
  }
  Widget _getPagesWidget(int index) {
    List<String> data = new router().getTitleData();
    List<Widget> widgetList = [
      ListView.separated(
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
                              print("testtet: " + index.toString());
                              print(getData());
                              Navigator.of(context)
                                  .pushNamed(getData().elementAt(index));
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
      Text('关注'),
      Text('我')
    ];
    return Offstage(
      offstage: _indexNum != index,
      child: TickerMode(
        enabled: _indexNum == index,
        child: widgetList[index],
      ),
    );
  }
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
        body: Stack(
          children: [
            _getPagesWidget(0),
            _getPagesWidget(1),
            _getPagesWidget(2)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('推荐'),
              activeIcon: Icon(Icons.people_outline),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('关注'),
              activeIcon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我'),
              activeIcon: Icon(Icons.person_outline),
            ),
          ],
          onTap: (int index) {
            ///这里根据点击的index来显示，非index的page均隐藏
            if (_indexNum != index) {
              setState(() {
                _indexNum = index;
              });
            }
          },
        ),
      )),
    );
  }
}
