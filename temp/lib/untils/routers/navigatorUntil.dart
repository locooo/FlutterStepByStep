import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/application.dart';

class NavigatorUntil {
  //跳转到某个界面
  static Future push(BuildContext context, String routeName,
      {Map<String, String> params,
      TransitionType transition = TransitionType.native}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value;
        if ((params[key]) is String) {
          value = Uri.encodeComponent(params[key]);
        } else {
          value = params[key];
        }
        if (index == 0) {
          query = "?";
        } else {
          query = query + "&";
        }
        query += "$key=$value";
        index++;
      }
    }
    routeName = routeName + "$query";
    print('我是navigateTo传递的参数：$query');
    return Application.router
        .navigateTo(context, routeName, transition: transition);
  }

  //跳转并删除未跳转之前的栈顶页面（先跳转再删）
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

//和上面一样,但是传入的不是String(先跳转再删）
  static pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  //和上面一样(先删除再跳转）
  static popAndPushNamed(BuildContext context, String routeName) {
    Navigator.popAndPushNamed(context, routeName);
  }

  //MRAK:POP
  //返回上个界面 可选传值到上个界面和不传
  static void pop<T extends Object>(BuildContext context, [T result]) {
    Navigator.pop<T>(context, result);
  }

  //返回到某一个页面
  static popUntil(BuildContext context, String routeName) {
    Navigator.of(context).popUntil(ModalRoute.withName(routeName));
  }

  //打印路由树
  static printRouterTree() {
    Application.router.printTree();
  }
}
