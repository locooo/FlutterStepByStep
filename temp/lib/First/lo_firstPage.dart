import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/First/lo_firstPageModel.dart';
import 'package:temp/First/lo_singleTree.dart';
import 'package:temp/LOSetting/Language/LOLanguageCell.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOFirstPage extends StatefulWidget {
  LOFirstPage({Key key}) : super(key: key);

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

  List two = [
    LOFirstPageModel(icon: Icons.inventory, name: "Widgets_Container(容器类组件)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Padding(填充留白)"),
    LOFirstPageModel(
        icon: Icons.ac_unit, name: "ConstrainedBox_UnconstrainedBox(尺寸限制类容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "DectoratedBox(装饰容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Container(容器)"),
    LOFirstPageModel(icon: Icons.ac_unit, name: "Container(容器)"),
    // LOFirstPageModel(icon: Icons.ac_unit, name: "Column(线性布局)"),
    // LOFirstPageModel(icon: Icons.ac_unit, name: "FlexAndExpanded(弹性布局)"),
    // LOFirstPageModel(icon: Icons.ac_unit, name: "WrapAndFlow(流式布局)"),
    // LOFirstPageModel(icon: Icons.ac_unit, name: "StackAndPositioned(层叠布局)"),
    // LOFirstPageModel(icon: Icons.ac_unit, name: "Align(对齐与相对定位)"),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xff333333)),
      child: ListView(
        children: [
          LOSingleTree(
            listData: one,
            onTap: (int index) {
              switch (index) {
                case 0:
                  NavigatorUntil.push(context, Routes.testTextPage);
                  break;
                case 1:
                  NavigatorUntil.push(context, Routes.testButtonPage);
                  break;
                case 2:
                  NavigatorUntil.push(context, Routes.testImageAndIconPage);
                  break;
                case 3:
                  NavigatorUntil.push(
                      context, Routes.testSwitchAndCheckBoxPage);
                  break;
                case 4:
                  NavigatorUntil.push(context, Routes.testFieldPage);
                  break;
                case 5:
                  NavigatorUntil.push(context, Routes.testIndicatorPage);
                  break;
                case 6:
                  NavigatorUntil.push(context, Routes.testCardPage);
                  break;
                case 7:
                  NavigatorUntil.push(context, Routes.testInkWellPage);
                  break;
                default:
              }
            },
          ),
          LOSingleTree(
            listData: two,
            onTap: (int index) {
              switch (index) {
                case 0:
                  NavigatorUntil.push(context, Routes.testPaddingPage);
                  break;
                case 1:
                  NavigatorUntil.push(context, Routes.testBoxsPage);

                  break;
                case 2:
                  NavigatorUntil.push(context, Routes.testDecoratedBoxPage);
                  break;
                case 3:
                  NavigatorUntil.push(context, Routes.testContainerPage);

                  break;
                case 4:
                  NavigatorUntil.push(context, Routes.testTransformPage);
                  break;
                case 5:
                  NavigatorUntil.push(
                      context, Routes.testStackAndPositionedPage);
                  break;
                case 6:
                  NavigatorUntil.push(context, Routes.testAlignPage);
                  break;

                default:
              }
            },
          ),
          LOSingleTree(
            listData: three,
            onTap: (int index) {
              switch (index) {
                case 0:
                  NavigatorUntil.push(context, Routes.testRowAndColumnPage);

                  break;
                case 1:
                  NavigatorUntil.push(context, Routes.testRowAndColumnPage1);
                  break;
                case 2:
                  NavigatorUntil.push(context, Routes.testFlexAndExpandedPage);
                  break;
                case 3:
                  NavigatorUntil.push(context, Routes.testWrapAndFlowPage);
                  break;
                case 4:
                  NavigatorUntil.push(
                      context, Routes.testStackAndPositionedPage);
                  break;
                case 5:
                  NavigatorUntil.push(context, Routes.testAlignPage);
                  break;

                default:
              }
            },
          ),
        ],
      ),
    );
  }
}
