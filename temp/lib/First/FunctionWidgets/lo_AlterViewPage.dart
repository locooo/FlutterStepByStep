import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';

class LOAlterViewPage extends StatefulWidget {
  LOAlterViewPage({Key key}) : super(key: key);

  @override
  _LOAlterViewPageState createState() => _LOAlterViewPageState();
}

class _LOAlterViewPageState extends State<LOAlterViewPage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: this._scaffoldState,
      appBar: AppBar(
        title: Text("Alter"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                RaisedButton(
                  child: Text("自定义"),
                  //去除水波纹 Colors.transparent
                  splashColor: Colors.red,
                  onPressed: () {
                    this.showMyAlter0(context);
                  },
                ),
                RaisedButton(
                  child: Text("SimpleDialog"),
                  //去除水波纹 Colors.transparent
                  splashColor: Colors.red,
                  onPressed: () {
                    this.showMyAlter1(context);
                  },
                ),
                ElevatedButton(
                  child: Text("AlertDialog"),
                  //去除水波纹 Colors.transparent
                  // splashColor: Colors.red,
                  onPressed: () {
                    this.showMyAlter2(context);
                  },
                ),
                RaisedButton(
                  child: Text("showModalBottomSheet"),
                  //去除水波纹 Colors.transparent
                  splashColor: Colors.red,
                  onPressed: () {
                    this.showMadalBottom(context);
                  },
                ),
                RaisedButton(
                  child: Text("showBottomSheet"),
                  //去除水波纹 Colors.transparent
                  splashColor: Colors.red,
                  onPressed: () => this
                      ._scaffoldState
                      .currentState
                      .showBottomSheet((ctx) => showBottom(context)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMyAlter0(BuildContext context) {
    showDialog(
        barrierDismissible: false, //点击蒙版是否消失Alter
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.black,
                child: RaisedButton(
                  child: Text("点我消失"),
                  //去除水波纹 Colors.transparent
                  splashColor: Colors.red,
                  onPressed: () {
                    NavigatorUntil.pop(context);
                  },
                ),
              ),
            ],
          );
        });
  }

  void showMyAlter1(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return SimpleDialog(
            title: Center(child: Text("SimpleDialog")),
            titlePadding: EdgeInsets.all(10),
            backgroundColor: Colors.amber,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            children: <Widget>[
              ListTile(
                title: Center(
                  child: Text("Item_1"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Item_2"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Item_3"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Close"),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void showMyAlter2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Dialog'),
        content: Text(('Dialog content..')),
        actions: <Widget>[
          new FlatButton(
            child: new Text("取消"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text("确定"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void showMadalBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 100,
            width: 100,
            child: Column(
              children: [
                Text("1"),
                Text("1"),
                Text("1"),
              ],
            ),
          );
        });
  }

  Container showBottom(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Text("1"),
          Text("1"),
          Text("1"),
        ],
      ),
    );
  }
}
