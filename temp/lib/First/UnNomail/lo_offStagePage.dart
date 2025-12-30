/*
 * @Author: locoo 215831063@qq.com
 * @Date: 2024-08-29 15:39:22
 * @LastEditors: locoo 215831063@qq.com
 * @LastEditTime: 2025-11-18 17:17:32
 * @FilePath: /FlutterStepByStep/temp/lib/First/UnNomail/lo_offStagePage.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
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
                Text("Offstage隐藏时不会响应点击事件,也不会占用空间"),
                Offstage(
                  offstage: this.isShow,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
                Text("Offstage隐藏时不会响应点击事件,也不会占用空间"),
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
