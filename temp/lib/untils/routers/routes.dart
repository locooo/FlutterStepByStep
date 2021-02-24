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
  static String testClipPage = "/lo_TestClipPage";

  static String testSingleChildScrollViewPage =
      "/lo_TestSingleChildScrollViewPage";
  static String testListViewPage = "/lo_TestListViewPage";
  static String testGridViewPage = "/lo_TestGridViewPage";
  static String testCustomScrollViewTestRoutePage =
      "/lo_TestCustomScrollViewTestRoutePage";
  static String testScrollControllerTestRoute =
      "/lo_TestScrollControllerTestRoute";
  static String testExpansionTilePage = "/lo_TestExpansionTilePage";

  //AppBar
  static String testAppBarBasicPage = "/lo_TestAppBarBasicPage";
  static String testSliverAppbarPage = "/lo_TestSliverAppbarPage";
  static String testAppBarBottomPage = "/lo_TestAppBarBottomPage";
  static String testBottomNavigationBarPage = "/lo_TestBottomNavigationBarPage";
  //Alter
  static String testAlterViewPage = "/lo_TestAlterViewPage";
  //UI
  static String testFutureBuilderPage = "/lo_TestFutureBuilderPage";
  static String testStreamBuilderPage = "/lo_TestStreamBuilderPage";
  static String testStreamContollerPage = "/lo_TestStreamContollerPage";
  //Animation
  static String testScaleAnimationPage = "/lo_TestScaleAnimationPage";
  static String testScaleAnimationPage1 = "/lo_TestScaleAnimationPage1";
  static String testScaleAnimationPage2 = "/lo_TestScaleAnimationPage2";
  static String testHeroPage = "/lo_TestHeroPage";
  //EventHandlingAndNotification
  static String testPointerEventPage = "/lo_TestPointerEventPage";
  static String testGestureDetectorPage = "/lo_TestGestureDetectorPage";
  static String testGestureRecognizerPage = "/lo_TestGestureRecognizerPage";

  //Second
  //fluro
  static String testFluroPushAndPopPage = "/lo_TestFluroPushAndPopPage";
  static String testFluroPushAndPopPage1 = "/lo_TestFluroPushAndPopPage1";
  static String testFluroPushAndPopPage2 = "/lo_TestFluroPushAndPopPage2";
  static String testFluroPushAndPopPage3 = "/lo_TestFluroPushAndPopPage3";

  //EventBus
  static String testEventBusPage1 = "/lo_TestEventBusPage1";
  static String testEventBusPage2 = "/lo_TestEventBusPage2";
  static String testEventBusPage3 = "/lo_TestEventBusPage3";

//SetState
  static String testSetStatePage = "/lo_testSetStatePage";
  static String testCallBackPage = "/lo_testCallBackPage";
  static String testCallBackPage1 = "/lo_testCallBackPage1";

  static String eventBus = "/lo_eventBus";
  static String eventBus1 = "/lo_eventBus1";

  static String testNotificationPage = "/lo_testNotificationPage";
  static String testInheritedWidgetpage = "/lo_testInheritedWidgetpage";

  static String testValueListenableBuilderpage =
      "/lo_testValueListenableBuilderpage";

  //scoped_model
  static String testLOScopedModelSingleModelPage =
      "/lo_LOScopedModelSingleModelPage";
  static String testLOScopedModelSingleModelPage1 =
      "/lo_LOScopedModelSingleModelPage1";
  static String testLOScopedModelSingleModelPage2 =
      "/lo_LOScopedModelSingleModelPage2";

  //flutter_redux
  static String testLOReduxPage = "/lo_LOReduxPage";
  static String testLOreduxPage1 = "/lo_LOreduxPage1";

//flutter_bloc
  static String testLOFlutterBlocMainFaPage = "/lo_LOFlutterBlocMainFaPage";
  static String testLOCounterBloc1Page = "/lo_testLOCounterBloc1Page";
  static String testLOCounterBloc1ChildPage = "/lo_testLOCounterBloc1ChildPage";

