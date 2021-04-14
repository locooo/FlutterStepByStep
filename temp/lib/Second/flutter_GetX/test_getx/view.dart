import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

import 'logic.dart';
import 'state.dart';

class TestGetxPage extends StatelessWidget {
  final TestGetxLogic logic = Get.put(TestGetxLogic());
  final TestGetxState state = Get.find<TestGetxLogic>().state;
  final myCount = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Obx(
                () => Text(
                  '共享的计数器${state.getxInt!.value}',
                ),
              ),
              TextButton(
                child: Text("+"),
                onPressed: () {
                  logic.getXincrease();
                },
              ),
              TextButton(
                child: Text("-"),
                onPressed: () {
                  logic.getXdecrease();
                },
              ),
              TextButton(
                child: Text("返回并清除数据"),
                onPressed: () {
                  Get.delete<TestGetxLogic>();
                  NavigatorUntil.pop(context);
                },
              ),
              TextButton(
                child: Text("toChild"),
                onPressed: () {
                  NavigatorUntil.push(context, Routes.testLOGetXchildPage);
                },
              ),
              Obx(
                () => Text(
                  '非共享的计数器${myCount.value}',
                ),
              ),
              TextButton(
                child: Text("修改非共享的"),
                onPressed: () {
                  myCount.value = 3;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
