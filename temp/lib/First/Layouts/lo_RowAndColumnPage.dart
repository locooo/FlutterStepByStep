import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LORowAndColumnPage extends StatefulWidget {
  LORowAndColumnPage({Key key}) : super(key: key);

  @override
  _LORowAndColumnPageState createState() => _LORowAndColumnPageState();
}

class _LORowAndColumnPageState extends State<LORowAndColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowAndColumn"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            Row(
              textDirection: TextDirection.rtl, //布局是从左往右还是从右往左
              crossAxisAlignment: CrossAxisAlignment.start, //表示子组件在纵轴方向的对齐方式
              mainAxisSize: MainAxisSize
                  .max, //.min可能少的占用水平空间，当子组件没有占满水平剩余空间，则Row的实际宽度等于所有子组件占用的的水平空间
              // verticalDirection: VerticalDirection.up,//表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
              children: [
                Text(
                  "111111",
                  style: TextStyle(fontSize: 30),
                ),
                Text("222222"),
                Text("333333"),
                Text("444444"),
              ],
            ),
            Row(
              textDirection: TextDirection.ltr, //布局是从左往右还是从右往左
              crossAxisAlignment: CrossAxisAlignment.start, //表示子组件在纵轴方向的对齐方式
              mainAxisSize: MainAxisSize
                  .max, //.min可能少的占用水平空间，当子组件没有占满水平剩余空间，则Row的实际宽度等于所有子组件占用的的水平空间
              // verticalDirection: VerticalDirection.up,//表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
              children: [
                Text(
                  "111111",
                  style: TextStyle(fontSize: 30),
                ),
                Text("222222"),
                Text("333333"),
                Text("444444"),
              ],
            ),
            Row(
              textDirection: TextDirection.ltr, //布局是从左往右还是从右往左
              crossAxisAlignment: CrossAxisAlignment.center, //表示子组件在纵轴方向的对齐方式
              mainAxisSize: MainAxisSize
                  .max, //.min可能少的占用水平空间，当子组件没有占满水平剩余空间，则Row的实际宽度等于所有子组件占用的的水平空间
              // verticalDirection: VerticalDirection.up,//表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
              children: [
                Text(
                  "111111",
                  style: TextStyle(fontSize: 30),
                ),
                Text("222222"),
                Text("333333"),
                Text("444444"),
              ],
            ),
            Row(
              textDirection: TextDirection.ltr, //布局是从左往右还是从右往左
              crossAxisAlignment: CrossAxisAlignment.end, //表示子组件在纵轴[非主轴]方向的对齐方式
              mainAxisSize: MainAxisSize
                  .max, //.min可能少的占用水平空间，当子组件没有占满水平剩余空间，则Row的实际宽度等于所有子组件占用的的水平空间
              // verticalDirection: VerticalDirection.up,//表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
              children: [
                Text(
                  "111111",
                  style: TextStyle(fontSize: 30),
                ),
                Text("222222"),
                Text("333333"),
                Text("444444"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
