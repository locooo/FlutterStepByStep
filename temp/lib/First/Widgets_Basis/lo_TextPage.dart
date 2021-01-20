import 'package:flutter/material.dart';

class LOTestTextPage extends StatelessWidget {
  const LOTestTextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Container(
        child: SafeArea(
          child: Text(
            "TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText",
            textAlign: TextAlign.center,
            maxLines: null,
            style: TextStyle(
              fontSize: 13,
              color: Colors.red,
              backgroundColor: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
