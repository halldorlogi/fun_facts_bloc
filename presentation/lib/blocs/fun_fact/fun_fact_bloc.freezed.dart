// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fun_fact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FunFactEventTearOff {
  const _$FunFactEventTearOff();

  _DidTapButtonEvent didTapButton() {
    return const _DidTapButtonEvent();
  }
}

/// @nodoc
const $FunFactEvent = _$FunFactEventTearOff();

/// @nodoc
mixin _$FunFactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() didTapButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? didTapButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? didTapButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DidTapButtonEvent value) didTapButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DidTapButtonEvent value)? didTapButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DidTapButtonEvent value)? didTapButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunFactEventCopyWith<$Res> {
  factory $FunFactEventCopyWith(
          FunFactEvent value, $Res Function(FunFactEvent) then) =
      _$FunFactEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FunFactEventCopyWithImpl<$Res> implements $FunFactEventCopyWith<$Res> {
  _$FunFactEventCopyWithImpl(this._value, this._then);

  final FunFactEvent _value;
  // ignore: unused_field
  final $Res Function(FunFactEvent) _then;
}

/// @nodoc
abstract class _$DidTapButtonEventCopyWith<$Res> {
  factory _$DidTapButtonEventCopyWith(
          _DidTapButtonEvent value, $Res Function(_DidTapButtonEvent) then) =
      __$DidTapButtonEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$DidTapButtonEventCopyWithImpl<$Res>
    extends _$FunFactEventCopyWithImpl<$Res>
    implements _$DidTapButtonEventCopyWith<$Res> {
  __$DidTapButtonEventCopyWithImpl(
      _DidTapButtonEvent _value, $Res Function(_DidTapButtonEvent) _then)
      : super(_value, (v) => _then(v as _DidTapButtonEvent));

  @override
  _DidTapButtonEvent get _value => super._value as _DidTapButtonEvent;
}

/// @nodoc

class _$_DidTapButtonEvent implements _DidTapButtonEvent {
  const _$_DidTapButtonEvent();

  @override
  String toString() {
    return 'FunFactEvent.didTapButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DidTapButtonEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() didTapButton,
  }) {
    return didTapButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? didTapButton,
  }) {
    return didTapButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? didTapButton,
    required TResult orElse(),
  }) {
    if (didTapButton != null) {
      return didTapButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DidTapButtonEvent value) didTapButton,
  }) {
    return didTapButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DidTapButtonEvent value)? didTapButton,
  }) {
    return didTapButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DidTapButtonEvent value)? didTapButton,
    required TResult orElse(),
  }) {
    if (didTapButton != null) {
      return didTapButton(this);
    }
    return orElse();
  }
}

abstract class _DidTapButtonEvent implements FunFactEvent {
  const factory _DidTapButtonEvent() = _$_DidTapButtonEvent;
}

/// @nodoc
class _$FunFactStateTearOff {
  const _$FunFactStateTearOff();

  _FunFactState call({required FunFact? fact}) {
    return _FunFactState(
      fact: fact,
    );
  }
}

/// @nodoc
const $FunFactState = _$FunFactStateTearOff();

/// @nodoc
mixin _$FunFactState {
  FunFact? get fact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FunFactStateCopyWith<FunFactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunFactStateCopyWith<$Res> {
  factory $FunFactStateCopyWith(
          FunFactState value, $Res Function(FunFactState) then) =
      _$FunFactStateCopyWithImpl<$Res>;
  $Res call({FunFact? fact});

  $FunFactCopyWith<$Res>? get fact;
}

/// @nodoc
class _$FunFactStateCopyWithImpl<$Res> implements $FunFactStateCopyWith<$Res> {
  _$FunFactStateCopyWithImpl(this._value, this._then);

  final FunFactState _value;
  // ignore: unused_field
  final $Res Function(FunFactState) _then;

  @override
  $Res call({
    Object? fact = freezed,
  }) {
    return _then(_value.copyWith(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as FunFact?,
    ));
  }

  @override
  $FunFactCopyWith<$Res>? get fact {
    if (_value.fact == null) {
      return null;
    }

    return $FunFactCopyWith<$Res>(_value.fact!, (value) {
      return _then(_value.copyWith(fact: value));
    });
  }
}

/// @nodoc
abstract class _$FunFactStateCopyWith<$Res>
    implements $FunFactStateCopyWith<$Res> {
  factory _$FunFactStateCopyWith(
          _FunFactState value, $Res Function(_FunFactState) then) =
      __$FunFactStateCopyWithImpl<$Res>;
  @override
  $Res call({FunFact? fact});

  @override
  $FunFactCopyWith<$Res>? get fact;
}

/// @nodoc
class __$FunFactStateCopyWithImpl<$Res> extends _$FunFactStateCopyWithImpl<$Res>
    implements _$FunFactStateCopyWith<$Res> {
  __$FunFactStateCopyWithImpl(
      _FunFactState _value, $Res Function(_FunFactState) _then)
      : super(_value, (v) => _then(v as _FunFactState));

  @override
  _FunFactState get _value => super._value as _FunFactState;

  @override
  $Res call({
    Object? fact = freezed,
  }) {
    return _then(_FunFactState(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as FunFact?,
    ));
  }
}

/// @nodoc

class _$_FunFactState implements _FunFactState {
  const _$_FunFactState({required this.fact});

  @override
  final FunFact? fact;

  @override
  String toString() {
    return 'FunFactState(fact: $fact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunFactState &&
            const DeepCollectionEquality().equals(other.fact, fact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fact));

  @JsonKey(ignore: true)
  @override
  _$FunFactStateCopyWith<_FunFactState> get copyWith =>
      __$FunFactStateCopyWithImpl<_FunFactState>(this, _$identity);
}

abstract class _FunFactState implements FunFactState {
  const factory _FunFactState({required FunFact? fact}) = _$_FunFactState;

  @override
  FunFact? get fact;
  @override
  @JsonKey(ignore: true)
  _$FunFactStateCopyWith<_FunFactState> get copyWith =>
      throw _privateConstructorUsedError;
}
