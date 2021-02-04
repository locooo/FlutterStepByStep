import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOFluroPushAndPopPage extends StatefulWidget {
  LOFluroPushAndPopPage({Key key}) : super(key: key);

  @override
  _LOFluroPushAndPopPageState createState() => _LOFluroPushAndPopPageState();
}

class _LOFluroPushAndPopPageState extends State<LOFluroPushAndPopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FluroPushAndPopPage"),
      ),
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () async {
                    final result = await NavigatorUntil.push(
                        context, Routes.testFluroPushAndPopPage1,
                        params: {"1Key": "1Value"});

                    print("pop回来后接收到的值:$result");
                  },
                  child: Text("传值Kind1和接收返回值"),
                ),
                TextButton(
                  onPressed: () {
                    NavigatorUntil.push(
                        context, Routes.testFluroPushAndPopPage1,
                        params: {"1Key": "1Value"}).then((result) {
                      print("pop回来后接收到的值:$result");
                    });
                  },
                  child: Text("传值传值Kind1和接收返回值"),
                ),
                TextButton(
                  onPressed: () {
                    NavigatorUntil.push(
                      context,
                      Routes.testFluroPushAndPopPage3,
                      routeSettings: RouteSettings(
                        arguments: {"1111": "2222"},
                      ),
                    ).then((result) {
                      print("pop回来后接收到的值:$result");
                    });
                  },
                  child: Text("传值Kind2"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
