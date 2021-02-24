import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../ticket.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  StreamSubscription<int> _tickerSubscription;
  static const int _duration = 59;
  TimerBloc({@required Ticker ticker})
      : assert(ticker != null),
        _ticker = ticker,
        super(TimerInitial(_duration));

  @override
  Stream<TimerState> mapEventToState(
    TimerEvent event,
  ) async* {
    if (event is TimerStartEvent) {
      yield* _mapTimerStartedToState(event);
    } else if (event is TimeTickedEvent) {
      yield* _mapTimerTickedToState(event);
    } else if (event is TimePauseEvent) {
      yield* _mapTimerPausedToState(event);
    } else if (event is TimeResumedEvent) {
      yield* _mapTimerResumedToState(event);
    } else if (event is TimeResetEvent) {
      yield* _mapTimerResetToState(event);
    }
    // TODO: implement mapEventToState
  }

  @override
  void onTransition(Transition<TimerEvent, TimerState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  Stream<TimerState> _mapTimerStartedToState(TimerStartEvent start) async* {
    yield TimerRunInProgressState(start.duration);
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: start.duration).listen(
      (duration) {
        add(TimeTickedEvent(duration: duration));
      },
    );
  }

  Stream<TimerState> _mapTimerTickedToState(TimeTickedEvent tick) async* {
    yield tick.duration > 0
        ? TimerRunInProgressState(tick.duration)
        : TimerRunCompleteState();
  }

  Stream<TimerState> _mapTimerPausedToState(TimePauseEvent pause) async* {
    if (state is TimerRunInProgressState) {
      _tickerSubscription?.pause();
      yield TimerRunPauseState(state.duration);
    }
  }

  Stream<TimerState> _mapTimerResumedToState(TimeResumedEvent resume) async* {
    if (state is TimerRunPauseState) {
      _tickerSubscription?.resume();
      yield TimerRunInProgressState(state.duration);
    }
  }

  Stream<TimerState> _mapTimerResetToState(TimeResetEvent reset) async* {
    _tickerSubscription?.cancel();
    yield TimerInitial(_duration);
  }
}
