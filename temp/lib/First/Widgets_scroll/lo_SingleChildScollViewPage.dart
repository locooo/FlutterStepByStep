import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOSingleChildScrollViewPage extends StatefulWidget {
  LOSingleChildScrollViewPage({Key key}) : super(key: key);

  @override
  _LOSingleChildScrollViewPageState createState() =>
      _LOSingleChildScrollViewPageState();
}

class _LOSingleChildScrollViewPageState
    extends State<LOSingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
      ),
      body: Scrollbar(
        // 显示进度条
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              //动态创建一个List<Widget>
              children: str
                  .split("")
                  //每一个字母都用一个Text显示,字体为原来的两倍
                  .map((c) => Text(
                        c,
                        textScaleFactor: 2.0,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
