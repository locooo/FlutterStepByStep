import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: Icon(
        Icons.ac_unit,
        size: animation.value,
      ),
    );
  }
}

class LOScaleAnimationPage1 extends StatefulWidget {
  LOScaleAnimationPage1({Key key}) : super(key: key);

  @override
  _LOScaleAnimationPage1State createState() => _LOScaleAnimationPage1State();
}

class _LOScaleAnimationPage1State extends State<LOScaleAnimationPage1>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  @override
  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    //启动动画
    controller.forward();
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation1"),
      ),
      body: Container(
        child: AnimatedImage(
          animation: animation,
        ),
      ),
    );
  }
}
