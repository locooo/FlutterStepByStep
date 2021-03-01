import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temp/Second/flutter_redux/lo_flutter_reduxState.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOReduxPage extends StatelessWidget {
  LOReduxPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Store<LOReduxCountState>(counterReducer,
        initialState: LOReduxCountState(0));
    return LOFlutterReduxPage(
      store: store,
    );
  }
}

class LOFlutterReduxPage extends StatelessWidget {
  const LOFlutterReduxPage({Key key, this.store}) : super(key: key);
  final Store<LOReduxCountState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<LOReduxCountState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("222"),
          ),
          body: Column(
            children: [
              Container(
                child: Text("${store.state.count}"),
              ),
              StoreConnector<LOReduxCountState, String>(
                converter: (store) => store.state.count.toString(),
                builder: (context, count) {
                  return Text(count);
                },
              ),
              TextButton(
                child: Text("+"),
                onPressed: () {
                  store.dispatch(LOReduxCountAction.increment);
                },
              ),
              TextButton(
                child: Text("jump"),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LOreduxPage1(),
                  //   ),
                  // );
                  NavigatorUntil.push(context, Routes.testLOreduxPage1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
