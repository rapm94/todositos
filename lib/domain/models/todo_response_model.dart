import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todositos/domain/models/todo_model.dart';

part 'todo_response_model.freezed.dart';
part 'todo_response_model.g.dart';

@freezed
class TodoResponse with _$TodoResponse {
  const factory TodoResponse({
    List<Todo>? todos,
    int? total,
    int? skip,
    int? limit,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}
