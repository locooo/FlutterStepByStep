import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

import 'lo_scoped_model_SingleModel.dart';

class LOScopedModelSingleModelPage1 extends StatelessWidget {
  const LOScopedModelSingleModelPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countModel =
        ScopedModel.of<LOScopedSingleModel>(context, rebuildOnChange: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("LOScopedModelSingleModelPage2(传过来的gongxiangmodel)"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("${countModel.countInt}"),
            Center(
              child: new TextButton(
                  onPressed: () {
                    countModel.add();
                  },
                  // color: Colors.blue,
                  child: new Text("+")),
            ),
          ],
        ),
      ),
    );
  }
}
