import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_request_model.freezed.dart';
part 'todo_request_model.g.dart';

@freezed
class TodoRequestModel with _$TodoRequestModel {
  const factory TodoRequestModel({
    String? todo,
    bool? completed,
    int? userId,
  }) = _TodoRequestModel;

  factory TodoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TodoRequestModelFromJson(json);
}
