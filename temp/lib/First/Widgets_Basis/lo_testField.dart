import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOTestTextFieldPage extends StatefulWidget {
  LOTestTextFieldPage({Key key}) : super(key: key);

  @override
  _LOTestTextFieldPageState createState() => _LOTestTextFieldPageState();
}

class _LOTestTextFieldPageState extends State<LOTestTextFieldPage> {
  bool isHideWords = false;
  FocusNode _focusNode = FocusNode();
  FocusNode _focusNode1 = FocusNode();
  var _controller = new TextEditingController();
  void initState() {
    super.initState();
    //2:TextEditingController构造方法里面有个text可选参数,所以在初始的地方调用方法赋值
    _controller.text = "初始值";
    print(this._controller);
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      print('input ${controller.text}');
    });
    controller.text = "默认值";
    return Scaffold(
      appBar: AppBar(
        title: Text("field"),
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: controller,
                maxLength: 1000,
                focusNode: _focusNode,
                // maxLines: 10,
                obscureText: this.isHideWords, //是否是密码
                autofocus: true, //是否自动对焦
                textAlign: TextAlign.start, //文本对齐方式12
                style: TextStyle(fontSize: 15.0, color: Colors.red), //输入文本的样式
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                  _controller.text = text;
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
                decoration: InputDecoration(
                    //去除下划线
                    // border: InputBorder.none,
                    labelText: 'Hello',
                    hintText: ' Please enter something',
                    prefixIcon: Icon(
                      Icons.local_airport,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ),
          Container(
            child: TextField(
              focusNode: _focusNode1,
            ),
          ),
          Row(
            children: [
              Switch(
                value: this.isHideWords,
                onChanged: (value) {
                  setState(() {
                    this.isHideWords = !this.isHideWords;
                  });
                },
              ),
              TextButton(
                child: Text('FirstTextField'),
                // color: Colors.blue,
                onPressed: () {
                  FocusScope.of(context).requestFocus(_focusNode);
                },
              ),
              TextButton(
                child: Text('SecondTextField'),
                // color: Colors.blue,
                onPressed: () {
                  FocusScope.of(context).requestFocus(_focusNode1);
                },
              ),
            ],
          ),
          TextButton(
            child: Text('退出编辑'),
            // color: Colors.blue,
            onPressed: () {
              _focusNode.unfocus();
              _focusNode1.unfocus();
            },
          ),
        ],
      ),
    );
  }
}
