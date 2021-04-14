import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOPaddingPage extends StatefulWidget {
  LOPaddingPage({Key? key}) : super(key: key);

  @override
  _LOPaddingPageState createState() => _LOPaddingPageState();
}

class _LOPaddingPageState extends State<LOPaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Container(height: 30, width: 30, color: Colors.red),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Container(height: 30, width: 30, color: Colors.purple),
          ),
          Container(height: 30, width: 30, color: Colors.red),
          Container(height: 30, width: 30, color: Colors.red),
          Container(height: 30, width: 30, color: Colors.red),
          Container(height: 30, width: 30, color: Colors.red),
          Container(height: 30, width: 30, color: Colors.red),
        ],
      ),
    );
  }
}
