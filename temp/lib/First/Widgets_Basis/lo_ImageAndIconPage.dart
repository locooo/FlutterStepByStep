import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOImageAndIconPage extends StatefulWidget {
  LOImageAndIconPage({Key key}) : super(key: key);

  @override
  _LOImageAndIconPageState createState() => _LOImageAndIconPageState();
}

class _LOImageAndIconPageState extends State<LOImageAndIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageAndIcon'),
      ),
      body: Container(
        child: ListView(
          children: [
            Icon(
              Icons.ac_unit_sharp,
              size: 40,
              color: Colors.red,
              semanticLabel: "asds",
            ),
            Image(
              color: Colors.pink,
              image: NetworkImage(
                  "https://img-blog.csdnimg.cn/20181210151747299.jpg"),
            ),
            Image.asset("assets/images/splash.png"),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
            ),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.colorDodge,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.colorDodge,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.colorDodge,
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.colorDodge,
              fit: BoxFit.fill,
            ),
            Image(
              image: AssetImage("assets/images/splash.png"),
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.colorDodge,
              fit: BoxFit.scaleDown,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Image(
                image: AssetImage("assets/images/splash.png"),
                width: 100,
                height: 100,
                color: Colors.red,
                colorBlendMode: BlendMode.colorDodge,
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
