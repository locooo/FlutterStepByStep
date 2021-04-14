import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOOffStagePage extends StatefulWidget {
  LOOffStagePage({Key? key}) : super(key: key);

  @override
  _LOOffStagePageState createState() => _LOOffStagePageState();
}

class _LOOffStagePageState extends State<LOOffStagePage> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("offStage"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Offstage"),
              Tab(
                text: "Offstage详解",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Offstage(
                  offstage: this.isShow,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.isShow = !this.isShow;
                    });
                  },
                  child: Text(this.isShow ? "显示" : "隐藏"),
                ),
              ],
            ),
            Text("Offstage隐藏时不会响应点击事件,也不会占用空间")
          ],
        ),
      ),
    );
  }
}
