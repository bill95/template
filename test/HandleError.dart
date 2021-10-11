import 'package:flutter/cupertino.dart';

abstract class HandleError extends StatefulWidget {
  void handle(String data) {
    print('handle' + data);
  }

  void handleV2() {
    print("handle error with nothing");
  }
}
