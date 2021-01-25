import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LOHeroPage extends StatefulWidget {
  LOHeroPage({Key key}) : super(key: key);

  @override
  _LOHeroPageState createState() => _LOHeroPageState();
}

class _LOHeroPageState extends State<LOHeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Container(
        child: InkWell(
          child: Hero(
            tag: "hero1", //唯一标记，前后两个路由页Hero的tag必须相同
            child: ClipOval(
              child: Image.asset(
                "assets/images/splash.png",
                width: 50.0,
                height: 50,
              ),
            ),
          ),
          onTap: () {
            //打开B路由
            Navigator.push(context, PageRouteBuilder(pageBuilder:
                (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
              return new FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("原图"),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "hero1", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
