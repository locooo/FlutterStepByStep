import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Second/State/lo_EventBusModel.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';

class LOEventBus1 extends StatefulWidget {
  LOEventBus1({Key key}) : super(key: key);

  @override
  _LOEventBus1State createState() => _LOEventBus1State();
}

class _LOEventBus1State extends State<LOEventBus1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("执行EventBus"),
      ),
      body: Container(
        child: TextButton(
          child: Text("执行EventBus"),
          onPressed: () {
            globalEventBus.fire(LOEventBusModel("eventBus传的值"));
            NavigatorUntil.pop(context);
          },
        ),
      ),
    );
  }
}
