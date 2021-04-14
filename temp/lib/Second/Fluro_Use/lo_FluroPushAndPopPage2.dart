import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOFluroPushAndPopPage2 extends StatefulWidget {
  LOFluroPushAndPopPage2({Key? key}) : super(key: key);

  @override
  _LOFluroPushAndPopPage2State createState() => _LOFluroPushAndPopPage2State();
}

class _LOFluroPushAndPopPage2State extends State<LOFluroPushAndPopPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FluroPushAndPopPage2"),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  NavigatorUntil.popUntil(
                      context, Routes.testFluroPushAndPopPage);
                },
                child: Text("返回到指定页面"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
