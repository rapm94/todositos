// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoResponse _$$_TodoResponseFromJson(Map<String, dynamic> json) =>
    _$_TodoResponse(
      todos: (json['todos'] as List<dynamic>?)
          ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_TodoResponseToJson(_$_TodoResponse instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
