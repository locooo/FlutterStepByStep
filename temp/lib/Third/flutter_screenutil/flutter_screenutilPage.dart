import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LOScreenUntilPage extends StatefulWidget {
  LOScreenUntilPage({Key? key}) : super(key: key);

  @override
  _LOScreenUntilPageState createState() => _LOScreenUntilPageState();
}

class _LOScreenUntilPageState extends State<LOScreenUntilPage> {
  void printScreenInformation() {
    print('设备宽度:${ScreenUtil().screenWidth}'); //Device width
    print('设备高度:${ScreenUtil().screenHeight}'); //Device height
    print('设备的像素密度:${ScreenUtil().pixelRatio}'); //Device pixel density
    print(
      '底部安全区距离:${ScreenUtil().bottomBarHeight}dp',
    ); //Bottom safe zone distance，suitable for buttons with full screen
    print(
      '状态栏高度:${ScreenUtil().statusBarHeight}dp',
    ); //Status bar height , Notch will be higher Unit px
    print('实际宽度的dp与设计稿px的比例:${ScreenUtil().scaleWidth}');
    print('实际高度的dp与设计稿px的比例:${ScreenUtil().scaleHeight}');
    // print(
    //   '宽度和字体相对于设计稿放大的比例:${ScreenUtil().scaleWidth * ScreenUtil().pixelRatio}',
    // );
    // print(
    //   '高度相对于设计稿放大的比例:${ScreenUtil().scaleHeight * ScreenUtil().pixelRatio}',
    // );
    print('系统的字体缩放比例:${ScreenUtil().textScaleFactor}');

    // print('屏幕宽度的0.5:${0.5.sw}');
    // print('屏幕高度的0.5:${0.5.sh}');
  }

  @override
  Widget build(BuildContext context) {
    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_screenuntil"),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(100),
              width: ScreenUtil().setWidth(100),
              color: Colors.red.shade700,
            ),
            Container(
              height: ScreenUtil().radius(100),
              width: ScreenUtil().radius(100),
              color: Colors.red.shade100,
            ),
            Container(
              height: ScreenUtil().radius(100),
              width: ScreenUtil().radius(100),
              color: Colors.red.shade100,
              child: Text("设备的像素密度dpr:${ScreenUtil().pixelRatio}"),
            )
          ],
        ),
      ),
    );
  }
}
