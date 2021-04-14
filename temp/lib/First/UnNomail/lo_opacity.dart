import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOOpacityPage extends StatefulWidget {
  LOOpacityPage({Key? key}) : super(key: key);

  @override
  _LOOpacityPageState createState() => _LOOpacityPageState();
}

class _LOOpacityPageState extends State<LOOpacityPage> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Opacity"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Opacity"),
              Tab(
                text: "Opacity一些注解",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Opacity(
                  opacity: this.isShow ? 1.0 : 0.0,
                  alwaysIncludeSemantics: true,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                    child: TextButton(
                      child: Text("我是一个按钮"),
                      onPressed: () {
                        print("object");
                      },
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.isShow = !this.isShow;
                    });
                  },
                  child: Text(this.isShow ? "隐藏" : "显示"),
                ),
                AnimatedOpacity(
                  opacity: this.isShow ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text('''隐藏时会响应点击事件,会占用空间 和offstage正好相反'''),
          ],
        ),
      ),
    );
  }
}
