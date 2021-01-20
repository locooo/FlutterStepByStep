import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LORowAndColumnPage1 extends StatefulWidget {
  LORowAndColumnPage1({Key key}) : super(key: key);

  @override
  _LORowAndColumnPage1State createState() => _LORowAndColumnPage1State();
}

class _LORowAndColumnPage1State extends State<LORowAndColumnPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coulmn"),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max, //主轴的高度
          children: [
            Row(
              children: [Text("1111111111111")],
            ),
            Text("22222222"),
            Text("33333333"),
            Text("44444444"),
            Text("55555555"),
            Text("66666666"),
          ],
        ),
      ),
    );
  }
}
