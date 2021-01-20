import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOFlexAndExpandedPage extends StatefulWidget {
  LOFlexAndExpandedPage({Key key}) : super(key: key);

  @override
  _LOFlexAndExpandedPageState createState() => _LOFlexAndExpandedPageState();
}

class _LOFlexAndExpandedPageState extends State<LOFlexAndExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexAndExpanded"),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.purple,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.yellow,
                  ),
                ),
                Spacer(
                  flex: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 30.0,
                color: Colors.green,
              ),
            ),
            Row(
              children: [
                Expanded(
                  // flex: 1,
                  child: Container(
                    height: 30,
                    width: 10,
                    color: Colors.yellow,
                  ),
                ),
                Spacer(),
                Expanded(
                  // flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*
Expanded是用于展开Row，Column或Flex的子child的Widget
Expanded的父组件必须是Row Column 其他Flex
使用Expanded可以使[Row]，[Column]或[Flex]的子项扩展以填充主轴中的可用空间（例如，水平用[Row]或垂直用[Column]）。 如果扩展了多个子节点，则根据[flex]因子将可用空间划分为多个子节点。
*/
