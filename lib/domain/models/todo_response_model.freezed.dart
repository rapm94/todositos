// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return _TodoResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoResponse {
  List<Todo>? get todos => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponseCopyWith<TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseCopyWith<$Res> {
  factory $TodoResponseCopyWith(
          TodoResponse value, $Res Function(TodoResponse) then) =
      _$TodoResponseCopyWithImpl<$Res, TodoResponse>;
  @useResult
  $Res call({List<Todo>? todos, int? total, int? skip, int? limit});
}

/// @nodoc
class _$TodoResponseCopyWithImpl<$Res, $Val extends TodoResponse>
    implements $TodoResponseCopyWith<$Res> {
  _$TodoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoResponseCopyWith<$Res>
    implements $TodoResponseCopyWith<$Res> {
  factory _$$_TodoResponseCopyWith(
          _$_TodoResponse value, $Res Function(_$_TodoResponse) then) =
      __$$_TodoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo>? todos, int? total, int? skip, int? limit});
}

/// @nodoc
class __$$_TodoResponseCopyWithImpl<$Res>
    extends _$TodoResponseCopyWithImpl<$Res, _$_TodoResponse>
    implements _$$_TodoResponseCopyWith<$Res> {
  __$$_TodoResponseCopyWithImpl(
      _$_TodoResponse _value, $Res Function(_$_TodoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_TodoResponse(
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoResponse implements _TodoResponse {
  const _$_TodoResponse(
      {final List<Todo>? todos, this.total, this.skip, this.limit})
      : _todos = todos;

  factory _$_TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TodoResponseFromJson(json);

  final List<Todo>? _todos;
  @override
  List<Todo>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'TodoResponse(todos: $todos, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoResponse &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      __$$_TodoResponseCopyWithImpl<_$_TodoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoResponseToJson(
      this,
    );
  }
}

abstract class _TodoResponse implements TodoResponse {
  const factory _TodoResponse(
      {final List<Todo>? todos,
      final int? total,
      final int? skip,
      final int? limit}) = _$_TodoResponse;

  factory _TodoResponse.fromJson(Map<String, dynamic> json) =
      _$_TodoResponse.fromJson;

  @override
  List<Todo>? get todos;
  @override
  int? get total;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
