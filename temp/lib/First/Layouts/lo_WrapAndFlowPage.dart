import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOWrapAndFlowPage extends StatefulWidget {
  LOWrapAndFlowPage({Key key}) : super(key: key);

  @override
  _LOWrapAndFlowPageState createState() => _LOWrapAndFlowPageState();
}

class _LOWrapAndFlowPageState extends State<LOWrapAndFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapAndFlow"),
      ),
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 10.0, // 主轴(水平)方向间距
                      runSpacing: 5.0, // 纵轴（垂直）方向间距
                      alignment: WrapAlignment.start, //沿主轴方向居中
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.yellow,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
