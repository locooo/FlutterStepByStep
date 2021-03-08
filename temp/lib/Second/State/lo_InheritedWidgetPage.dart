import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOInheritedWidgetpage extends StatefulWidget {
  LOInheritedWidgetpage({Key key}) : super(key: key);

  @override
  _LOInheritedWidgetpageState createState() => _LOInheritedWidgetpageState();
}

class _LOInheritedWidgetpageState extends State<LOInheritedWidgetpage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidget"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("验证向下传递"),
              onPressed: () {
                setState(() {
                  a += 1;
                });
              },
            ),
            ParentLOInheritedWidget(
              data: a,
              child: ChildLOInheritedWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class ParentLOInheritedWidget extends InheritedWidget {
  ParentLOInheritedWidget({Key key, this.data, this.child})
      : super(key: key, child: child);

  final int data; //需要在子树中共享的数据
  final Widget child;

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ParentLOInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ParentLOInheritedWidget>();
  }

//该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ParentLOInheritedWidget oldWidget) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget的子widget的`state.didChangeDependencies`会被调用
    return true;
  }
}

class ChildLOInheritedWidget extends StatefulWidget {
  ChildLOInheritedWidget({Key key}) : super(key: key);

  @override
  _ChildLOInheritedWidgetState createState() => _ChildLOInheritedWidgetState();
}

class _ChildLOInheritedWidgetState extends State<ChildLOInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(ParentLOInheritedWidget.of(context).data.toString()),
    );
  }
}
