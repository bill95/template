import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridViewTest.dart';
import 'NetWorkTest.dart';

class TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TabHomeState();
  }
}

class TabHomeState extends State<TabHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final pages = [
    GridViewTest(),
    NetWorkTest(),
    NetWorkTest(),
    GridViewTest(),
  ];

  int cIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  void changePage(index) {
    if (index != cIndex) {
      setState(() {
        cIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("123"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: "123",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "222",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "323",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "423",
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          changePage(index);
        },
        currentIndex: cIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: pages[cIndex],
    );
  }
}
