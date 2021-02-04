import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOnotificationPage extends StatefulWidget {
  LOnotificationPage({Key key}) : super(key: key);

  @override
  _LOnotificationPageState createState() => _LOnotificationPageState();
}

class _LOnotificationPageState extends State<LOnotificationPage> {
  String _notificationData = 'Notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_notificationData),
      ),
      body: NotificationListener<LOTestNotifucation>(
        onNotification: (noti) {
          setState(() {
            _notificationData = noti.notiStr;
            print(noti.runtimeType.toString());
          });

          return true; //false 不再向上传递
        },
        child: Center(
          child: Builder(
            builder: (context) {
              return TextButton(
                child: NotificationListener<LOTestNotifucation>(
                  onNotification: (noti) {
                    print(noti.notiStr);
                    return true;
                  },
                  child: Text("点击向上传递数据(我是Button子节点Text所以我不会打印Notification)"),
                ),
                onPressed: () {
                  LOTestNotifucation(
                          "发送的Notification值:${Random().nextInt(1000)}")
                      .dispatch(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

//创建一个事件通知类
class LOTestNotifucation extends Notification {
  String notiStr;
  LOTestNotifucation(this.notiStr);
}
