import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOCallBackPage extends StatefulWidget {
  LOCallBackPage({Key key}) : super(key: key);

  @override
  _LOCallBackPageState createState() => _LOCallBackPageState();
}

class _LOCallBackPageState extends State<LOCallBackPage> {
  String text = "我是原始值";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("接收CallBack返回值"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(this.text),
            LOCallBackWidget(
              sexCallBack: (sex) {
                setState(() {
                  text = "functionSexCallBack" + sex;
                });
              },
              ageCallBack: (age) {
                setState(() {
                  text = "functionAgeCallBack$age";
                });
              },
              firstNameCallBack: () {
                setState(() {
                  text = "VoidCallback";
                });
              },
              secondNameCallBack: (valueChanged) {
                setState(() {
                  text = "ValueChanged_CallBack" + valueChanged;
                });
              },
            ),
            TextButton(
              child: Text("跳转"),
              onPressed: () async {},
            ),
          ],
        ),
      ),
    );
  }
}

//FunctionCallBack
typedef SexFunc = void Function(String sex);
typedef AgeFunc(int age);

class LOCallBackWidget extends StatelessWidget {
  final SexFunc sexCallBack;
  final AgeFunc ageCallBack;

  final VoidCallback firstNameCallBack;
  final ValueSetter<String> secondNameCallBack;
  const LOCallBackWidget(
      {Key key,
      this.sexCallBack,
      this.ageCallBack,
      this.firstNameCallBack,
      this.secondNameCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: TextButton(
            child: Text("functionSexCallBack"),
            onPressed: () {
              sexCallBack("男");
            },
          ),
        ),
        Container(
          height: 50,
          child: TextButton(
            child: Text("functionAgeCallBack"),
            onPressed: () {
              ageCallBack(18);
            },
          ),
        ),
        Container(
          height: 50,
          child: TextButton(
            child: Text("VoidCallBack"),
            onPressed: () {
              firstNameCallBack();
            },
          ),
        ),
        Container(
          height: 50,
          child: TextButton(
            child: Text("ValueChanged_CallBack"),
            onPressed: () {
              secondNameCallBack("ValueChanged_CallBack");
            },
          ),
        ),
      ],
    );
  }
}
