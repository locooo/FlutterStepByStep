import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LOreduxPage1 extends StatelessWidget {
  const LOreduxPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<int, String>(
      converter: (store) => store.state.toString(),
      builder: (context, count) {
        return Scaffold(
            appBar: AppBar(
              title: Text("LOreduxPage1"),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Text(
                  count,
                ),
              ),
            ));
      },
    );
  }
}
