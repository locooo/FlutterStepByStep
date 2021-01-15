import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/route_handlers.dart';

class Routes {
  static String root = "/";
  static String settingPage = "/lo_settingPage";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandel);
    router.define(settingPage, handler: settingPageHandel);
  }
}
