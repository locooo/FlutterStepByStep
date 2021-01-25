import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOClipPage extends StatefulWidget {
  LOClipPage({Key key}) : super(key: key);

  @override
  _LOClipPageState createState() => _LOClipPageState();
}

class _LOClipPageState extends State<LOClipPage> {
  Widget image = Image(
    image: AssetImage("assets/images/splash.png"),
    fit: BoxFit.cover,
    height: 60,
    width: 60,
    // width: 600,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip(剪裁)"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //不剪
              image,
              //剪裁圆形
              ClipOval(
                child: image,
              ),
              //剪裁成圆角矩形
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: image,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                    child: image,
                  ),
                  Text(
                    "你好世界",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRect(
                    //将溢出部分剪裁
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 0.4, //宽度设为原来宽度一半
                      child: image,
                    ),
                  ),
                  Text("你好世界", style: TextStyle(color: Colors.green))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
CustomClipper
如果我们想剪裁子组件的特定区域

*/
