import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOAlignPage extends StatefulWidget {
  LOAlignPage({Key key}) : super(key: key);

  @override
  _LOAlignPageState createState() => _LOAlignPageState();
}

class _LOAlignPageState extends State<LOAlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
      ),
      body: Column(
        children: [
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topRight,
              widthFactor: 1.5,
              heightFactor: 1.5,
              child: FlutterLogo(
                textColor: Colors.black,
                size: 60,
              ),
            ),
          ),
          Container(
            // height: 120.0,
            // width: 120.0,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topRight,
              widthFactor: 1.5,
              heightFactor: 1.5,
              child: FlutterLogo(
                textColor: Colors.black,
                size: 60,
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.red,
            child: Align(
              //(-1,-1)为左侧顶点 (1,1)右侧底部
              //(Alignment.x*childWidth/2+childWidth/2, Alignment.y*childHeight/2+childHeight/2)
              alignment: Alignment(-1, -1),
              // widthFactor: null,
              // heightFactor: null,
              child: FlutterLogo(
                textColor: Colors.black,
                size: 60,
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: Align(
              //实际偏移 = (FractionalOffse.x * childWidth, FractionalOffse.y * childHeight)
              alignment: FractionalOffset(0, 1),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text("xxx"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              // widthFactor: 1,
              // heightFactor: 1,
              child: Text("xxx"),
            ),
          ),
        ],
      ),
    );
  }
}
