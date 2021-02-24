import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp/Second/flutter_bloc/stopwatch/bloc/timer_bloc.dart';
import '../ticket.dart';

class LOTimerPage extends StatelessWidget {
  const LOTimerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerBloc(ticker: Ticker()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("TimerBloc"),
        ),
        body: Timer(),
      ),
    );
  }
}

class Timer extends StatelessWidget {
  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 100.0),
          child: Center(
            child: BlocBuilder<TimerBloc, TimerState>(
              builder: (context, state) {
                // final String minutesStr = ((state.duration / 60) % 60)
                //     .floor()
                //     .toString()
                //     .padLeft(2, '0');
                // final String secondsStr =
                //     (state.duration % 60).floor().toString().padLeft(2, '0');
                // return Text(
                //   '$minutesStr:$secondsStr',
                //   style: Timer.timerTextStyle,
                // );
                return Text(
                  '${state.duration}',
                  style: Timer.timerTextStyle,
                );
              },
            ),
          ),
        ),
        BlocBuilder<TimerBloc, TimerState>(
          buildWhen: (previousState, state) =>
              state.runtimeType != previousState.runtimeType,
          builder: (context, state) => Actions(),
        ),
      ],
    );
  }
}

class Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _mapStateToActionButtons(
        timerBloc: BlocProvider.of<TimerBloc>(context),
      ),
    );
  }

  List<Widget> _mapStateToActionButtons({
    TimerBloc timerBloc,
  }) {
    final TimerState currentState = timerBloc.state;
    if (currentState is TimerInitial) {
      return [
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          heroTag: 'TimerInitial',
          onPressed: () =>
              timerBloc.add(TimerStartEvent(duration: currentState.duration)),
        ),
      ];
    }
    if (currentState is TimerRunInProgressState) {
      return [
        FloatingActionButton(
          child: Icon(Icons.pause),
          heroTag: 'TimerRunInProgressState',
          onPressed: () => timerBloc.add(TimePauseEvent()),
        ),
        FloatingActionButton(
          child: Icon(Icons.replay),
          heroTag: 'TimerRunInProgressState1',
          onPressed: () => timerBloc.add(TimeResetEvent()),
        ),
      ];
    }
    if (currentState is TimerRunPauseState) {
      return [
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          heroTag: 'TimerRunPauseState',
          onPressed: () => timerBloc.add(TimeResumedEvent()),
        ),
        FloatingActionButton(
          child: Icon(Icons.replay),
          heroTag: 'TimerRunPauseState1',
          onPressed: () => timerBloc.add(TimeResetEvent()),
        ),
      ];
    }
    if (currentState is TimerRunCompleteState) {
      return [
        FloatingActionButton(
          child: Icon(Icons.replay),
          heroTag: 'TimerRunCompleteState',
          onPressed: () => timerBloc.add(TimeResetEvent()),
        ),
      ];
    }
    return [];
  }
}
