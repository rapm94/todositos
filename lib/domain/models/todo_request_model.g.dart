// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoRequestModel _$$_TodoRequestModelFromJson(Map<String, dynamic> json) =>
    _$_TodoRequestModel(
      todo: json['todo'] as String?,
      completed: json['completed'] as bool?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$_TodoRequestModelToJson(_$_TodoRequestModel instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
