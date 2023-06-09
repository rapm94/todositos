import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<Value, Error extends Exception>
    with _$RequestState<Value, Error> {
  const factory RequestState.initial() = RequestStateInitial<Value, Error>;

  const factory RequestState.loading({Value? resultMaybe}) =
      RequestStateLoading<Value, Error>;

  const factory RequestState.success(Value result) =
      RequestStateSuccess<Value, Error>;

  const factory RequestState.failure(Error error) =
      RequestStateFailure<Value, Error>;
}

extension IsLoading<Value, Error extends Exception>
    on RequestState<Value, Error> {
  bool get isInitial => maybeMap(orElse: () => false, initial: (_) => true);
  bool get isLoading => maybeMap(orElse: () => false, loading: (_) => true);
  bool get isSuccess => maybeMap(orElse: () => false, success: (_) => true);
  bool get isFailure => maybeMap(orElse: () => false, failure: (_) => true);

  Value? get value =>
      maybeWhen(orElse: () => null, success: (result) => result);

  Exception? get error =>
      maybeWhen(orElse: () => null, failure: (error) => error);
}
