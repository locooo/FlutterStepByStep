import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'mobx_counter.dart';

class LOMobxCounterChildPage extends StatelessWidget {
  const LOMobxCounterChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_mobx_child"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Observer(
                builder: (context) {
                  return Text("${counter1.mobxInt}");
                },
              ),
            ),
            TextButton(
              child: Text("+"),
              onPressed: () {
                counter1.mobXincrement();
              },
            ),
            TextButton(
              child: Text("-"),
              onPressed: () {
                counter1.mobXdecrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}
