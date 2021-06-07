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
                border:Border.all(width: 1,color: Colors.red),
            ),

            child: Text("123"),
            width: ScreenUtil().setWidth(180),
            height: ScreenUtil().setWidth(180),
            alignment: Alignment.center,
            // color: Colors.amberAccent,
          ),
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
}
