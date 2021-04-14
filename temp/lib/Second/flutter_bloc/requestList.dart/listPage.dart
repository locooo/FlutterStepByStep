import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'bloc/postmodel.dart';
import 'bloc/postmodel_bloc.dart';

class LOListPage extends StatelessWidget {
  const LOListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostmodelBloc(httpClient: http.Client())
        ..add(PostModelFetchedEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("CounterBloc1"),
        ),
        body: Container(
          child: LOPostmodelView(),
        ),
      ),
    );
  }
}

class LOPostmodelView extends StatefulWidget {
  @override
  _LOPostmodelViewState createState() => _LOPostmodelViewState();
}

class _LOPostmodelViewState extends State<LOPostmodelView> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  late PostmodelBloc _postBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _postBloc = BlocProvider.of<PostmodelBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostmodelBloc, PostmodelState>(
      builder: (context, state) {
        if (state is PostmodelInitial) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PostmodelFailureState) {
          return Center(
            child: Text('failed to fetch posts'),
          );
        }
        if (state is PostmodelSuccessState) {
          if (state.postModels!.isEmpty) {
            return Center(
              child: Text('no posts'),
            );
          }
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return index >= state.postModels!.length
                  ? BottomLoader()
                  : PostWidget(post: state.postModels![index]);
            },
            itemCount: state.hasReachedMax!
                ? state.postModels!.length
                : state.postModels!.length + 1,
            controller: _scrollController,
          );
        }
        return Center();
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _postBloc.add(PostModelFetchedEvent());
    }
  }
}

class PostWidget extends StatelessWidget {
  final LOPostModel post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '${post.id}',
        style: TextStyle(fontSize: 10.0),
      ),
      title: Text(post.title!),
      isThreeLine: true,
      subtitle: Text(post.body!),
      dense: true,
    );
  }
}

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: SizedBox(
          width: 33,
          height: 33,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
          ),
        ),
      ),
    );
  }
}
