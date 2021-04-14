import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOVisibilityPage extends StatefulWidget {
  LOVisibilityPage({Key? key}) : super(key: key);

  @override
  _LOVisibilityPageState createState() => _LOVisibilityPageState();
}

class _LOVisibilityPageState extends State<LOVisibilityPage> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Visibility"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Visibility"),
              Tab(
                text: "Visibility一些注解",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Visibility(
                  visible: this.isShow,
                  replacement: Text("不可时显示的View"),
                  maintainState: true,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainInteractivity: true,
                  maintainSemantics: true,
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
              ],
            ),
            Text('''maintainState：表示不可见时是否维持状态，设置为true时，子控件依然会保存在内存中。
                \n maintainAnimation：表示不可见时是否维持动画状态。
                \n maintainSize：表示不可见时是否维持大小。
                \n maintainInteractivity：表示不可见时是否可交互
                \n maintainSemantics:不可见时是否维持它的语义'''),
          ],
        ),
      ),
    );
  }
}
