import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOSetStatePage extends StatefulWidget {
  LOSetStatePage({Key key}) : super(key: key);

  @override
  _LOSetStatePageState createState() => _LOSetStatePageState();
}

class _LOSetStatePageState extends State<LOSetStatePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setState"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${this.count}"),
            TextButton(
              child: Text("点击数字增加"),
              onPressed: () {
                setState(() {
                  this.count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
