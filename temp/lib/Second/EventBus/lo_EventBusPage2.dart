import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Second/EventBus/lo_EventBusTestEvent.dart';
import 'package:temp/untils/eventBus/lo_GlobalEventBusUntil.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOEventBusPage2 extends StatefulWidget {
  LOEventBusPage2({Key key}) : super(key: key);

  @override
  _LOEventBusPage2State createState() => _LOEventBusPage2State();
}

class _LOEventBusPage2State extends State<LOEventBusPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOEventBusPage2'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: Text("触发eventBus"),
              onPressed: () {
                LOGlobalEventBusUntil()
                    .send(LOEventBusTestEvent.self, "我是eventBus传过来的值22222");
                NavigatorUntil.pop(context);
              },
            ),
            TextButton(
              child: Text("下一个界面"),
              onPressed: () {
                NavigatorUntil.push(context, Routes.testEventBusPage3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
