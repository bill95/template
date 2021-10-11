import 'package:flutter/src/widgets/framework.dart';

import 'HandleError.dart';

class Test extends HandleError {
  int age;

  String name;

  int getAge() {
    return this.age;
  }

  String getName() {
    return this.name;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }




}
