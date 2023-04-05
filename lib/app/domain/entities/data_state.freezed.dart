// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(T data) complete,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(T data)? complete,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(T data)? complete,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Pending<T> value) pending,
    required TResult Function(Complete<T> value) complete,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Pending<T> value)? pending,
    TResult? Function(Complete<T> value)? complete,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Pending<T> value)? pending,
    TResult Function(Complete<T> value)? complete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res, DataState<T>>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res, $Val extends DataState<T>>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<T, $Res> {
  factory _$$InitialCopyWith(
          _$Initial<T> value, $Res Function(_$Initial<T>) then) =
      __$$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$Initial<T>>
    implements _$$InitialCopyWith<T, $Res> {
  __$$InitialCopyWithImpl(
      _$Initial<T> _value, $Res Function(_$Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'DataState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(T data) complete,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(T data)? complete,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(T data)? complete,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Pending<T> value) pending,
    required TResult Function(Complete<T> value) complete,
    required TResult Function(Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Pending<T> value)? pending,
    TResult? Function(Complete<T> value)? complete,
    TResult? Function(Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Pending<T> value)? pending,
    TResult Function(Complete<T> value)? complete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements DataState<T> {
  const factory Initial() = _$Initial<T>;
}

/// @nodoc
abstract class _$$PendingCopyWith<T, $Res> {
  factory _$$PendingCopyWith(
          _$Pending<T> value, $Res Function(_$Pending<T>) then) =
      __$$PendingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PendingCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$Pending<T>>
    implements _$$PendingCopyWith<T, $Res> {
  __$$PendingCopyWithImpl(
      _$Pending<T> _value, $Res Function(_$Pending<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Pending<T> implements Pending<T> {
  const _$Pending();

  @override
  String toString() {
    return 'DataState<$T>.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Pending<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(T data) complete,
    required TResult Function(Failure failure) error,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(T data)? complete,
    TResult? Function(Failure failure)? error,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(T data)? complete,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Pending<T> value) pending,
    required TResult Function(Complete<T> value) complete,
    required TResult Function(Error<T> value) error,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Pending<T> value)? pending,
    TResult? Function(Complete<T> value)? complete,
    TResult? Function(Error<T> value)? error,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Pending<T> value)? pending,
    TResult Function(Complete<T> value)? complete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class Pending<T> implements DataState<T> {
  const factory Pending() = _$Pending<T>;
}

/// @nodoc
abstract class _$$CompleteCopyWith<T, $Res> {
  factory _$$CompleteCopyWith(
          _$Complete<T> value, $Res Function(_$Complete<T>) then) =
      __$$CompleteCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CompleteCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$Complete<T>>
    implements _$$CompleteCopyWith<T, $Res> {
  __$$CompleteCopyWithImpl(
      _$Complete<T> _value, $Res Function(_$Complete<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Complete<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Complete<T> implements Complete<T> {
  const _$Complete(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.complete(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Complete<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteCopyWith<T, _$Complete<T>> get copyWith =>
      __$$CompleteCopyWithImpl<T, _$Complete<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(T data) complete,
    required TResult Function(Failure failure) error,
  }) {
    return complete(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(T data)? complete,
    TResult? Function(Failure failure)? error,
  }) {
    return complete?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(T data)? complete,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Pending<T> value) pending,
    required TResult Function(Complete<T> value) complete,
    required TResult Function(Error<T> value) error,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Pending<T> value)? pending,
    TResult? Function(Complete<T> value)? complete,
    TResult? Function(Error<T> value)? error,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Pending<T> value)? pending,
    TResult Function(Complete<T> value)? complete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class Complete<T> implements DataState<T> {
  const factory Complete(final T data) = _$Complete<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$CompleteCopyWith<T, _$Complete<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, $Res> {
  factory _$$ErrorCopyWith(_$Error<T> value, $Res Function(_$Error<T>) then) =
      __$$ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$Error<T>>
    implements _$$ErrorCopyWith<T, $Res> {
  __$$ErrorCopyWithImpl(_$Error<T> _value, $Res Function(_$Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$Error<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$Error<T> implements Error<T> {
  const _$Error(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DataState<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      __$$ErrorCopyWithImpl<T, _$Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(T data) complete,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(T data)? complete,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(T data)? complete,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Pending<T> value) pending,
    required TResult Function(Complete<T> value) complete,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Pending<T> value)? pending,
    TResult? Function(Complete<T> value)? complete,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Pending<T> value)? pending,
    TResult Function(Complete<T> value)? complete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements DataState<T> {
  const factory Error(final Failure failure) = _$Error<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
