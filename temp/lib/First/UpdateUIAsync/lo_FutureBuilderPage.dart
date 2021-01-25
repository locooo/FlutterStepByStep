import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOFutureBuilderPage extends StatefulWidget {
  LOFutureBuilderPage({Key key}) : super(key: key);

  @override
  _LOFutureBuilderPageState createState() => _LOFutureBuilderPageState();
}

class _LOFutureBuilderPageState extends State<LOFutureBuilderPage> {
  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 3), () => "我是从互联网上获取的数据");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<String>(
            //异步耗时任务
            future: mockNetworkData(),
            //初始数据
            initialData: "我是本地数据",
            //Widget构建器；该构建器会在Future执行的不同阶段被多次调用
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  //当前没有异步任务，比如[FutureBuilder]的[future]为null时
                  return Text("未开始");
                  break;
                case ConnectionState.waiting:
                  //加载中
                  return Text("加载中");
                  break;
                case ConnectionState.active:
                  //FutureBuilder没有该状态
                  return Text("active");
                  break;

                default:
                  //异步任务已经终止
                  if (snapshot.hasError) {
                    // 请求失败，显示错误
                    return Text("Error: ${snapshot.error}");
                  } else {
                    // 请求成功，显示数据
                    return Text("Contents: ${snapshot.data}");
                  }
              }
            },
          ),
        ),
      ),
    );
  }
}
