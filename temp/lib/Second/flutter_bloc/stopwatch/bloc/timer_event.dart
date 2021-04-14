part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStartEvent extends TimerEvent {
  final int duration;
  const TimerStartEvent({required this.duration});
  @override
  String toString() => "TimerStarted { duration: $duration }";
}

class TimePauseEvent extends TimerEvent {}

class TimeResumedEvent extends TimerEvent {}

class TimeResetEvent extends TimerEvent {}

class TimeTickedEvent extends TimerEvent {
  final int duration;
  const TimeTickedEvent({required this.duration});
  @override
  List<Object> get props => [duration];
  @override
  String toString() => "TimerTicked { duration: $duration }";
}
