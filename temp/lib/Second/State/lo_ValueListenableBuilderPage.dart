import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOValueListenableBuilderpage extends StatefulWidget {
  LOValueListenableBuilderpage({Key? key}) : super(key: key);

  @override
  _LOValueListenableBuilderpageState createState() =>
      _LOValueListenableBuilderpageState();
}

class _LOValueListenableBuilderpageState
    extends State<LOValueListenableBuilderpage> {
  int _counter = 0;
  final ValueNotifier<int> _notifier = ValueNotifier<int>(0);

  void _incrementCounter() {
    this._counter++;
    _notifier.value++;
  }

  //中间不变的内容
  // Widget _content;
  @override
  void initState() {
    // _content = Center(
    //     child: Text(
    //   '这里是内容。。。。。。。。。。。。。',
    // ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ValueListenableBuilder"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: _notifier,
                builder: (context, dynamic vlaue, child) {
                  return Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                        child: Text("我是谁${this._counter}"),
                      ),
                      child!, //只有一部分依赖value值的话不依赖的可以放到child中
                    ],
                  );
                },
                //只有一部分依赖value值的话不依赖的可以放到child中
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                child: Text("点击"),
                onPressed: () {
                  _incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
