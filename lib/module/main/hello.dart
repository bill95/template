import 'package:flutter/cupertino.dart';

class hello extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new helloState();
  }
}

class helloState extends State<StatefulWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        //触发刷新数据，重新构建widget
        index++;
        setState(() {});
      },
      child: Text(index.toString()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
}
