// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoRequestModel _$TodoRequestModelFromJson(Map<String, dynamic> json) {
  return _TodoRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TodoRequestModel {
  String? get todo => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoRequestModelCopyWith<TodoRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoRequestModelCopyWith<$Res> {
  factory $TodoRequestModelCopyWith(
          TodoRequestModel value, $Res Function(TodoRequestModel) then) =
      _$TodoRequestModelCopyWithImpl<$Res, TodoRequestModel>;
  @useResult
  $Res call({String? todo, bool? completed, int? userId});
}

/// @nodoc
class _$TodoRequestModelCopyWithImpl<$Res, $Val extends TodoRequestModel>
    implements $TodoRequestModelCopyWith<$Res> {
  _$TodoRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
    Object? completed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoRequestModelCopyWith<$Res>
    implements $TodoRequestModelCopyWith<$Res> {
  factory _$$_TodoRequestModelCopyWith(
          _$_TodoRequestModel value, $Res Function(_$_TodoRequestModel) then) =
      __$$_TodoRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? todo, bool? completed, int? userId});
}

/// @nodoc
class __$$_TodoRequestModelCopyWithImpl<$Res>
    extends _$TodoRequestModelCopyWithImpl<$Res, _$_TodoRequestModel>
    implements _$$_TodoRequestModelCopyWith<$Res> {
  __$$_TodoRequestModelCopyWithImpl(
      _$_TodoRequestModel _value, $Res Function(_$_TodoRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
    Object? completed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_TodoRequestModel(
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoRequestModel implements _TodoRequestModel {
  const _$_TodoRequestModel({this.todo, this.completed, this.userId});

  factory _$_TodoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_TodoRequestModelFromJson(json);

  @override
  final String? todo;
  @override
  final bool? completed;
  @override
  final int? userId;

  @override
  String toString() {
    return 'TodoRequestModel(todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoRequestModel &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todo, completed, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoRequestModelCopyWith<_$_TodoRequestModel> get copyWith =>
      __$$_TodoRequestModelCopyWithImpl<_$_TodoRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoRequestModelToJson(
      this,
    );
  }
}

abstract class _TodoRequestModel implements TodoRequestModel {
  const factory _TodoRequestModel(
      {final String? todo,
      final bool? completed,
      final int? userId}) = _$_TodoRequestModel;

  factory _TodoRequestModel.fromJson(Map<String, dynamic> json) =
      _$_TodoRequestModel.fromJson;

  @override
  String? get todo;
  @override
  bool? get completed;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TodoRequestModelCopyWith<_$_TodoRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
