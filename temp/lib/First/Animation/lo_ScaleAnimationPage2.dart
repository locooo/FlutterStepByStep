import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget? child;
  final Animation<double>? animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation!,
          builder: (BuildContext context, Widget? child) {
            return new Container(
                color: Colors.black,
                height: animation!.value,
                width: animation!.value,
                child: child);
          },
          child: child),
    );
  }
}

class LOScaleAnimationPage2 extends StatefulWidget {
  LOScaleAnimationPage2({Key? key}) : super(key: key);

  @override
  _LOScaleAnimationPage2State createState() => _LOScaleAnimationPage2State();
}

class _LOScaleAnimationPage2State extends State<LOScaleAnimationPage2>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
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

    // animation.addListener(() {
    //   setState(() {
    //     print("animation");
    //   });
    // });
    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });
    //启动动画(正向执行)
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation2"),
      ),
      body: Container(
        color: Colors.red,
        child: GrowTransition(
          child: Container(
            color: Colors.yellow,
          ),
          animation: animation,
        ),
      ),
    );
  }
}
