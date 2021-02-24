import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counterbloc1_event.dart';
part 'counterbloc1_state.dart';

class Counterbloc1Bloc extends Bloc<Counterbloc1Event, Counterbloc1State> {
  Counterbloc1Bloc() : super(Counterbloc1Initial(1));

  @override
  Stream<Counterbloc1State> mapEventToState(Counterbloc1Event event) async* {
    if (event is Counterbloc1Inscrement) {
      yield Counterbloc1StateIncrementState(state.counter + 2);
    } else if (event is Counterbloc1Descrement) {
      yield Counterbloc1StateDecrementState(state.counter - 1);
    } else {
      yield Counterbloc1StateResetState(1000);
    }
  }
}
