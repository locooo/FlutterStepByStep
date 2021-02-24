import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'package:temp/Second/flutter_bloc/requestList.dart/bloc/postmodel.dart';
part 'postmodel_event.dart';
part 'postmodel_state.dart';

class PostmodelBloc extends Bloc<PostmodelEvent, PostmodelState> {
  final http.Client httpClient;
  PostmodelBloc({@required this.httpClient}) : super(PostmodelInitial());

  @override
  Stream<PostmodelState> mapEventToState(
    PostmodelEvent event,
  ) async* {
    // if (event is PostmodelInitial) {

    // }else if(event is PostModelFetched){

    // }
    final currentState = state;
    if (event is PostModelFetchedEvent && !_hasReachedMax(currentState)) {
      try {
        if (currentState is PostmodelInitial) {
          final posts = await _fetchPosts(0, 20);
          yield PostmodelSuccessState(postModels: posts, hasReachedMax: false);
          return;
        }
        if (currentState is PostmodelSuccessState) {
          final posts = await _fetchPosts(currentState.postModels.length, 20);
          yield posts.isEmpty
              ? currentState.copyWith(hasReachedMax: true)
              : PostmodelSuccessState(
                  postModels: currentState.postModels + posts,
                  hasReachedMax: false,
                );
        }
      } catch (_) {
        yield PostmodelFailureState();
      }
    }
  }

  bool _hasReachedMax(PostmodelState state) {
    return ((state is PostmodelSuccessState) && state.hasReachedMax);
  }

  Future<List<LOPostModel>> _fetchPosts(int startIndex, int limit) async {
    final response = await httpClient.get(
        'https://jsonplaceholder.typicode.com/posts?_start=$startIndex&_limit=$limit');
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data.map((rawPost) {
        return LOPostModel(
          id: rawPost['id'],
          title: rawPost['title'],
          body: rawPost['body'],
        );
      }).toList();
    } else {
      throw Exception('error fetching posts');
    }
  }

  @override
  Stream<Transition<PostmodelEvent, PostmodelState>> transformEvents(
    Stream<PostmodelEvent> events,
    TransitionFunction<PostmodelEvent, PostmodelState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }
}
