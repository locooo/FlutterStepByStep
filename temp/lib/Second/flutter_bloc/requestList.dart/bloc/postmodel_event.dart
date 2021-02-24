part of 'postmodel_bloc.dart';

abstract class PostmodelEvent extends Equatable {
  const PostmodelEvent();

  @override
  List<Object> get props => [];
}

//bloc 接收event事件 并转成state状态
class PostModelFetchedEvent extends PostmodelEvent {}
