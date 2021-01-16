import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String root = "/";
  static String settingPage = "/lo_settingPage";
  static String settingThemePage = "/lo_settingThemePage";
  static String settingLanguagePage = "/lo_settingLanguagePage";
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandel);
    router.define(settingPage, handler: settingPageHandel);
    router.define(settingThemePage, handler: settingThemePageHandel);
    router.define(settingLanguagePage, handler: settingLanguagePageHandel);
  }
}
