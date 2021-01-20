import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOIndicator extends StatefulWidget {
  LOIndicator({Key key}) : super(key: key);

  @override
  _LOIndicatorState createState() => _LOIndicatorState();
}

class _LOIndicatorState extends State<LOIndicator> {
  int _radioVal = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indicator"),
      ),
      body: Container(
        child: Column(
          children: [
// 模糊进度条(会执行一个动画)
            LinearProgressIndicator(
              minHeight: 30,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
//进度条显示50%
            LinearProgressIndicator(
              minHeight: 30,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
            // 模糊进度条(会执行一个旋转动画)
            CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
//进度条显示50%，会显示一个半圆
            CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            Row(
              children: [0, 1, 2, 3]
                  .map((int index) => Radio<int>(
                        value: index,
                        groupValue: this._radioVal,
                        onChanged: (int value) {
                          setState(() => this._radioVal = value);
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
