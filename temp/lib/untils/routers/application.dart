import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

import 'routes.dart';

class Application {
  static FluroRouter router;
  // 初始化
  static void initFluroRouter() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
}
