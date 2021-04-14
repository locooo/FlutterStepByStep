import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/First/lo_firstPageModel.dart';
import 'package:temp/First/lo_singleTree.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOFirstPage extends StatefulWidget {
  LOFirstPage({Key? key}) : super(key: key);

  @override
  _LOFirstPageState createState() => _LOFirstPageState();
}

class _LOFirstPageState extends State<LOFirstPage> {
  double cellHight = 0.0;
  List one = [
    LOFirstPageModel(icon: Icons.extension, name: "Widgets_Basis(基础组件)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Text"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Button"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Image_Icon"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "CheckBox"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Field"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Indicator"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Card"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Inwell"),
  ];
  List oneRoute = [
    Routes.testTextPage,
    Routes.testButtonPage,
    Routes.testImageAndIconPage,
    Routes.testSwitchAndCheckBoxPage,
    Routes.testFieldPage,
    Routes.testIndicatorPage,
    Routes.testCardPage,
    Routes.testInkWellPage,
    Routes.testContainerPage,
    Routes.testTransformPage,
  ];

  List two = [
    LOFirstPageModel(icon: Icons.inventory, name: "Widgets_Container(容器类组件)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Padding(填充留白)"),
    LOFirstPageModel(
        icon: Icons.ac_unit, name: "ConstrainedBox_UnconstrainedBox(尺寸限制类容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "DectoratedBox(装饰容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Container(容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Transform_RotatedBox(变换)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Clip(剪裁)"),
  ];
  List twoRoute = [
    Routes.testPaddingPage,
    Routes.testBoxsPage,
    Routes.testDecoratedBoxPage,
    Routes.testContainerPage,
    Routes.testTransformPage,
    Routes.testClipPage,
  ];
  List three = [
    LOFirstPageModel(icon: Icons.dashboard, name: "Layouts(布局类组件)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Row(线性布局)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Column(线性布局)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "FlexAndExpanded(弹性布局)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "WrapAndFlow(流式布局)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "StackAndPositioned(层叠布局)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Align(对齐与相对定位)"),
  ];
  List threeRoute = [
    Routes.testRowAndColumnPage,
    Routes.testRowAndColumnPage1,
    Routes.testFlexAndExpandedPage,
    Routes.testWrapAndFlowPage,
    Routes.testStackAndPositionedPage,
    Routes.testAlignPage
  ];
  List four = [
    LOFirstPageModel(icon: Icons.list, name: "Widgets_Scroll(可滚动组件)"),
    LOFirstPageModel(
        icon: Icons.list, name: "SingleChildScrollView(ScrollView)"),
    LOFirstPageModel(icon: Icons.list, name: "ListView(4种构造方式)"),
    LOFirstPageModel(icon: Icons.list, name: "DridView(二维网格列表)"),
    LOFirstPageModel(icon: Icons.list, name: "CustomScrollView(多种滚动组件的融合)"),
    LOFirstPageModel(
        icon: Icons.list, name: "ScrollController(滚动检测和自动滚到至指定位置)"),
    LOFirstPageModel(icon: Icons.list, name: "ExpansionTile(展开闭合控件)"),
  ];
  List fourRoute = [
    Routes.testSingleChildScrollViewPage,
    Routes.testListViewPage,
    Routes.testGridViewPage,
    Routes.testCustomScrollViewTestRoutePage,
    Routes.testScrollControllerTestRoute,
    Routes.testExpansionTilePage,
  ];

  List five = [
    LOFirstPageModel(icon: Icons.web_asset, name: "AppBar"),
    LOFirstPageModel(icon: Icons.list, name: "AppBarAndBottomAppBar_basic"),
    LOFirstPageModel(icon: Icons.list, name: "SliverAppbar"),
    LOFirstPageModel(icon: Icons.list, name: "AppBar_bottom"),
    LOFirstPageModel(icon: Icons.list, name: "Scalflord_bottom"),
  ];
  List fiveRoute = [
    Routes.testAppBarBasicPage,
    Routes.testSliverAppbarPage,
    Routes.testAppBarBottomPage,
    Routes.testBottomNavigationBarPage,
  ];

  List six = [
    LOFirstPageModel(icon: Icons.view_array, name: "Functional_widgets(功能性组件)"),
    LOFirstPageModel(icon: Icons.list, name: "Alter(对话框)"),
  ];
  List sixRoute = [
    Routes.testAlterViewPage,
  ];

  List seven = [
    LOFirstPageModel(icon: Icons.update, name: "Async_widgets(异步更新UI)"),
    LOFirstPageModel(icon: Icons.list, name: "FutureBuilder"),
    LOFirstPageModel(icon: Icons.list, name: "StreamBuilder"),
    LOFirstPageModel(icon: Icons.list, name: "StreamContoller"),
  ];
  List sevenRoute = [
    Routes.testFutureBuilderPage,
    Routes.testStreamBuilderPage,
    Routes.testStreamContollerPage,
  ];
  List eight = [
    LOFirstPageModel(icon: Icons.assessment, name: "Animations(动画)"),
    LOFirstPageModel(icon: Icons.list, name: "Ainmation"),
    LOFirstPageModel(icon: Icons.list, name: "Ainmation1"),
    LOFirstPageModel(icon: Icons.list, name: "Ainmation2"),
    LOFirstPageModel(icon: Icons.list, name: "Hero"),
  ];
  List eightRoute = [
    Routes.testScaleAnimationPage,
    Routes.testScaleAnimationPage1,
    Routes.testScaleAnimationPage2,
    Routes.testHeroPage,
  ];

  List nine = [
    LOFirstPageModel(
        icon: Icons.adjust, name: "EventHandlingAndNotification(事件处理与通知)"),
    LOFirstPageModel(icon: Icons.list, name: "Listener(原始指针事件处理)"),
    LOFirstPageModel(icon: Icons.list, name: "GestureDetector(widget手势)"),
    LOFirstPageModel(icon: Icons.list, name: "GestureRecognizer(手势)"),
  ];
  List nineRoute = [
    Routes.testPointerEventPage,
    Routes.testGestureDetectorPage,
    Routes.testGestureRecognizerPage,
  ];

  List ten = [
    LOFirstPageModel(icon: Icons.extension, name: "OtherWights(其他weight)"),
    LOFirstPageModel(icon: Icons.extension, name: "Offstage控制组件隐藏/可见的组件"),
    LOFirstPageModel(icon: Icons.extension, name: "Visibility控制组件隐藏/可见的组件"),
    LOFirstPageModel(
        icon: Icons.extension, name: "Opacity(AnimatedOpacity)控制组件隐藏/可见的组件"),
  ];
  List tenthRoute = [
    Routes.testLOOffStagePage,
    Routes.testLOVisibilityPage,
    Routes.testLOOpacityPage,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xff333333)),
      child: ListView(
        children: [
          LOSingleTree(
            listData: one,
            onTap: (int index) {
              NavigatorUntil.push(context, oneRoute[index]);
            },
          ),
          LOSingleTree(
            listData: two,
            onTap: (int index) {
              NavigatorUntil.push(context, twoRoute[index]);
            },
          ),
          LOSingleTree(
            listData: three,
            onTap: (int index) {
              NavigatorUntil.push(context, threeRoute[index]);
            },
          ),
          LOSingleTree(
            listData: four,
            onTap: (int index) {
              NavigatorUntil.push(context, fourRoute[index]);
            },
          ),
          LOSingleTree(
            listData: five,
            onTap: (int index) {
              NavigatorUntil.push(context, fiveRoute[index]);
            },
          ),
          LOSingleTree(
            listData: six,
            onTap: (int index) {
              NavigatorUntil.push(context, sixRoute[index]);
            },
          ),
          LOSingleTree(
            listData: seven,
            onTap: (int index) {
              NavigatorUntil.push(context, sevenRoute[index]);
            },
          ),
          LOSingleTree(
            listData: eight,
            onTap: (int index) {
              NavigatorUntil.push(context, eightRoute[index]);
            },
          ),
          LOSingleTree(
            listData: nine,
            onTap: (int index) {
              NavigatorUntil.push(context, nineRoute[index]);
            },
          ),
          LOSingleTree(
            listData: ten,
            onTap: (int index) {
              NavigatorUntil.push(context, tenthRoute[index]);
            },
          ),
        ],
      ),
    );
  }
}
