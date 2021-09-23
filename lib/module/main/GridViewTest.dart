import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getGridView();
  }

  Widget getListView() {
    return ListView.separated(
        itemBuilder: (context, int position) {
          if (position == 0) {
            return Row(
              children: [getImage1(), getImage2()],
            );
          } else {
            return Text("123");
          }
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            //indent: 75,
            color: Color(0xFFDDDDDD),
          );
        },
        itemCount: 10);
  }

//生成测试的gridview 进行多布局好像有点困难
  Widget getGridView() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, position) {
          if (position == 0) {
            return Row(
              children: [getImage1(), getImage2()],
            );
          } else {
            return Text("123");
          }
        });
    // return GridView(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //   ),
    //   children: [
    //     Text("data1"),
    //     Text("data2"),
    //     Text("data3"),
    //     Text("data4"),
    //     Text("data5"),
    //     Text("data5"),
    //     Text("data5"),
    //     Text("data5"),
    //     Text("data5"),
    //     Text("data5"),
    //   ],
    // );
  }

  Widget getImage1() {
    return Image.network(
      "https://up.enterdesk.com/edpic_source/ef/bd/5c/efbd5ce92c3373a1f5da79981498904b.jpg",
      width: 100,
      height: 100,
    );
  }

  Widget getImage2() {
    return Image.asset("assets/images/testgif.gif");
  }
}
