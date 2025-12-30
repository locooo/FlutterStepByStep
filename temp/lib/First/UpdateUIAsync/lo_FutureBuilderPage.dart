/*
 * @Author: locoo 215831063@qq.com
 * @Date: 2024-08-29 15:39:22
 * @LastEditors: locoo 215831063@qq.com
 * @LastEditTime: 2025-11-18 15:52:01
 * @FilePath: /FlutterStepByStep/temp/lib/First/UpdateUIAsync/lo_FutureBuilderPage.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:math';

import 'package:flutter/material.dart';

class LOFutureBuilderPage extends StatefulWidget {
  LOFutureBuilderPage({Key? key}) : super(key: key);

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
                  print("ConnectionState.none");
                  return Text("未开始");

                case ConnectionState.waiting:
                  //加载中
                  print("ConnectionState.waiting");
                  return Text("加载中");

                case ConnectionState.active:
                  //FutureBuilder没有该状态
                  print("ConnectionState.active");
                  return Text("active");

                default:
                  print("ConnectionState.done");
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
