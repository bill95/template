import 'package:flutter/cupertino.dart';

class RowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [Text("12312312312312312312312312312312"), Text("123")],
        )),
        Text("123"),
      ],
    );
  }
}
