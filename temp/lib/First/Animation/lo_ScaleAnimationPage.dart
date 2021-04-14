import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOScaleAnimationPage extends StatefulWidget {
  LOScaleAnimationPage({Key? key}) : super(key: key);

  @override
  _LOScaleAnimationPageState createState() => _LOScaleAnimationPageState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _LOScaleAnimationPageState extends State<LOScaleAnimationPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    //使用弹性曲线
    // animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //图片宽高从0变到300
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addListener(() {
      setState(() {
        print("animation");
      });
    });
    //启动动画(正向执行)
    controller.forward();
  }

  @override
  void dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaleAnimation"),
      ),
      body: Container(
        child: Center(
          child: Icon(
            Icons.ac_unit,
            size: animation.value,
          ),
        ),
      ),
    );
  }
}
