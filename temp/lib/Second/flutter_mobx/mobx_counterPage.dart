import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

import 'mobx_counter.dart';

class LOMobxCounterPage extends StatefulWidget {
  LOMobxCounterPage({Key key}) : super(key: key);

  @override
  _LOMobxCounterPageState createState() => _LOMobxCounterPageState();
}

class _LOMobxCounterPageState extends State<LOMobxCounterPage> {
  // final counter1 = LOMobxCounter();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_mobx"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Observer(
                builder: (context) {
                  return Text("${counter1.mobxInt}");
                },
              ),
            ),
            TextButton(
              child: Text("+"),
              onPressed: () {
                counter1.mobXincrement();
              },
            ),
            TextButton(
              child: Text("-"),
              onPressed: () {
                counter1.mobXdecrement();
              },
            ),
            TextButton(
              child: Text("指定值 1000"),
              onPressed: () {
                counter1.setMobxAppointValue(1000);
              },
            ),
            TextButton(
              child: Text("childPage"),
              onPressed: () {
                NavigatorUntil.push(context, Routes.testLOMobxCounterChildPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
