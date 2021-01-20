import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String root = "/";
  static String settingPage = "/lo_settingPage";
  static String settingThemePage = "/lo_settingThemePage";
  static String settingLanguagePage = "/lo_settingLanguagePage";
  static String loDrawerPage = "/lo_DrawerPage";

  static String testTextPage = "/lo_TestTextPage";
  static String testButtonPage = "/lo_TestButtonPage";
  static String testImageAndIconPage = "/lo_TestImageAndIconPage";
  static String testSwitchAndCheckBoxPage = "/lo_TestSwitchAndCheckBoxPage";
  static String testIndicatorPage = "/lo_TestIndicatorPage";
  static String testFieldPage = "/lo_TestFieldPage";
  static String testCardPage = "/lo_TestCardPage";
  static String testInkWellPage = "/lo_TestInkWellPage";

  static String testContainerPage = "/lo_TestContainerPage";
  static String testRowAndColumnPage = "/lo_TestRowAndColumnPage";
  static String testRowAndColumnPage1 = "/lo_TestRowAndColumnPage1";
  static String testFlexAndExpandedPage = "/lo_TestFlexAndExpandedPage";
  static String testWrapAndFlowPage = "/lo_TestWrapAndFlowPage";
  static String testStackAndPositionedPage = "/lo_TestStackAndPositionedPage";
  static String testAlignPage = "/lo_TestAlignPage";

  static String testPaddingPage = "/lo_TestPaddingPage";
  static String testBoxsPage = "/lo_TestBoxsPage";
  static String testDecoratedBoxPage = "/lo_TestDecoratedBoxPage";
  static String testTransformPage = "/lo_TestTransformPage";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandel);
    router.define(loDrawerPage, handler: drawerPageHandel);
    router.define(settingPage, handler: settingPageHandel);
    router.define(settingThemePage, handler: settingThemePageHandel);
    router.define(settingLanguagePage, handler: settingLanguagePageHandel);
    //Widget_basis
    router.define(testTextPage, handler: testTextPageHandel);
    router.define(testButtonPage, handler: testButtonPageHandel);
    router.define(testImageAndIconPage, handler: testImageAndIconPageHandel);
    router.define(testSwitchAndCheckBoxPage,
        handler: testSwitchAndCheckBoxPageHandel);
    router.define(testIndicatorPage, handler: testIndicatorPageHandel);
    router.define(testFieldPage, handler: testFieldPageHandel);
    router.define(testCardPage, handler: testCardPageHandel);
    router.define(testInkWellPage, handler: testInkWellPageHandel);
    //Layouts
    router.define(testContainerPage, handler: testContainerPageHandel);
    router.define(testRowAndColumnPage, handler: testRowAndColumnPageHandel);
    router.define(testRowAndColumnPage1, handler: testRowAndColumnPage1Handel);
    router.define(testFlexAndExpandedPage,
        handler: testFlexAndExpandedPageHandel);
    router.define(testWrapAndFlowPage, handler: testWrapAndFlowPageHandel);
    router.define(testStackAndPositionedPage,
        handler: testStackAndPositionedPageHandel);
    router.define(testAlignPage, handler: testAlignPageHandel);
    //Widget_Container
    router.define(testPaddingPage, handler: testPaddingPageHandel);
    router.define(testBoxsPage, handler: testBoxsPageHandel);
    router.define(testDecoratedBoxPage, handler: testDecoratedBoxPageHandel);
    router.define(testTransformPage, handler: testTransformPageHandel);
  }
}
