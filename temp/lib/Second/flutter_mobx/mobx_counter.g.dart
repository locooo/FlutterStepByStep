// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LOMobxCounter on _LOMobxCounter, Store {
  final _$mobxIntAtom = Atom(name: '_LOMobxCounter.mobxInt');

  @override
  int get mobxInt {
    _$mobxIntAtom.reportRead();
    return super.mobxInt;
  }

  @override
  set mobxInt(int value) {
    _$mobxIntAtom.reportWrite(value, super.mobxInt, () {
      super.mobxInt = value;
    });
  }

  final _$_LOMobxCounterActionController =
      ActionController(name: '_LOMobxCounter');

  @override
  void mobXincrement() {
    final _$actionInfo = _$_LOMobxCounterActionController.startAction(
        name: '_LOMobxCounter.mobXincrement');
    try {
      return super.mobXincrement();
    } finally {
      _$_LOMobxCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mobXdecrement() {
    final _$actionInfo = _$_LOMobxCounterActionController.startAction(
        name: '_LOMobxCounter.mobXdecrement');
    try {
      return super.mobXdecrement();
    } finally {
      _$_LOMobxCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mobxInt: ${mobxInt}
    ''';
  }
}
