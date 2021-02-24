import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class LOCounterCubitPage extends StatelessWidget {
  const LOCounterCubitPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("CounterCubit"),
        ),
        body: Container(
          child: LOCounterCubitPageView(),
        ),
      ),
    );
  }
}

class LOCounterCubitPageView extends StatelessWidget {
  const LOCounterCubitPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text("$state");
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("+"),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("-"),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),
        ),
      ],
    );
  }
}
