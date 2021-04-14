import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LODecoratedBoxPage extends StatefulWidget {
  LODecoratedBoxPage({Key? key}) : super(key: key);

  @override
  _LODecoratedBoxPageState createState() => _LODecoratedBoxPageState();
}

class _LODecoratedBoxPageState extends State<LODecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox"),
      ),
      body: Container(
        child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange[700]!]), //背景渐变
                borderRadius: BorderRadius.circular(3.0), //3像素圆角
                boxShadow: [
                  //阴影
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0)
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text(
                "DecoratedBox",
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }
}
