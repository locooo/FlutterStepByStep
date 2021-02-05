import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOStreamBuilderPage extends StatefulWidget {
  LOStreamBuilderPage({Key key}) : super(key: key);

  @override
  _LOStreamBuilderPageState createState() => _LOStreamBuilderPageState();
}

class _LOStreamBuilderPageState extends State<LOStreamBuilderPage> {
  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 2), (i) {
      return i;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("我是局部刷新么");
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: Container(
        child: Center(
          child: StreamBuilder<int>(
            stream: counter(), //
            //initialData: ,// a Stream<int> or null
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('没有Stream');
                case ConnectionState.waiting:
                  return Text('等待数据...');
                case ConnectionState.active:
                  return Text('active: ${snapshot.data}');
                case ConnectionState.done:
                  return Text('Stream已关闭');
              }
              return null; // unreachable
            },
          ),
        ),
      ),
    );
  }
}
