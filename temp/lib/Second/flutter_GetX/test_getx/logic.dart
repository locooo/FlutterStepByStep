import 'package:get/get.dart';

import 'state.dart';

//逻辑层
class TestGetxLogic extends GetxController {
  final state = TestGetxState();

  ///自增
  void getXincrease() {
    state.getxInt = state.getxInt! + 1;
  }

  ///自减
  void getXdecrease() {
    state.getxInt = state.getxInt! - 1;
  }

  @override
  void onInit() {
    super.onInit();
    print('TestGetxLogic--onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('TestGetxLogic--onReady');
  }

  @override
  void onClose() {
    super.onClose();
    print('TestGetxLogic--onClose');
  }
}
