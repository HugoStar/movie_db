// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestToken _$RequestTokenFromJson(Map<String, dynamic> json) {
  return _RequestToken.fromJson(json);
}

/// @nodoc
mixin _$RequestToken {
  ///Токен
// ignore: invalid_annotation_target
  @JsonKey(name: 'request_token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestTokenCopyWith<RequestToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTokenCopyWith<$Res> {
  factory $RequestTokenCopyWith(
          RequestToken value, $Res Function(RequestToken) then) =
      _$RequestTokenCopyWithImpl<$Res, RequestToken>;
  @useResult
  $Res call({@JsonKey(name: 'request_token') String token});
}

/// @nodoc
class _$RequestTokenCopyWithImpl<$Res, $Val extends RequestToken>
    implements $RequestTokenCopyWith<$Res> {
  _$RequestTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestTokenCopyWith<$Res>
    implements $RequestTokenCopyWith<$Res> {
  factory _$$_RequestTokenCopyWith(
          _$_RequestToken value, $Res Function(_$_RequestToken) then) =
      __$$_RequestTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'request_token') String token});
}

/// @nodoc
class __$$_RequestTokenCopyWithImpl<$Res>
    extends _$RequestTokenCopyWithImpl<$Res, _$_RequestToken>
    implements _$$_RequestTokenCopyWith<$Res> {
  __$$_RequestTokenCopyWithImpl(
      _$_RequestToken _value, $Res Function(_$_RequestToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_RequestToken(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestToken implements _RequestToken {
  const _$_RequestToken({@JsonKey(name: 'request_token') required this.token});

  factory _$_RequestToken.fromJson(Map<String, dynamic> json) =>
      _$$_RequestTokenFromJson(json);

  ///Токен
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'request_token')
  final String token;

  @override
  String toString() {
    return 'RequestToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestToken &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestTokenCopyWith<_$_RequestToken> get copyWith =>
      __$$_RequestTokenCopyWithImpl<_$_RequestToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestTokenToJson(
      this,
    );
  }
}

abstract class _RequestToken implements RequestToken {
  const factory _RequestToken(
          {@JsonKey(name: 'request_token') required final String token}) =
      _$_RequestToken;

  factory _RequestToken.fromJson(Map<String, dynamic> json) =
      _$_RequestToken.fromJson;

  @override

  ///Токен
// ignore: invalid_annotation_target
  @JsonKey(name: 'request_token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_RequestTokenCopyWith<_$_RequestToken> get copyWith =>
      throw _privateConstructorUsedError;
}
