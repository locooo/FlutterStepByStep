import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOGestureDetectorPage extends StatefulWidget {
  LOGestureDetectorPage({Key key}) : super(key: key);

  @override
  _LOGestureDetectorPageState createState() => _LOGestureDetectorPageState();
}

class _LOGestureDetectorPageState extends State<LOGestureDetectorPage> {
  double _top = 0.0; //距顶部的偏移
  double _left = 0.0; //距左边的偏移
  //单方向偏移
  double _top1 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 150,
                ),
                onTap: () {
                  print("onTap单击");
                },
                onDoubleTap: () {
                  print("onDoubleTap双击");
                },
                onLongPress: () {
                  print("onLongPress长按");
                },
                onScaleUpdate: (ScaleUpdateDetails details) {
                  print("缩放${details.scale.clamp(.8, 10.0)}");
                  ;
                },
              ),
              //xy都移动
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: _top,
                      left: _left,
                      child: GestureDetector(
                        child: CircleAvatar(child: Text("A")),
                        //手指按下时会触发此回调
                        onPanDown: (DragDownDetails e) {
                          //打印手指按下的位置(相对于屏幕)
                          print("用户手指按下：${e.globalPosition}");
                        },
                        //手指滑动时会触发此回调
                        onPanUpdate: (DragUpdateDetails e) {
                          //用户手指滑动时，更新偏移，重新构建
                          setState(() {
                            // _left += e.delta.dx;
                            _top += e.delta.dy;
                          });
                          print("最后相对于屏幕的位置:${e.globalPosition}");
                        },
                        onPanEnd: (DragEndDetails e) {
                          //打印滑动结束时在x、y轴上的速度
                          print(e.velocity);

                          print("滑动结束相对于父控件位置: ($_left,$_top)");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              //单方向移动
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: _top1,
                      left: 0,
                      child: GestureDetector(
                        child: CircleAvatar(child: Text("A")),
                        onVerticalDragUpdate: (DragUpdateDetails e) {
                          //用户手指滑动时，更新偏移，重新构建
                          if ((_top1 + e.delta.dy) < 0 ||
                              (_top1 + e.delta.dy) > 300) {
                          } else {
                            setState(() {
                              _top1 += e.delta.dy;
                            });
                          }

                          print("最后相对于屏幕的位置:${e.globalPosition}");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
