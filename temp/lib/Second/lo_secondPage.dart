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
    LOFirstPageModel(icon: Icons.adjust, name: "setState(会强制整个widget重新构建)"),
    LOFirstPageModel(icon: Icons.adjust, name: "callBack回调传值"),
    LOFirstPageModel(icon: Icons.adjust, name: "EventBus传值"),
    LOFirstPageModel(icon: Icons.adjust, name: "Notification(向上传递-向上冒泡传递)"),
    LOFirstPageModel(icon: Icons.adjust, name: "InheritedWidget(向下传递)"),
    LOFirstPageModel(icon: Icons.adjust, name: "StreamBuilder+Stream(局部重新构建)"),
    LOFirstPageModel(
        icon: Icons.adjust, name: "StreamBuilder+StreamContoller(局部重新构建)"),
    LOFirstPageModel(
        icon: Icons.adjust, name: "ValueListenableBuilder(局部重新构建)"),
  ];
  List thirdRoute = [
    Routes.testSetStatePage,
    Routes.testCallBackPage,
    Routes.eventBus,
    Routes.testNotificationPage,
    Routes.testInheritedWidgetpage,
    Routes.testStreamBuilderPage,
    Routes.testStreamContollerPage,
    Routes.testValueListenableBuilderpage,
  ];

  List fourth = [
    LOFirstPageModel(icon: Icons.adjust, name: "scoped_model(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "scoped_model"),
  ];
  List fourthRoute = [
    Routes.testLOScopedModelSingleModelPage,
  ];

  List fifth = [
    LOFirstPageModel(icon: Icons.adjust, name: "flutter_redux(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "flutter_redux"),
  ];
  List fifthRoute = [
    Routes.testLOReduxPage,
  ];

  List sixth = [
    LOFirstPageModel(icon: Icons.adjust, name: "flutter_bloc(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "flutter_bloc"),
  ];
  List sixRoute = [
    Routes.testLOFlutterBlocMainFaPage,
  ];

  List seventh = [
    LOFirstPageModel(icon: Icons.adjust, name: "flutter_mobx(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "flutter_mobx"),
  ];
  List sevenRoute = [
    Routes.testLOMobxCounterPage,
  ];

  List eighth = [
    LOFirstPageModel(icon: Icons.adjust, name: "GetX(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "GetX"),
  ];
  List eighthRoute = [
    Routes.testTestGetxPage,
  ];
  List ninth = [
    LOFirstPageModel(icon: Icons.adjust, name: "Provider(状态管理)"),
    LOFirstPageModel(icon: Icons.list, name: "Provider"),
  ];
  List ninthRoute = [
    Routes.loProviderPage,
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
          LOSingleTree(
            listData: fourth,
            onTap: (int index) {
              NavigatorUntil.push(context, fourthRoute[index]);
            },
          ),
          LOSingleTree(
            listData: fifth,
            onTap: (int index) {
              NavigatorUntil.push(context, fifthRoute[index]);
            },
          ),
          LOSingleTree(
            listData: sixth,
            onTap: (int index) {
              NavigatorUntil.push(context, sixRoute[index]);
            },
          ),
          LOSingleTree(
            listData: seventh,
            onTap: (int index) {
              NavigatorUntil.push(context, sevenRoute[index]);
            },
          ),
          LOSingleTree(
            listData: eighth,
            onTap: (int index) {
              NavigatorUntil.push(context, eighthRoute[index]);
            },
          ),
          LOSingleTree(
            listData: ninth,
            onTap: (int index) {
              NavigatorUntil.push(context, ninthRoute[index]);
            },
          ),
        ],
      ),
    );
  }
}
