import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOListViewPage extends StatefulWidget {
  LOListViewPage({Key key}) : super(key: key);

  @override
  _LOListViewPageState createState() => _LOListViewPageState();
}

class _LOListViewPageState extends State<LOListViewPage> {
  //下划线widget预定义以供复用。
  Widget divider1 = Container(
    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
    height: 1,
    color: Colors.blue,
    child: Container(),
  );
  Widget divider2 = Divider(
    color: Colors.green,
    indent: 50,
    endIndent: 10,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: false, //该属性表示是否根据子组件的总长度来设置ListView的长度
                    itemCount: 30,
                    itemExtent: 50, //强制高度
                    //列表项构造器
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: index != 0
                            ? Text("$index")
                            : Text("ListView.builder"),
                      );
                    },
                  ),
                ),
                Container(
                  // color: Colors.red,
                  height: 200,
                  child: ListView.separated(
                    shrinkWrap: false, //该属性表示是否根据子组件的总长度来设置ListView的长度
                    itemCount: 30,
                    // itemExtent: 50, //强制高度
                    //列表项构造器
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: index != 0
                            ? Text("$index")
                            : Text("ListView.separated"),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return index % 2 == 0 ? divider1 : divider2;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
