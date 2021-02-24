part of 'postmodel_bloc.dart';

abstract class PostmodelState extends Equatable {
  const PostmodelState();

  @override
  List<Object> get props => [];
}

class PostmodelInitial extends PostmodelState {}

class PostmodelSuccessState extends PostmodelState {
  final List<LOPostModel> postModels;
  final bool hasReachedMax;
  const PostmodelSuccessState({this.postModels, this.hasReachedMax});

  PostmodelSuccessState copyWith({
    List<LOPostModel> postModels,
    bool hasReachedMax,
  }) {
    return PostmodelSuccessState(
      postModels: postModels ?? this.postModels,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [postModels, hasReachedMax];

  @override
  String toString() =>
      'PostmodelSuccessState { postModels: ${postModels.length}, hasReachedMax: $hasReachedMax }';
}

class PostmodelFailureState extends PostmodelState {}
