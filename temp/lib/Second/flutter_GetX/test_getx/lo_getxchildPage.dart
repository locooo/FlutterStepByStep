import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:temp/Second/flutter_GetX/test_getx/logic.dart';

class LOGetXchildPage extends StatelessWidget {
  const LOGetXchildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //获取状态
    TestGetxLogic parent = Get.find<TestGetxLogic>();
    return Scaffold(
      appBar: AppBar(
        title: Text("GextXChildPage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Obx(
                () => Text("${parent.state.getxInt}"),
              ),
              TextButton(
                child: Text("+"),
                onPressed: () {
                  parent.getXincrease();
                },
              ),
              TextButton(
                child: Text("-"),
                onPressed: () {
                  parent.getXdecrease();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
