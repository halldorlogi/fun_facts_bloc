// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fun_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FunFact _$FunFactFromJson(Map<String, dynamic> json) {
  return _FunFact.fromJson(json);
}

/// @nodoc
class _$FunFactTearOff {
  const _$FunFactTearOff();

  _FunFact call({String? text}) {
    return _FunFact(
      text: text,
    );
  }

  FunFact fromJson(Map<String, Object?> json) {
    return FunFact.fromJson(json);
  }
}

/// @nodoc
const $FunFact = _$FunFactTearOff();

/// @nodoc
mixin _$FunFact {
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FunFactCopyWith<FunFact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunFactCopyWith<$Res> {
  factory $FunFactCopyWith(FunFact value, $Res Function(FunFact) then) =
      _$FunFactCopyWithImpl<$Res>;
  $Res call({String? text});
}

/// @nodoc
class _$FunFactCopyWithImpl<$Res> implements $FunFactCopyWith<$Res> {
  _$FunFactCopyWithImpl(this._value, this._then);

  final FunFact _value;
  // ignore: unused_field
  final $Res Function(FunFact) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FunFactCopyWith<$Res> implements $FunFactCopyWith<$Res> {
  factory _$FunFactCopyWith(_FunFact value, $Res Function(_FunFact) then) =
      __$FunFactCopyWithImpl<$Res>;
  @override
  $Res call({String? text});
}

/// @nodoc
class __$FunFactCopyWithImpl<$Res> extends _$FunFactCopyWithImpl<$Res>
    implements _$FunFactCopyWith<$Res> {
  __$FunFactCopyWithImpl(_FunFact _value, $Res Function(_FunFact) _then)
      : super(_value, (v) => _then(v as _FunFact));

  @override
  _FunFact get _value => super._value as _FunFact;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_FunFact(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FunFact implements _FunFact {
  _$_FunFact({this.text});

  factory _$_FunFact.fromJson(Map<String, dynamic> json) =>
      _$$_FunFactFromJson(json);

  @override
  final String? text;

  @override
  String toString() {
    return 'FunFact(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunFact &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$FunFactCopyWith<_FunFact> get copyWith =>
      __$FunFactCopyWithImpl<_FunFact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FunFactToJson(this);
  }
}

abstract class _FunFact implements FunFact {
  factory _FunFact({String? text}) = _$_FunFact;

  factory _FunFact.fromJson(Map<String, dynamic> json) = _$_FunFact.fromJson;

  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$FunFactCopyWith<_FunFact> get copyWith =>
      throw _privateConstructorUsedError;
}
