part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);
  @override
  List<Object> get props => [duration];
}

//初始化
class TimerInitial extends TimerState {
  TimerInitial(int duration) : super(duration);
}

//暂停
class TimerRunPauseState extends TimerState {
  TimerRunPauseState(int duration) : super(duration);
}

//倒计时进行中
class TimerRunInProgressState extends TimerState {
  TimerRunInProgressState(int duration) : super(duration);
  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

//结束
class TimerRunCompleteState extends TimerState {
  TimerRunCompleteState() : super(0);
}
