import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Second/EventBus/lo_EventBusTestEvent.dart';
import 'package:temp/untils/eventBus/lo_GlobalEventBusUntil.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOEventBusPage3 extends StatefulWidget {
  LOEventBusPage3({Key key}) : super(key: key);

  @override
  _LOEventBusPage3State createState() => _LOEventBusPage3State();
}

class _LOEventBusPage3State extends State<LOEventBusPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOEventBusPage3'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: Text("触发eventBus"),
              onPressed: () {
                LOGlobalEventBusUntil()
                    .send(LOEventBusTestEvent.self, "我是eventBus传过来的值3333");
                NavigatorUntil.popUntil(context, Routes.testEventBusPage1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
