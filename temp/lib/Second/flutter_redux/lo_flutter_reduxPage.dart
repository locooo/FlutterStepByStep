import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temp/Second/Fluro_Use/lo_FluroPushAndPopPage1.dart';
import 'package:temp/Second/flutter_redux/lo_flutter_reduxPage1.dart';
import 'package:temp/Second/flutter_redux/lo_flutter_reduxState.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOReduxPage extends StatelessWidget {
  LOReduxPage({Key key}) : super(key: key);
  final store = Store<int>(counterReducer, initialState: 0);
  @override
  Widget build(BuildContext context) {
    return LOFlutterReduxPage(store: store);
  }
}

class LOFlutterReduxPage extends StatelessWidget {
  const LOFlutterReduxPage({Key key, this.store}) : super(key: key);
  final Store<int> store;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoreProvider<int>(
        store: store,
        child: Scaffold(
          appBar: AppBar(
            title: Text("222"),
          ),
          body: Column(
            children: [
              Container(
                child: Text("${store.state}"),
              ),
              StoreConnector<int, String>(
                converter: (store) => store.state.toString(),
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

    // StoreProvider<int>(
    //   store: store,
    //   child: MaterialApp(
    //     home: Scaffold(
    //       appBar: AppBar(
    //         title: Text("222"),
    //       ),
    //       body: Column(
    //         children: [
    //           Container(
    //             child: Text("${store.state}"),
    //           ),
    //           StoreConnector<int, String>(
    //             converter: (store) => store.state.toString(),
    //             builder: (context, count) {
    //               return Text(count);
    //             },
    //           ),
    //           TextButton(
    //             child: Text("+"),
    //             onPressed: () {
    //               store.dispatch(LOReduxCountAction.increment);
    //             },
    //           ),
    //           TextButton(
    //             child: Text("jump"),
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => LOreduxPage1(),
    //                 ),
    //               );
    //               // NavigatorUntil.push(context, Routes.testLOreduxPage1);
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
