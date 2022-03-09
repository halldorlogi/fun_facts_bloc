// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoaderStateTearOff {
  const _$LoaderStateTearOff();

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

  _LoadInProgress<T> loadInProgress<T>() {
    return _LoadInProgress<T>();
  }

  _LoadSuccess<T> loadSuccess<T>(T result) {
    return _LoadSuccess<T>(
      result,
    );
  }

  _LoadFailure<T> loadFailure<T>(Exception error) {
    return _LoadFailure<T>(
      error,
    );
  }
}

/// @nodoc
const $LoaderState = _$LoaderStateTearOff();

/// @nodoc
mixin _$LoaderState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(T result) loadSuccess,
    required TResult Function(Exception error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderStateCopyWith<T, $Res> {
  factory $LoaderStateCopyWith(
          LoaderState<T> value, $Res Function(LoaderState<T>) then) =
      _$LoaderStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoaderStateCopyWithImpl<T, $Res>
    implements $LoaderStateCopyWith<T, $Res> {
  _$LoaderStateCopyWithImpl(this._value, this._then);

  final LoaderState<T> _value;
  // ignore: unused_field
  final $Res Function(LoaderState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res> extends _$LoaderStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'LoaderState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(T result) loadSuccess,
    required TResult Function(Exception error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoaderState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<T, $Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress<T> value, $Res Function(_LoadInProgress<T>) then) =
      __$LoadInProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<T, $Res>
    extends _$LoaderStateCopyWithImpl<T, $Res>
    implements _$LoadInProgressCopyWith<T, $Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress<T> _value, $Res Function(_LoadInProgress<T>) _then)
      : super(_value, (v) => _then(v as _LoadInProgress<T>));

  @override
  _LoadInProgress<T> get _value => super._value as _LoadInProgress<T>;
}

/// @nodoc

class _$_LoadInProgress<T> implements _LoadInProgress<T> {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'LoaderState<$T>.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(T result) loadSuccess,
    required TResult Function(Exception error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress<T> implements LoaderState<T> {
  const factory _LoadInProgress() = _$_LoadInProgress<T>;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<T, $Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess<T> value, $Res Function(_LoadSuccess<T>) then) =
      __$LoadSuccessCopyWithImpl<T, $Res>;
  $Res call({T result});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<T, $Res>
    extends _$LoaderStateCopyWithImpl<T, $Res>
    implements _$LoadSuccessCopyWith<T, $Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess<T> _value, $Res Function(_LoadSuccess<T>) _then)
      : super(_value, (v) => _then(v as _LoadSuccess<T>));

  @override
  _LoadSuccess<T> get _value => super._value as _LoadSuccess<T>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_LoadSuccess<T>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess<T> implements _LoadSuccess<T> {
  const _$_LoadSuccess(this.result);

  @override
  final T result;

  @override
  String toString() {
    return 'LoaderState<$T>.loadSuccess(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<T, _LoadSuccess<T>> get copyWith =>
      __$LoadSuccessCopyWithImpl<T, _LoadSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(T result) loadSuccess,
    required TResult Function(Exception error) loadFailure,
  }) {
    return loadSuccess(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
  }) {
    return loadSuccess?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess<T> implements LoaderState<T> {
  const factory _LoadSuccess(T result) = _$_LoadSuccess<T>;

  T get result;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<T, _LoadSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<T, $Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure<T> value, $Res Function(_LoadFailure<T>) then) =
      __$LoadFailureCopyWithImpl<T, $Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<T, $Res>
    extends _$LoaderStateCopyWithImpl<T, $Res>
    implements _$LoadFailureCopyWith<T, $Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure<T> _value, $Res Function(_LoadFailure<T>) _then)
      : super(_value, (v) => _then(v as _LoadFailure<T>));

  @override
  _LoadFailure<T> get _value => super._value as _LoadFailure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_LoadFailure<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_LoadFailure<T> implements _LoadFailure<T> {
  const _$_LoadFailure(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'LoaderState<$T>.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<T, _LoadFailure<T>> get copyWith =>
      __$LoadFailureCopyWithImpl<T, _LoadFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(T result) loadSuccess,
    required TResult Function(Exception error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(T result)? loadSuccess,
    TResult Function(Exception error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure<T> implements LoaderState<T> {
  const factory _LoadFailure(Exception error) = _$_LoadFailure<T>;

  Exception get error;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<T, _LoadFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
