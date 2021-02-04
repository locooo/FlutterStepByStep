import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/First/lo_firstPageModel.dart';
import 'package:temp/First/lo_singleTree.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOSecondPage extends StatefulWidget {
  LOSecondPage({Key key}) : super(key: key);

  @override
  _LOSecondPageState createState() => _LOSecondPageState();
}

class _LOSecondPageState extends State<LOSecondPage> {
  List first = [
    LOFirstPageModel(icon: Icons.adjust, name: "fluro(路由框架封装和使用)"),
    LOFirstPageModel(icon: Icons.adjust, name: "fluro"),
  ];
  List firstRoute = [
    Routes.testFluroPushAndPopPage,
  ];

  List second = [
    LOFirstPageModel(icon: Icons.adjust, name: "EventBus(事件总线)"),
    LOFirstPageModel(icon: Icons.adjust, name: "EventBus"),
  ];
  List secondRoute = [
    Routes.testEventBusPage1,
  ];

  List third = [
    LOFirstPageModel(icon: Icons.adjust, name: "状态管理及传值"),
    LOFirstPageModel(icon: Icons.adjust, name: "setState"),
    LOFirstPageModel(icon: Icons.adjust, name: "callBack回调"),
    LOFirstPageModel(icon: Icons.adjust, name: "EventBus"),
    LOFirstPageModel(icon: Icons.adjust, name: "Notification(向上传递-向上冒泡传递)"),
    LOFirstPageModel(icon: Icons.adjust, name: "InheritedWidget(向下传递)"),
  ];
  List thirdRoute = [
    Routes.testSetStatePage,
    Routes.testCallBackPage,
    Routes.eventBus,
    Routes.testNotificationPage,
    Routes.testInheritedWidgetpage,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.grey),
      child: ListView(
        children: [
          LOSingleTree(
            listData: first,
            onTap: (int index) {
              NavigatorUntil.push(context, firstRoute[index]);
            },
          ),
          LOSingleTree(
            listData: second,
            onTap: (int index) {
              NavigatorUntil.push(context, secondRoute[index]);
            },
          ),
          LOSingleTree(
            listData: third,
            onTap: (int index) {
              NavigatorUntil.push(context, thirdRoute[index]);
            },
          ),
        ],
      ),
    );
  }
}
