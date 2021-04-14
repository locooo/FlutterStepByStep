import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOPointerEventPage extends StatefulWidget {
  LOPointerEventPage({Key? key}) : super(key: key);

  @override
  _LOPointerEventPageState createState() => _LOPointerEventPageState();
}

class _LOPointerEventPageState extends State<LOPointerEventPage> {
  //定义一个状态，保存当前指针位置
  PointerEvent? _event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PointerEvent"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Listener(
              child: Container(
                color: Colors.red,
                width: double.infinity,
                height: 150,
                child: Text(
                  _event?.toString() ?? "",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPointerDown: (PointerDownEvent event) {
                setState(() {
                  _event = event;
                  print(("PointerDownEvent鼠标相对于当对于全局坐标的偏移: ${event.position}"));
                  print(("PointerDownEvent鼠标按压力度: ${event.pressure}"));
                });
              },
              onPointerMove: (PointerMoveEvent event) {
                setState(() {
                  _event = event;
                  print(
                      ("PointerMoveEvent两次指针移动事件（PointerMoveEvent）的距离: ${event.position}"));
                  print(
                      ("PointerMoveEvent指针移动方向（PointerMoveEvent）的距离: ${event.orientation}"));
                });
              },
              onPointerUp: (PointerUpEvent event) {
                setState(() {
                  _event = event;
                });
              },
              onPointerCancel: (PointerCancelEvent event) {
                setState(() {
                  _event = event;
                });
              }, //触摸事件取消回调
            ),
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(double.infinity, 150.0)),
                child: Center(
                  child: Text(
                    "Box A",
                    style: TextStyle(
                      backgroundColor: Colors.purple,
                    ),
                  ),
                ),
              ),
              //opaque：在命中测试时，将当前组件当成不透明处理(即使本身是透明的)，最终的效果相当于当前Widget的整个区域都是点击区域。举个例子：
              // behavior: HitTestBehavior.opaque,
              onPointerDown: (event) => print("down A"),
            ),
            Stack(
              children: <Widget>[
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.blue)),
                  ),
                  onPointerDown: (event) => print("down0"),
                ),
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                    child: Center(child: Text("左上角200*100范围内非文本区域点击")),
                  ),
                  onPointerDown: (event) => print("down1"),
                  behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
                )
              ],
            ),
            Listener(
              /**
               * 假如我们不想让某个子树响应PointerEvent的话，
               * 我们可以使用IgnorePointer和AbsorbPointer，
               * 这两个组件都能阻止子树接收指针事件，
               * 不同之处在于AbsorbPointer本身会参与命中测试，
               * 而IgnorePointer本身不会参与，这就意味着AbsorbPointer本身是可以接收指针事件的(但其子树不行)，
               * 而IgnorePointer不可以
               */
              child: AbsorbPointer(
                child: Listener(
                  child: Container(
                    color: Colors.red,
                    width: 200.0,
                    height: 100.0,
                  ),
                  onPointerDown: (event) => print("in"),
                ),
              ),
              onPointerDown: (event) => print("up"),
            ),
          ],
        ),
      ),
    );
  }
}
