import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:temp/Drawer/lo_drawerPage.dart';
import 'package:temp/First/Animation/lo_Hero.dart';
import 'package:temp/First/Animation/lo_ScaleAnimationPage.dart';
import 'package:temp/First/Animation/lo_ScaleAnimationPage1.dart';
import 'package:temp/First/Animation/lo_ScaleAnimationPage2.dart';
import 'package:temp/First/AppBar/lo_AppBarBasicPage.dart';
import 'package:temp/First/AppBar/lo_AppBarBottomPage.dart';
import 'package:temp/First/AppBar/lo_BottonTabBarPage.dart';
import 'package:temp/First/AppBar/lo_SliverAppbarPage.dart';
import 'package:temp/First/EventHandlingAndNotification/lo_GestureDetectorPage.dart';
import 'package:temp/First/EventHandlingAndNotification/lo_GestureRecognizerPage.dart';
import 'package:temp/First/EventHandlingAndNotification/lo_PointerEventPage.dart';
import 'package:temp/First/FunctionWidgets/lo_AlterViewPage.dart';
import 'package:temp/First/Layouts/lo_AlignPage.dart';
import 'package:temp/First/Layouts/lo_FlexAndExpanded.dart';
import 'package:temp/First/Layouts/lo_RowAndColumnPage.dart';
import 'package:temp/First/Layouts/lo_RowAndColumnPage1.dart';
import 'package:temp/First/Layouts/lo_StackAndPositionedPage.dart';
import 'package:temp/First/Layouts/lo_WrapAndFlowPage.dart';
import 'package:temp/First/UpdateUIAsync/lo_FutureBuilderPage.dart';
import 'package:temp/First/UpdateUIAsync/lo_StreamBuilderPage.dart';
import 'package:temp/First/UpdateUIAsync/lo_StreamContollerPage.dart';
import 'package:temp/First/Widgets_Basis/lo_ButtonPage.dart';
import 'package:temp/First/Widgets_Basis/lo_CardPage.dart';
import 'package:temp/First/Widgets_Basis/lo_ImageAndIconPage.dart';
import 'package:temp/First/Widgets_Basis/lo_Indicator.dart';
import 'package:temp/First/Widgets_Basis/lo_InkWellPage.dart';
import 'package:temp/First/Widgets_Basis/lo_SwitchAndCheckBox.dart';
import 'package:temp/First/Widgets_Basis/lo_TextPage.dart';
import 'package:temp/First/Widgets_Basis/lo_testField.dart';
import 'package:temp/First/Widgets_Container/lo_BoxsPage.dart';
import 'package:temp/First/Widgets_Container/lo_ClipPage.dart';
import 'package:temp/First/Widgets_Container/lo_ContainerPage.dart';
import 'package:temp/First/Widgets_Container/lo_DecoratedBoxPage.dart';
import 'package:temp/First/Widgets_Container/lo_PaddingPage.dart';
import 'package:temp/First/Widgets_Container/lo_TransformPage.dart';
import 'package:temp/First/Widgets_scroll/lo_CustomScrollView.dart';
import 'package:temp/First/Widgets_scroll/lo_ExpansionTilePage.dart';
import 'package:temp/First/Widgets_scroll/lo_GridViewPage.dart';
import 'package:temp/First/Widgets_scroll/lo_ListView.dart';
import 'package:temp/First/Widgets_scroll/lo_ScrollControllerPage.dart';
import 'package:temp/First/Widgets_scroll/lo_SingleChildScollViewPage.dart';
import 'package:temp/LOSetting/Language/LOSetLanguage.dart';
import 'package:temp/LOSetting/Theme/LOSetTheme.dart';
import 'package:temp/LOSetting/lo_settingPage.dart';
import 'package:temp/main.dart';

var rootHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyHomePage();
});

var drawerPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LODrawerPage();
});

var settingPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  // String asdad = jsonDecode(params['other'].first)['ee'];
  // print(asdad);

  // String title = params['title'].first;
  // int test = int.parse(params['test']?.first);
  // bool a = params['boolOther'].first.loParseBool();
  // print(test);
  return LOSettingPage();
});

var settingLanguagePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSetLanguage();
});

var settingThemePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSetTheme();
});

var testTextPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOTestTextPage();
});

var testButtonPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOButtonPage();
});
var testImageAndIconPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOImageAndIconPage();
});

var testSwitchAndCheckBoxPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSwitchAndCheckBoxPage();
});

var testIndicatorPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOIndicator();
});

var testFieldPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOTestTextFieldPage();
});

var testCardPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOCardPage();
});

var testInkWellPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOInkWellPage();
});

///MARK:Widget_Container
///12312321321
var testPaddingPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOPaddingPage();
});
var testBoxsPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOBoxsPage();
});
var testDecoratedBoxPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LODecoratedBoxPage();
});

var testTransformPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOTransformPage();
});

var testClipPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOClipPage();
});

///MARK:Layouts
var testContainerPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOContainerPage();
});

var testRowAndColumnPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LORowAndColumnPage();
});
var testRowAndColumnPage1Handel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LORowAndColumnPage1();
});

var testFlexAndExpandedPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOFlexAndExpandedPage();
});

var testWrapAndFlowPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOWrapAndFlowPage();
});

var testStackAndPositionedPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOStackAndPositionedPage();
});
var testAlignPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOAlignPage();
});

///MARK:Scroll
var testSingleChildScrollViewPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSingleChildScrollViewPage();
});
var testListViewPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOListViewPage();
});
var testGridViewPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOGridViewPage();
});
var testCustomScrollViewTestRoutePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return CustomScrollViewTestRoute();
});
var testScrollControllerTestRouteHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ScrollControllerTestRoute();
});

var testExpansionTilePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOExpansionTilePage();
});
//APPBar
var testAppBarBasicPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOAppBarBasicPage();
});
var testSliverAppbarPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSliverAppbarPage();
});
var testAppBarBottomPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOAppBarBottomPage();
});

var testBottomNavigationBarPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOBottomNavigationBarPage();
});
//Alter
var testAlterViewPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOAlterViewPage();
});

//UI
var testFutureBuilderPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOFutureBuilderPage();
});
var testStreamBuilderPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOStreamBuilderPage();
});
var testStreamContollerPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOStreamContollerPage();
});
//Animayion
var testScaleAnimationPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOScaleAnimationPage();
});
var testScaleAnimationPageHandel1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOScaleAnimationPage1();
});

var testScaleAnimationPageHandel2 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOScaleAnimationPage2();
});
var testHeroPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOHeroPage();
});

//EventHandlingAndNotification
var testPointerEventPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOPointerEventPage();
});

var testGestureDetectorPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOGestureDetectorPage();
});
var testGestureRecognizerPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOGestureRecognizerPage();
});

extension LOBoolParsing on String {
  bool loParseBool() {
    return this.toLowerCase() == 'true';
  }
}
