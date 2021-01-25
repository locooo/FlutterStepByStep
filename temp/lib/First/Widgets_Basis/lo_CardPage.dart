import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOCardPage extends StatefulWidget {
  LOCardPage({Key key}) : super(key: key);

  @override
  _LOCardPageState createState() => _LOCardPageState();
}

class _LOCardPageState extends State<LOCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.purple),
                width: 200,
                height: 200,
                child: Card(
                  color: Colors.red, //背景色
                  shadowColor: Colors.yellow, // 阴影颜色
                  elevation: 20, // 阴影高度
                  borderOnForeground: false, // 是否在 child 前绘制 border，默认为 true
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10), // 外边距
                  clipBehavior: Clip.none,
                  //边框
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(
                      color: Colors.yellow,
                      width: 10,
                    ),
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Text(
                      "iii",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.red, //背景色
                shadowColor: Colors.yellow, // 阴影颜色
                elevation: 20, // 阴影高度
                borderOnForeground: false, // 是否在 child 前绘制 border，默认为 true
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10), // 外边距
                clipBehavior: Clip.none,
                //边框
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    color: Colors.yellow,
                    width: 10,
                  ),
                ),
                child: Container(
                  height: 180,
                  width: 180,
                  // decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    "iii",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                color: Colors.red, //背景色
                shadowColor: Colors.yellow, // 阴影颜色
                elevation: 20, // 阴影高度
                borderOnForeground: false, // 是否在 child 前绘制 border，默认为 true
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10), // 外边距
                clipBehavior: Clip.none,
                //边框
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.elliptical(50, 100)),
                  side: BorderSide(
                    color: Colors.yellow,
                    width: 10,
                  ),
                ),
                child: Container(
                  height: 180,
                  width: 180,
                  // decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    "iii",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
