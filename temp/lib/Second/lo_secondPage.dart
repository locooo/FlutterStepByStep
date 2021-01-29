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
        ],
      ),
    );
  }
}
