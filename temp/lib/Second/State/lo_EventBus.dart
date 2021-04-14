import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Second/State/lo_EventBusModel.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOEventBus extends StatefulWidget {
  LOEventBus({Key? key}) : super(key: key);

  @override
  _LOEventBusState createState() => _LOEventBusState();
}

class _LOEventBusState extends State<LOEventBus> {
  String str = "我是原始值";
  late var subscription;
  @override
  void initState() {
    this.subscription = globalEventBus.on<LOEventBusModel>().listen((event) {
      setState(() {
        this.str = event.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    this.subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBus"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(this.str),
            TextButton(
              child: Text("点击去执行EventBus"),
              onPressed: () {
                NavigatorUntil.push(context, Routes.eventBus1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
