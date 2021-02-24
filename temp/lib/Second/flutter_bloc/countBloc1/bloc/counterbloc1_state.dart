part of 'counterbloc1_bloc.dart';

@immutable
abstract class Counterbloc1State extends Equatable {
  final int counter;
  const Counterbloc1State(this.counter);
  List<Object> get props => [counter];
}

class Counterbloc1Initial extends Counterbloc1State {
  const Counterbloc1Initial(int counter) : super(counter);
  @override
  String toString() => 'Counterbloc1Initial { Counterbloc1Initial: $counter }';
}

//+
class Counterbloc1StateIncrementState extends Counterbloc1State {
  const Counterbloc1StateIncrementState(int counter) : super(counter);
  @override
  String toString() =>
      'Counterbloc1StateIncrementState { Counterbloc1StateIncrementState: $counter }';
}

//-
class Counterbloc1StateDecrementState extends Counterbloc1State {
  const Counterbloc1StateDecrementState(int counter) : super(counter);
  @override
  String toString() =>
      'Counterbloc1StateDecrementState { Counterbloc1StateDecrementState: $counter }';
}

//0
class Counterbloc1StateResetState extends Counterbloc1State {
  const Counterbloc1StateResetState(int counter) : super(counter);
  @override
  String toString() =>
      'Counterbloc1StateResetState { Counterbloc1StateResetState: $counter }';
}
