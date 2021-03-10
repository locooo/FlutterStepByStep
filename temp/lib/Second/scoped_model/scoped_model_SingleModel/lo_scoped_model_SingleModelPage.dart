import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:temp/Second/scoped_model/scoped_model_SingleModel/lo_scoped_model_SingleModel.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOScopedModelSingleModelPage extends StatelessWidget {
  LOScopedModelSingleModelPage({Key key}) : super(key: key);

  final LOScopedSingleModel _model = LOScopedSingleModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scoped_Model(单模型)"),
      ),
      body: Container(
        height: 300,
        child: ScopedModel<LOScopedSingleModel>(
          model: _model,
          child: MaterialApp(
            home: ScopedModelDescendant<LOScopedSingleModel>(
                builder: (context, child, model) {
              return Column(
                children: <Widget>[
                  new Center(
                      child: new Center(
                          child: new Text(model.countInt.toString()))),
                  new Center(
                    child: new TextButton(
                        onPressed: () {
                          model.add();
                        },
                        // color: Colors.blue,
                        child: new Text("+")),
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          NavigatorUntil.push(context,
                              Routes.testLOScopedModelSingleModelPage1);
                        },
                        // color: Colors.blue,
                        child: new Text("共享给下一个页面(MaterialApp方式)")),
                  ),
                  new Center(
                    child: new TextButton(
                        onPressed: () {
                          NavigatorUntil.push(
                            context,
                            Routes.testLOScopedModelSingleModelPage2,
                            routeSettings: RouteSettings(
                              arguments: model,
                            ),
                          );
                        },
                        // color: Colors.blue,
                        child: new Text("共享给下一个页面(arguments传值方式)")),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
