import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOBoxsPage extends StatefulWidget {
  LOBoxsPage({Key? key}) : super(key: key);

  @override
  _LOBoxsPageState createState() => _LOBoxsPageState();
}

class _LOBoxsPageState extends State<LOBoxsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox_UnconstrainedBox"),
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //ConstrainedBox用于对子组件添加额外的约束
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 200,
                      minHeight: 100,
                      maxHeight: 100),
                  child: Container(
                    width: 10,
                    height: 300,
                    color: Colors.red,
                    child: Center(child: Text("ConstrainedBox")),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    color: Colors.yellow,
                    child: Text("SizedBox"),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 200,
                      minHeight: 100,
                      maxHeight: 100),
                  child: UnconstrainedBox(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(child: Text("UnconstrainedBox")),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 200,
                      minHeight: 100,
                      maxHeight: 100),
                  child: UnconstrainedBox(
                      child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 90,
                      minHeight: 90,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(child: Text("UnconstrainedBox")),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
