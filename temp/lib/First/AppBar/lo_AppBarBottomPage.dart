import 'package:flutter/material.dart';

class LOAppBarBottomPage extends StatefulWidget {
  LOAppBarBottomPage({Key? key}) : super(key: key);

  @override
  _LOAppBarBottomPageState createState() => _LOAppBarBottomPageState();
}

class _LOAppBarBottomPageState extends State<LOAppBarBottomPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar_bottom"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.cloud_done),
                text: "0",
              ),
              Tab(
                icon: Icon(Icons.cloud_download),
                text: "1",
              ),
              Tab(
                icon: Icon(Icons.cloud_upload),
                text: "2",
              ),
            ],
          ),
        ),
        body: new TabBarView(children: <Widget>[
          Container(
            child: Icon(Icons.cloud_done, size: 100),
            color: Colors.red,
          ),
          Container(
            child: Icon(Icons.cloud_download, size: 100),
            color: Colors.yellow,
          ),
          Container(
            child: Icon(Icons.cloud_upload, size: 100),
            color: Colors.orange,
          ),
        ]),
      ),
    );
  }
}
