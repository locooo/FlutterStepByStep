import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOFluroPushAndPopPage1 extends StatefulWidget {
  final String? receivedString;
  LOFluroPushAndPopPage1({Key? key, this.receivedString}) : super(key: key);

  @override
  _LOFluroPushAndPopPage1State createState() => _LOFluroPushAndPopPage1State();
}

class _LOFluroPushAndPopPage1State extends State<LOFluroPushAndPopPage1> {
  @override
  Widget build(BuildContext context) {
    print(widget.receivedString);
    return Scaffold(
      appBar: AppBar(
        title: Text("FluroPushAndPopPage1"),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Text("我是上个页面传递过来的值:${widget.receivedString}"),
              TextButton(
                onPressed: () {
                  NavigatorUntil.pop(context, {
                    "我是LOFluroPushAndPopPage1传过来的值":
                        "我是LOFluroPushAndPopPage1传过来的值"
                  });
                },
                child: Text("点击回传信息到上个页面"),
              ),
              TextButton(
                onPressed: () {
                  NavigatorUntil.push(context, Routes.testFluroPushAndPopPage2);
                },
                child: Text("下个界面"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
