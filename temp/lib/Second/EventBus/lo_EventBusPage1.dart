import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Second/EventBus/lo_EventBusTestEvent.dart';
import 'package:temp/untils/eventBus/lo_GlobalEventBusUntil.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOEventBusPage1 extends StatefulWidget {
  LOEventBusPage1({Key key}) : super(key: key);

  @override
  _LOEventBusPage1State createState() => _LOEventBusPage1State();
}

class _LOEventBusPage1State extends State<LOEventBusPage1> {
  String text = "原始值";
  @override
  void initState() {
    super.initState();
    //订阅事件
    LOGlobalEventBusUntil().on(LOEventBusTestEvent.self, (obj) {
      setState(() {
        this.text = obj.toString();
      });
    });
  }

  @override
  void dispose() {
    LOGlobalEventBusUntil().off(LOEventBusTestEvent.self);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOEventBusPage1'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: Text(text),
              onPressed: () {
                NavigatorUntil.push(context, Routes.testEventBusPage2);
              },
            )
          ],
        ),
      ),
    );
  }
}
