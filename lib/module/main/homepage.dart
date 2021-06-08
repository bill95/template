import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<StatefulWidget> {
  var testStyle = const TextStyle(fontFamily: 'DINCOND');

  @override
  Widget build(BuildContext context) {
    queryMediaQuery();

    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Container(
            decoration: new BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              border: Border.all(width: 1, color: Colors.red),
            ),

            child: Text(
              "123",
              style: testStyle,
            ),
            width: ScreenUtil().setWidth(180),
            height: ScreenUtil().setWidth(180),
            alignment: Alignment.center,
            // color: Colors.amberAccent,
          ),
          getMain()
        ],
      ),
    );
  }

  void queryMediaQuery() {
    final mediaQueryData = MediaQuery.of(context);

// 2.获取宽度和高度
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    final physicalWidth = window.physicalSize.width;
    final physicalHeight = window.physicalSize.height;
    final dpr = window.devicePixelRatio;
    print("屏幕width:$screenWidth height:$screenHeight");
    print("分辨率: $physicalWidth - $physicalHeight");
    print("dpr: $dpr");
// 3.状态栏的高度
// 有刘海的屏幕:44 没有刘海的屏幕为20
    final statusBarHeight = mediaQueryData.padding.top;
// 有刘海的屏幕:34 没有刘海的屏幕0
    final bottomHeight = mediaQueryData.padding.bottom;
    print("状态栏height: $statusBarHeight 底部高度:$bottomHeight");
  }

  Widget getMain() {
    return Column(
      children: [
        getDefineBtn("开通VIP", Color(0xFFFF4396)),
        getDefineBtn("获取红钻", Color(0xFFA463FF))
      ],
    );
  }

  Widget getBtn() {
    return Row();
  }

  Widget getDefineBtn(String text, Color color) {
    return Container(
      width: ScreenUtil().setWidth(75),
      height: ScreenUtil().setWidth(28),
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.fromSTEB(
          0, ScreenUtil().setWidth(8), 0, ScreenUtil().setWidth(8)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: color,
      ),
    );
  }
}
