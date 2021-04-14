import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';
import 'package:get/get.dart';

class LODrawerPage extends StatefulWidget {
  LODrawerPage({Key? key}) : super(key: key);

  @override
  _LODrawerPageState createState() => _LODrawerPageState();
}

class _LODrawerPageState extends State<LODrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xff333333)),
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              decoration:
                  new BoxDecoration(color: Color.fromRGBO(5, 68, 92, 1)),
              height: 50,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  NavigatorUntil.push(Get.key.currentState!.overlay!.context,
                      Routes.settingPage);
                },
                child: Center(
                  child: Text(
                    //
                    S.of(context).setting,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 800,
            ),
            Text(
              '设置',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
