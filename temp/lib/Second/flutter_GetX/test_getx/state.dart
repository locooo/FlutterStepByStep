import 'package:get/state_manager.dart';

class TestGetxState {
//参数模型

  RxInt? getxInt;
  RxString? getxIntString;

  TestGetxState() {
    getxInt = 0.obs;
    getxIntString = getxInt.toString().obs;

    ///Initialize variables
  }
}
