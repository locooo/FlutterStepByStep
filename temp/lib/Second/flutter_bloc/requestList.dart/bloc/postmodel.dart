import 'package:equatable/equatable.dart';

class LOPostModel extends Equatable {
  final int id;
  final String title;
  final String body;
  const LOPostModel({this.id, this.title, this.body});

  @override
  List<Object> get props => [id, title, body];

  @override
  String toString() => 'Post { id: $id title:$title body:$body}';
}
