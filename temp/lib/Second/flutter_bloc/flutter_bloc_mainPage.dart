import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

import 'bloc/counter_event.dart';
import 'bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp/Second/flutter_bloc/stopwatch/bloc/timePage.dart';

import 'bloc_obsever.dart';
import 'cubit/counterCubit/cubit/counter_cubit_page.dart';
import 'requestList.dart/listPage.dart';

class LOFlutterBlocMainFaPage extends StatelessWidget {
  const LOFlutterBlocMainFaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: LOFlutterBlocMainPage(),
    );
  }
}

class LOFlutterBlocMainPage extends StatefulWidget {
  LOFlutterBlocMainPage({Key? key}) : super(key: key);

  @override
  _LOFlutterBlocMainPageState createState() => _LOFlutterBlocMainPageState();
}

class _LOFlutterBlocMainPageState extends State<LOFlutterBlocMainPage> {
  late CounterBloc _counterBloc;

  void _incrementCounter() {
    _counterBloc.add(CounterEvent.increment);
  }

  @override
  void initState() {
    super.initState();
    Bloc.observer = LOBlocObsever();
  }

  @override
  void dispose() {
    _counterBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterBlocMain"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                },
              ),
              TextButton(
                child: Text("cubit"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LOCounterCubitPage();
                      },
                    ),
                  );
                },
              ),
              TextButton(
                child: Text("Jump_counterbloc1_bloc"),
                onPressed: () {
                  NavigatorUntil.push(context, Routes.testLOCounterBloc1Page);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return LOCounterBloc1Page();
                  //     },
                  //   ),
                  // );
                },
              ),
              TextButton(
                child: Text("Jump_timerPage"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LOTimerPage();
                      },
                    ),
                  );
                },
              ),
              TextButton(
                child: Text("Jump_listPage"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LOListPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        heroTag: 'LOFlutterBlocMainFaPage',
      ),
    );
  }
}
