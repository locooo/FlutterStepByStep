import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOCallBackPage1 extends StatefulWidget {
  LOCallBackPage1({Key key}) : super(key: key);

  @override
  _LOCallBackPage1State createState() => _LOCallBackPage1State();
}

class _LOCallBackPage1State extends State<LOCallBackPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("callBack传值给上个界面"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("FunctionCallBack"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("ValueChangedCallBack"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
