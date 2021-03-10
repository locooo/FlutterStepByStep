import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/First/lo_firstPageModel.dart';
import 'package:temp/First/lo_singleTree.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOThirdPage extends StatefulWidget {
  LOThirdPage({Key key}) : super(key: key);

  @override
  _LOThirdPageState createState() => _LOThirdPageState();
}

class _LOThirdPageState extends State<LOThirdPage> {
  List first = [
    LOFirstPageModel(icon: Icons.adjust, name: "常用三方框架"),
    LOFirstPageModel(icon: Icons.adjust, name: "Dio(网络请求)+Json解析"),
    LOFirstPageModel(icon: Icons.adjust, name: "sqflite"),
    LOFirstPageModel(icon: Icons.adjust, name: "Hive(key-value)数据库支持对象类型"),
  ];
  List firstRoute = [
    Routes.loDioPage,
    Routes.loSqflitePage,
    Routes.loSqflitePage,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xff333333)),
      child: ListView(
        children: [
          LOSingleTree(
            listData: first,
            onTap: (int index) {
              NavigatorUntil.push(context, firstRoute[index]);
            },
          ),
        ],
      ),
    );
  }
}
