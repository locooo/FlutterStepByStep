part of 'counterbloc1_bloc.dart';

@immutable
abstract class Counterbloc1Event extends Equatable {
  const Counterbloc1Event();
  @override
  List<Object> get props => [];
}

//+
class Counterbloc1Inscrement extends Counterbloc1Event {
  // final int count;
  // const Counterbloc1Inscrement(this.count);
  // @override
  // List<Object> get props => [count];
}

//-
class Counterbloc1Descrement extends Counterbloc1Event {
  // final int count;
  // const Counterbloc1Descrement(this.count);
  // @override
  // List<Object> get props => [count];
}

//0
class Counterbloc1Reset extends Counterbloc1Event {}
