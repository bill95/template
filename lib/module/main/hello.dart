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

  log(String content) {
    print("==yuki== " + content);
  }

  helloState() {
    log("helloState");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    log("didChangeDependencies");
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
    log("initState");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    log("setState");
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    log("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    log("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    log("dispose");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    log("didChangeDependencies");
  }
}
