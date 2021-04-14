import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LOFluroPushAndPopPage3 extends StatefulWidget {
  final String? receivedString;
  LOFluroPushAndPopPage3({Key? key, this.receivedString}) : super(key: key);

  @override
  _LOFluroPushAndPopPage3State createState() => _LOFluroPushAndPopPage3State();
}

class _LOFluroPushAndPopPage3State extends State<LOFluroPushAndPopPage3> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("FluroPushAndPopPage3"),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Text("我是上个页面传递过来的值:${widget.receivedString}")
              // Text("我是上个页面传递过来的值:")
            ],
          ),
        ),
      ),
    );
  }
}
