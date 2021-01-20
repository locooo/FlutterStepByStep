import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOInkWellPage extends StatefulWidget {
  LOInkWellPage({Key key}) : super(key: key);

  @override
  _LOInkWellPageState createState() => _LOInkWellPageState();
}

class _LOInkWellPageState extends State<LOInkWellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: ListView(
        children: [
          InkWell(
            child: Container(
              height: 100,
              width: 50,
              // decoration: BoxDecoration(color: Colors.black),
            ),
            focusColor: Colors.red,
            hoverColor: Colors.red,
            highlightColor: Colors.red, //按住不放时的颜色
            splashColor: Colors.black, //溅墨颜色
            borderRadius: new BorderRadius.circular(25.0),
            onTap: () {
              print("child设置了颜色水波纹会失效");
            },
          ),
        ],
      ),
    );
  }
}
