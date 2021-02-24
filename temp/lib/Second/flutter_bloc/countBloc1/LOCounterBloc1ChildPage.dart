import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counterbloc1_bloc.dart';

class LOCounterBloc1ChildPage extends StatelessWidget {
  const LOCounterBloc1ChildPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("上个页面共享的Bloc"),
      ),
      body: Center(
        child: BlocProvider<Counterbloc1Bloc>(
          create: (context) => BlocProvider.of<Counterbloc1Bloc>(context),
          child: Column(
            children: [
              BlocBuilder<Counterbloc1Bloc, Counterbloc1State>(
                builder: (context, state) {
                  print("${state.runtimeType}");
                  return Text("${state.counter}");
                },
              ),
              TextButton(
                child: Text("+"),
                onPressed: () {
                  BlocProvider.of<Counterbloc1Bloc>(context)
                      .add(Counterbloc1Inscrement());
                  // context.read<Counterbloc1Bloc>().add(Counterbloc1Inscrement());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
