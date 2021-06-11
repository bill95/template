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
  var testStyle =
      const TextStyle(fontFamily: 'DINCOND', color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    queryMediaQuery();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          color: Color(0xff161B3B),
          child: Center(
            child: Container(
              margin: EdgeInsetsDirectional.fromSTEB(
                  ScreenUtil().setWidth(10),
                  ScreenUtil().setWidth(10),
                  ScreenUtil().setWidth(10),
                  ScreenUtil().setWidth(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Color(0xB32E3170),
              ),
              child: Row(
                children: [
                  // Container(
                  //   decoration: new BoxDecoration(
                  //     color: Colors.green,
                  //     borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  //     border: Border.all(width: 1, color: Colors.red),
                  //   ),
                  //
                  //   child: Text(
                  //     "123",
                  //     style: testStyle,
                  //   ),
                  //   width: ScreenUtil().setWidth(180),
                  //   height: ScreenUtil().setWidth(180),
                  //   alignment: Alignment.center,
                  //   // color: Colors.amberAccent,
                  // ),
                  Expanded(child: getLeftLable()),
                  // Spacer(),
                  getMain(),
                ],
              ),
            ),
          )),
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
      margin: EdgeInsetsDirectional.fromSTEB(0, ScreenUtil().setWidth(8),
          ScreenUtil().setWidth(10), ScreenUtil().setWidth(8)),
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

  Widget getLeftLable() {
    return Expanded(
      child: Column(
        children: [
          getOne(),
          getTwo(),
          Container(
            margin: EdgeInsetsDirectional.fromSTEB(
                ScreenUtil().setWidth(12), 0, 0, ScreenUtil().setWidth(12)),
            color: Color(0x1AC8C8FF),
            width: ScreenUtil().setWidth(240),
            height: ScreenUtil().setWidth(1),
          ),
          getThree(),
        ],
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget getOne() {
    return Row(
      children: [
        Container(
          margin: EdgeInsetsDirectional.fromSTEB(
              ScreenUtil().setWidth(12),
              ScreenUtil().setWidth(17),
              ScreenUtil().setWidth(10),
              ScreenUtil().setWidth(14)),
          child: Text(
            "我的红钻",
            style: TextStyle(color: Color(0xFF9FADE2), fontSize: 14),
          ),
        ),
        Container(
          height: ScreenUtil().setWidth(20),
          margin: EdgeInsetsDirectional.fromSTEB(
              ScreenUtil().setWidth(0),
              ScreenUtil().setWidth(17),
              ScreenUtil().setWidth(10),
              ScreenUtil().setWidth(14)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(width: 1, color: Colors.blue),
          ),
          child: Text(
            "红钻工资红钻工资红钻工资红钻工资红钻工资红钻工资红钻工资红钻工资",
            maxLines: 1,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
        )

      ],
    );
  }

  Widget getTwo() {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
          ScreenUtil().setWidth(12), 0, 0, ScreenUtil().setWidth(8)),
      child: Row(
        children: [
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          SizedBox(
            width: ScreenUtil().setWidth(3),
          ),
          Text(
            "1,223,800",
            style: testStyle,
          ),
          SizedBox(
            width: ScreenUtil().setWidth(12),
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
          Container(
            color: Colors.blue,
            width: 15,
            height: 12,
          ),
        ],
      ),
    );
  }

  Widget getThree() {
    return Container(
        child: Row(
          children: [
            Text(
              "明日VIP赠礼",
              style: TextStyle(
                color: Color(0xFF9FADE2),
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "200w",
              style: TextStyle(
                  fontFamily: "DINCOND",
                  color: Color(0xffff4396),
                  fontSize: 14),
            ),
            Container(
              width: 12,
              height: 10,
              color: Color(0xff4396),
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              "抽奖",
              style: TextStyle(color: Color(0xFF9FADE2), fontSize: 12),
            ),
            Text(
              "+10",
              style: TextStyle(
                  fontFamily: "DINCOND",
                  color: Color(0xffff4396),
                  fontSize: 14),
            ),
            Text(
              "次/日",
              style: TextStyle(color: Color(0xFF9FADE2), fontSize: 12),
            ),
          ],
        ),
        margin: EdgeInsetsDirectional.fromSTEB(
            ScreenUtil().setWidth(12), 0, 0, ScreenUtil().setWidth(12)));
  }
}
