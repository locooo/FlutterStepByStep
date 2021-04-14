import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'lo_scoped_model_SingleModel.dart';

class LOScopedModelSingleModelPage2 extends StatelessWidget {
  final LOScopedSingleModel? model;
  const LOScopedModelSingleModelPage2({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LOScopedModelSingleModelPage2"),
        ),
        body: ScopedModel<LOScopedSingleModel>(
          model: model!,
          child: ScopedModelDescendant<LOScopedSingleModel>(
            builder: (context, child, model) {
              return Text("${model.countInt}");
            },
          ),
        ));
  }
}
