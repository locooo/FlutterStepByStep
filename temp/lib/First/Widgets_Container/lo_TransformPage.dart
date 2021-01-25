import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class LOTransformPage extends StatefulWidget {
  LOTransformPage({Key key}) : super(key: key);

  @override
  _LOTransformPageState createState() => _LOTransformPageState();
}

class _LOTransformPageState extends State<LOTransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TransformAndRotatedBox"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.black,
                  child: new Transform(
                    alignment: Alignment.topLeft, //相对于坐标系原点的对齐方式
                    transform: new Matrix4.skewY(-0.3), //沿Y轴倾斜0.3弧度
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.deepOrange,
                      child: const Text('Apartment for rent!'),
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: Text("translate_Offset(平移)"),
                ),
                Container(
                  color: Colors.red,
                  child: Transform.translate(
                    offset: Offset(-20.0, 30.0),
                    child: Text("translate_Offset(平移)"),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.rotate(
                    //旋转90度
                    angle: pi / 2,
                    child: Text("rotate_angle(旋转)"),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                    scale: 1.5, //放大到1.5倍
                    child: Text("scale_scale(缩放)"),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: RotatedBox(
                    quarterTurns: 1, //旋转90度(1/4圈),
                    child: Text("RotatedBox(旋转)"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
Transform变换可能会影响布局效果,即可能出现UI重叠等情况 ,作用于绘制阶段,非layout阶段
RotatedBox 作用于layout阶段
*/
