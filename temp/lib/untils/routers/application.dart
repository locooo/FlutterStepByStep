import 'package:fluro/fluro.dart';
import 'routes.dart';

class Application {
  static late FluroRouter router;
  // 初始化
  static void initFluroRouter() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
}
