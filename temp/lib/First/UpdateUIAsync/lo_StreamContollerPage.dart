import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOStreamContollerPage extends StatefulWidget {
  LOStreamContollerPage({Key? key}) : super(key: key);

  @override
  _LOStreamContollerPageState createState() => _LOStreamContollerPageState();
}

class _LOStreamContollerPageState extends State<LOStreamContollerPage> {
  var index = 0;
  //创建StreamController
  late var streamController;
  // 获取StreamSink用于发射事件
  StreamSink<String>? get streamSink => streamController.sink;
  // 获取Stream用于监听
  Stream<String>? get streamData => streamController.stream;

  ///事件订阅对象
  // StreamSubscription _dataSubscription;
//btnAction
  void onFloatActionButtonPress() {
    //发射一个事件.
    index++;
    streamSink!.add(index.toString());
  }

  @override
  void initState() {
    super.initState();
    //初始化
    streamController = StreamController<String>();

    ///监听事件
    // _dataSubscription = streamData.listen((value) {
    //   print(value);

    //   ///do change
    // });
    //发射一个事件.
    streamSink!.add("0");
  }

  @override
  void dispose() {
    //需要删除
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("value");
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamContoller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              StreamBuilder<String>(
                stream: streamData,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  return Text('Result: ${snapshot.data}');
                },
              ),
              TextButton(
                child: Text("点我"),
                onPressed: () {
                  streamSink!.add("10");
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onFloatActionButtonPress,
        child: Icon(Icons.add),
        heroTag: 'LOStreamContollerPage',
      ),
    );
  }
}
