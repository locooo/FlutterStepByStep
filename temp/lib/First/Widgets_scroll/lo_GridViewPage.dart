import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOGridViewPage extends StatefulWidget {
  LOGridViewPage({Key key}) : super(key: key);

  @override
  _LOGridViewPageState createState() => _LOGridViewPageState();
}

class _LOGridViewPageState extends State<LOGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 2000,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5, //横轴三个子widget
                          childAspectRatio: 1.0 //宽高比为1时，子widget
                          ),
                      children: <Widget>[
                        Icon(Icons.ac_unit),
                        Icon(Icons.airport_shuttle),
                        Icon(Icons.all_inclusive),
                        Icon(Icons.beach_access),
                        Icon(Icons.cake),
                        Icon(Icons.free_breakfast),
                        Text("gridDelegate横轴为固定数量子元素的layout算法")
                      ]),
                ),
                Container(
                  height: 100,
                  child: GridView.count(
                      crossAxisCount: 5, //横轴三个子widget
                      childAspectRatio: 1.0, //宽高比为1时，子widget
                      children: <Widget>[
                        Icon(Icons.ac_unit),
                        Icon(Icons.airport_shuttle),
                        Icon(Icons.all_inclusive),
                        Icon(Icons.beach_access),
                        Icon(Icons.cake),
                        Icon(Icons.free_breakfast),
                        Text("GridView.count上面简写")
                      ]),
                ),
                Container(
                  height: 100,
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 120.0, //横轴上的最大长度
                      childAspectRatio: 1.0, //宽高比为2
                    ),
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Icon(Icons.airport_shuttle),
                      Icon(Icons.all_inclusive),
                      Icon(Icons.beach_access),
                      Icon(Icons.cake),
                      Text("gridDelegate横轴子元素为固定最大长度的layout"),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: GridView.extent(
                    maxCrossAxisExtent: 120.0,
                    childAspectRatio: 1.0,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Icon(Icons.airport_shuttle),
                      Icon(Icons.all_inclusive),
                      Icon(Icons.beach_access),
                      Icon(Icons.cake),
                      Text("GridView.extent横轴子元素为固定最大长度的layout"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
对于数据量大需要使用 GridView.builder来动态创建子widgets
*/
