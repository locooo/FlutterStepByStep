import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOExpansionTilePage extends StatefulWidget {
  LOExpansionTilePage({Key key}) : super(key: key);

  @override
  _LOExpansionTilePageState createState() => _LOExpansionTilePageState();
}

class _LOExpansionTilePageState extends State<LOExpansionTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile"),
      ),
      body: Container(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Container(
                color: Colors.purple,
                child: ExpansionTile(
                  title: Text(
                    "ExpansionTileTest",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  //左侧图标
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  //trailing:右侧图标如不写有默认图标
                  //背景
                  backgroundColor: Colors.purple,
                  //默认是否展开
                  initiallyExpanded: false,
                  ////展开或者关闭的监听
                  onExpansionChanged: (bool value) {
                    print("$value");
                  },
                  children: <Widget>[
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.purple,
                child: ExpansionTile(
                  title: Text(
                    "ExpansionTileTest",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  //左侧图标
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  //trailing:右侧图标如不写有默认图标
                  //背景
                  backgroundColor: Colors.purple,
                  //默认是否展开
                  initiallyExpanded: false,
                  ////展开或者关闭的监听
                  onExpansionChanged: (bool value) {
                    print("$value");
                  },
                  children: <Widget>[
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("ListTile"),
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
