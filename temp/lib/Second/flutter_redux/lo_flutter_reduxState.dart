// State中所有属性都应该是只读的
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class LOReduxCountState {
  final int? _count;
  get count => _count;
  LOReduxCountState(this._count);
  LOReduxCountState.initState() : _count = 0;
}

// 定义操作该State的全部Action 这里只有增加count一个动作
enum LOReduxCountAction { increment }

//reducer会根据传进来的action生成新的CountState
LOReduxCountState counterReducer(LOReduxCountState state, action) {
  //匹配Action
  if (action == LOReduxCountAction.increment) {
    return LOReduxCountState(state.count + 1);
  }
  return LOReduxCountState(state.count);
}
