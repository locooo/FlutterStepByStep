import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'lo_flutter_reduxState.dart';

//  * 需要将状态在App  root初始化

class LOreduxPage1 extends StatelessWidget {
  const LOreduxPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<LOReduxCountState, String>(
      converter: (store) => store.state.count.toString(),
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
