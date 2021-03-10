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
import 'package:temp/Second/EventBus/lo_EventBusPage1.dart';
import 'package:temp/Second/EventBus/lo_EventBusPage2.dart';
import 'package:temp/Second/EventBus/lo_EventBusPage3.dart';
import 'package:temp/Second/Fluro_Use/lo_FluroPushAndPopPage.dart';
import 'package:temp/Second/Fluro_Use/lo_FluroPushAndPopPage1.dart';
import 'package:temp/Second/Fluro_Use/lo_FluroPushAndPopPage2.dart';
import 'package:temp/Second/Fluro_Use/lo_FluroPushAndPopPage3.dart';
import 'package:temp/Second/Provider/lo_ProviderChildPage.dart';
import 'package:temp/Second/Provider/lo_Providerpage.dart';
import 'package:temp/Second/State/lo_EventBus.dart';
import 'package:temp/Second/State/lo_EventBus1.dart';
import 'package:temp/Second/State/lo_InheritedWidgetPage.dart';
import 'package:temp/Second/State/lo_NotificationPage.dart';
import 'package:temp/Second/State/lo_ValueListenableBuilderPage.dart';
import 'package:temp/Second/State/lo_callBackPage.dart';
import 'package:temp/Second/State/lo_callBackPage1.dart';
import 'package:temp/Second/State/lo_setStatePage.dart';
import 'package:temp/Second/flutter_GetX/test_getx/lo_getxchildPage.dart';
import 'package:temp/Second/flutter_GetX/test_getx/view.dart';
import 'package:temp/Second/flutter_bloc/countBloc1/LOCounterBloc1ChildPage.dart';
import 'package:temp/Second/flutter_bloc/countBloc1/counterbloc1Page.dart';
import 'package:temp/Second/flutter_bloc/flutter_bloc_mainPage.dart';
import 'package:temp/Second/flutter_mobx/mobx_counterChildPage.dart';
import 'package:temp/Second/flutter_mobx/mobx_counterPage.dart';
import 'package:temp/Second/flutter_redux/lo_flutter_reduxPage.dart';
import 'package:temp/Second/flutter_redux/lo_flutter_reduxPage1.dart';
import 'package:temp/Second/scoped_model/scoped_model_SingleModel/lo_scoped_model_SingleModel.dart';
import 'package:temp/Second/scoped_model/scoped_model_SingleModel/lo_scoped_model_SingleModelPage.dart';
import 'package:temp/Second/scoped_model/scoped_model_SingleModel/lo_scoped_model_SingleModelPage1.dart';
import 'package:temp/Second/scoped_model/scoped_model_SingleModel/lo_scoped_model_SingleModelPage2.dart';
import 'package:temp/Third/Dio/lo_dioPage.dart';
import 'package:temp/Third/sqflite/lo_sqflitePage.dart';
import 'package:temp/lo_SpashPage.dart';
import 'package:temp/main.dart';

var rootHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SplashPage();
});

var homeHandel = Handler(
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

//Second
//Fluro
var testFluroPushAndPopPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOFluroPushAndPopPage();
});
var testFluroPushAndPopPageHandel1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String asdad = params["1Key"].first;
  return LOFluroPushAndPopPage1(receivedString: asdad);
});
var testFluroPushAndPopPageHandel2 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOFluroPushAndPopPage2();
});
var testFluroPushAndPopPageHandel3 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  final args = context.settings.arguments as Map;
  print(context.arguments);
  return LOFluroPushAndPopPage3(receivedString: args["1111"]);
});
//EventBus
var testEventBusPageHandel1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOEventBusPage1();
});
var testEventBusPageHandel2 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOEventBusPage2();
});
var testEventBusPageHandel3 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOEventBusPage3();
});
//SetState

var testSetStatePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSetStatePage();
});
var testCallBackPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOCallBackPage();
});
var testCallBackPageHandel1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOCallBackPage1();
});

var eventBusHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOEventBus();
});

var eventBusHandel1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOEventBus1();
});

var testNotificationPage1 = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOnotificationPage();
});
var testInheritedWidgetpageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOInheritedWidgetpage();
});
var testValueListenableBuilderpageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOValueListenableBuilderpage();
});
var testLOScopedModelSingleModelPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOScopedModelSingleModelPage();
});

var testLOScopedModelSingleModelPage1Handel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOScopedModelSingleModelPage1();
});

var testLOScopedModelSingleModelPage2Handel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  final args = context.settings.arguments as LOScopedSingleModel;
  return LOScopedModelSingleModelPage2(model: args);
});

var testLOReduxPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOReduxPage();
});
var testLOReduxPage1Handel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOreduxPage1();
});

//flutter_bloc
var testLOFlutterBlocMainFaPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOFlutterBlocMainFaPage();
});

var testLOCounterBloc1PageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOCounterBloc1Page();
});
var testLOCounterBloc1ChildPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOCounterBloc1ChildPage();
});

//flutter_mobx

var testLOMobxCounterPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOMobxCounterPage();
});
var testLOMobxCounterChildPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOMobxCounterChildPage();
});
//GetX
var testTestGetxPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return TestGetxPage();
});
var testLOGetXchildPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOGetXchildPage();
});

//Provider
var loProviderPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOProviderPage();
});

var loProviderChildPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOProviderChildPage();
});

//Third

var loDioPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LODioPage();
});

var loSqflitePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSqflitePage();
});

extension LOBoolParsing on String {
  bool loParseBool() {
    return this.toLowerCase() == 'true';
  }
}