//flutter_mobx

  static String testLOMobxCounterPage = "/lo_testLOMobxCounterPage";
  static String testLOMobxCounterChildPage = "/lo_testLOMobxCounterChildPage";

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
    router.define(testClipPage, handler: testClipPageHandel);
    //Widgets_Scroll
    router.define(testSingleChildScrollViewPage,
        handler: testSingleChildScrollViewPageHandel);
    router.define(testListViewPage, handler: testListViewPageHandel);
    router.define(testGridViewPage, handler: testGridViewPageHandel);
    router.define(testCustomScrollViewTestRoutePage,
        handler: testCustomScrollViewTestRoutePageHandel);
    router.define(testScrollControllerTestRoute,
        handler: testScrollControllerTestRouteHandel);
    router.define(testExpansionTilePage, handler: testExpansionTilePageHandel);
    //AppBar
    router.define(testAppBarBasicPage, handler: testAppBarBasicPageHandel);
    router.define(testSliverAppbarPage, handler: testSliverAppbarPageHandel);
    router.define(testAppBarBottomPage, handler: testAppBarBottomPageHandel);
    router.define(testBottomNavigationBarPage,
        handler: testBottomNavigationBarPageHandel);
    //Alter
    router.define(testAlterViewPage, handler: testAlterViewPageHandel);
    //UI
    router.define(testFutureBuilderPage, handler: testFutureBuilderPageHandel);
    router.define(testStreamBuilderPage, handler: testStreamBuilderPageHandel);
    router.define(testStreamContollerPage,
        handler: testStreamContollerPageHandel);
    //Animation
    router.define(testScaleAnimationPage,
        handler: testScaleAnimationPageHandel);
    router.define(testScaleAnimationPage1,
        handler: testScaleAnimationPageHandel1);
    router.define(testScaleAnimationPage2,
        handler: testScaleAnimationPageHandel2);
    router.define(testHeroPage, handler: testHeroPageHandel);
    //EventHandlingAndNotification
    router.define(testPointerEventPage, handler: testPointerEventPageHandel);
    router.define(testGestureDetectorPage,
        handler: testGestureDetectorPageHandel);
    router.define(testGestureRecognizerPage,
        handler: testGestureRecognizerPageHandel);

    //Second
    //Fluro
    router.define(testFluroPushAndPopPage,
        handler: testFluroPushAndPopPageHandel);
    router.define(testFluroPushAndPopPage1,
        handler: testFluroPushAndPopPageHandel1);
    router.define(testFluroPushAndPopPage2,
        handler: testFluroPushAndPopPageHandel2);
    router.define(testFluroPushAndPopPage3,
        handler: testFluroPushAndPopPageHandel3);

    //EventBus

    router.define(testEventBusPage1, handler: testEventBusPageHandel1);
    router.define(testEventBusPage2, handler: testEventBusPageHandel2);
    router.define(testEventBusPage3, handler: testEventBusPageHandel3);
    //State

    router.define(testSetStatePage, handler: testSetStatePageHandel);
    router.define(testCallBackPage, handler: testCallBackPageHandel);
    router.define(testCallBackPage1, handler: testCallBackPageHandel1);

    router.define(eventBus, handler: eventBusHandel);
    router.define(eventBus1, handler: eventBusHandel1);

    router.define(testNotificationPage, handler: testNotificationPage1);

    router.define(testInheritedWidgetpage,
        handler: testInheritedWidgetpageHandel);
    router.define(testValueListenableBuilderpage,
        handler: testValueListenableBuilderpageHandel);

    //scope_model
    router.define(testLOScopedModelSingleModelPage,
        handler: testLOScopedModelSingleModelPageHandel);
    router.define(testLOScopedModelSingleModelPage1,
        handler: testLOScopedModelSingleModelPage1Handel);
    router.define(testLOScopedModelSingleModelPage2,
        handler: testLOScopedModelSingleModelPage2Handel);

    //flutter_redux
    router.define(testLOReduxPage, handler: testLOReduxPageHandel);
    router.define(testLOreduxPage1, handler: testLOReduxPage1Handel);

    //flutter_bloc

    router.define(testLOFlutterBlocMainFaPage,
        handler: testLOFlutterBlocMainFaPageHandel);
    router.define(testLOCounterBloc1Page,
        handler: testLOCounterBloc1PageHandel);
    router.define(testLOCounterBloc1ChildPage,
        handler: testLOCounterBloc1ChildPageHandel);

    //flutter_mobx
    router.define(testLOMobxCounterPage, handler: testLOMobxCounterPageHandel);
    router.define(testLOMobxCounterChildPage,
        handler: testLOMobxCounterChildPageHandel);
  }
}
