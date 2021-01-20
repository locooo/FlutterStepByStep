import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOContainerPage extends StatefulWidget {
  LOContainerPage({Key key}) : super(key: key);

  @override
  _LOContainerPageState createState() => _LOContainerPageState();
}

class _LOContainerPageState extends State<LOContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //true 滑动到底部
          reverse: false,
          padding: EdgeInsets.all(0.0),
          //滑动到底部回弹效果
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text("sssss"),
              ),
              Container(
                width: 100,
                color: Colors.red,
                child: Text("sssss"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Text("width"),
              ),
              Container(
                width: double.infinity,
                color: Colors.red,
                child: Text("width"),
              ),
              Container(
                height: 30,
                color: Colors.purple,
              ),
              Container(
                color: Colors.orange,
                child: Text("alignment"),
                //不加这句话，Container会自适应child大小;加上以后会充满屏幕
                //alignment: Alignment(0.0, 0.0),
                alignment: Alignment.topLeft, //等价于上面
              ),
              Container(
                color: Colors.green,
                constraints: BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                  minWidth: 150,
                  minHeight: 50,
                ),
                child: Text("BoxConstraints"),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(20.0),
                child: Text(
                    "外部边距marginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmarginmargin"),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: Text(
                    "内部边距paddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpaddingpadding"),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                color: Colors.green,
                child: Text("transform"),
                transform: Matrix4.rotationZ(0.5),
              ),
              Container(
                child: Text("边框和圆角"),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(10, 30, 30, 10),
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFF0000), width: 2),
                  borderRadius: new BorderRadius.circular((15.0)),
                ),
              ),
              Container(
                child: Text("阴影"),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(10, 0, 30, 20),
                height: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x99FFFF00),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0),
                    BoxShadow(
                        color: Color(0x9900FF00), offset: Offset(1.0, 1.0)),
                    BoxShadow(color: Color(0xFF0000FF))
                  ],
                ),
              ),
              Container(
                child: Text("圆形与矩形"),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(10, 0, 30, 20),
                height: 30,
                decoration: BoxDecoration(
                  //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                  shape: BoxShape.rectangle, // 默认值也是矩形
                  color: Color(0xFF9E9E9E),
                  borderRadius: new BorderRadius.circular((20.0)),
                ),
              ),
              Container(
                child: Text("渐变（环形、扫描式、线性）"),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(10, 0, 30, 20),
                height: 30,
                decoration: BoxDecoration(
                    border: new Border.all(
                        color: Color(0xFFFFFF00), width: 0.5), // 边色与边宽度
                    // 环形渲染
                    gradient: RadialGradient(colors: [
                      Color(0xFFFFFF00),
                      Color(0xFF00FF00),
                      Color(0xFF00FFFF)
                    ], radius: 1, tileMode: TileMode.mirror)
//扫描式渐变
//        gradient: SweepGradient(colors: [Color(0xFFFFFF00), Color(0xFF00FF00), Color(0xFF00FFFF)], startAngle: 0.0, endAngle: 1*3.14)
// 线性渐变
//        gradient: LinearGradient(colors: [Color(0xFFFFFF00), Color(0xFF00FF00), Color(0xFF00FFFF)], begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1))
                    ),
              ),
              Container(
                  height: 100,
                  child: Text("背景图像"),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage(
                            'https://avatar.csdn.net/8/9/A/3_chenlove1.jpg'), // 网络图片
                        // image: new AssetImage('graphics/background.png'), 本地图片
                        fit: BoxFit.fill // 填满
                        //          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),// 固定大小
                        ),
                  )),
              Container(
                child: Text("ShapeDecoration"),
                alignment: Alignment.center,
                height: 100,
                decoration: ShapeDecoration(
                    color: Color(0xFFFF00FF), // 底色
                    shape: Border.all(
                        color: Color(0xFF00FFFF),
                        style: BorderStyle.solid,
                        width: 10)
                    // 四个边分别指定颜色和宽度， 当只给bottom时与UnderlineInputBorder一致效果
//          shape: Border(top: b, bottom: b, right: b, left: b)
// 底部线没啥效果
                    // shape: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Color(0xFFFFFFFF),
                    //         style: BorderStyle.solid,
                    //         width: 10))
// 矩形边色
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(10)),
                    //     side: BorderSide(
                    //         color: Color(0xFFFFFFFF),
                    //         style: BorderStyle.solid,
                    //         width: 2))
// 圆形边色
                    // shape: CircleBorder(
                    //     side: BorderSide(
                    //         color: Color(0xFFFFFF00),
                    //         style: BorderStyle.solid,
                    //         width: 2))
// 体育场（竖向椭圆）
                    // shape: StadiumBorder(
                    //     side: BorderSide(
                    //         width: 2,
                    //         style: BorderStyle.solid,
                    //         color: Color(0xFF00FFFF)))
// 角形（八边角）边色
//          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
                    ),
              ),
              Container(
                height: 30,
                child: Text("下划线UnderlineTabIndicator"),
                alignment: Alignment.center,
                decoration: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: Colors.red),
                    insets: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              ),
              Container(
                height: 30,
                child: Text("FlutterLogoDecoration(没啥用)"),
                alignment: Alignment.center,
                decoration: FlutterLogoDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Container里面没有子控件，它就会填充整个屏幕；如果有子控件，Container就会自动适应子控件大小。
另外，Container只能容纳一个子控件，如果想容纳更多的子控件,可以将子控件设置为Row、Column、Stack(这三个子控件都有一个children属性)

*/
