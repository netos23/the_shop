// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part2_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart2Response _$AuthEmailPart2ResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart2Response.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart2Response {
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart2ResponseCopyWith<AuthEmailPart2Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart2ResponseCopyWith<$Res> {
  factory $AuthEmailPart2ResponseCopyWith(AuthEmailPart2Response value,
          $Res Function(AuthEmailPart2Response) then) =
      _$AuthEmailPart2ResponseCopyWithImpl<$Res, AuthEmailPart2Response>;
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_token") String accessToken});
}

/// @nodoc
class _$AuthEmailPart2ResponseCopyWithImpl<$Res,
        $Val extends AuthEmailPart2Response>
    implements $AuthEmailPart2ResponseCopyWith<$Res> {
  _$AuthEmailPart2ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthEmailPart2ResponseCopyWith<$Res>
    implements $AuthEmailPart2ResponseCopyWith<$Res> {
  factory _$$_AuthEmailPart2ResponseCopyWith(_$_AuthEmailPart2Response value,
          $Res Function(_$_AuthEmailPart2Response) then) =
      __$$_AuthEmailPart2ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_token") String accessToken});
}

/// @nodoc
class __$$_AuthEmailPart2ResponseCopyWithImpl<$Res>
    extends _$AuthEmailPart2ResponseCopyWithImpl<$Res,
        _$_AuthEmailPart2Response>
    implements _$$_AuthEmailPart2ResponseCopyWith<$Res> {
  __$$_AuthEmailPart2ResponseCopyWithImpl(_$_AuthEmailPart2Response _value,
      $Res Function(_$_AuthEmailPart2Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$_AuthEmailPart2Response(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AuthEmailPart2Response implements _AuthEmailPart2Response {
  const _$_AuthEmailPart2Response(
      {@JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "access_token") required this.accessToken});

  factory _$_AuthEmailPart2Response.fromJson(Map<String, dynamic> json) =>
      _$$_AuthEmailPart2ResponseFromJson(json);

  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "access_token")
  final String accessToken;

  @override
  String toString() {
    return 'AuthEmailPart2Response(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEmailPart2Response &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEmailPart2ResponseCopyWith<_$_AuthEmailPart2Response> get copyWith =>
      __$$_AuthEmailPart2ResponseCopyWithImpl<_$_AuthEmailPart2Response>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthEmailPart2ResponseToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart2Response implements AuthEmailPart2Response {
  const factory _AuthEmailPart2Response(
          {@JsonKey(name: "refresh_token") required final String refreshToken,
          @JsonKey(name: "access_token") required final String accessToken}) =
      _$_AuthEmailPart2Response;

  factory _AuthEmailPart2Response.fromJson(Map<String, dynamic> json) =
      _$_AuthEmailPart2Response.fromJson;

  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEmailPart2ResponseCopyWith<_$_AuthEmailPart2Response> get copyWith =>
      throw _privateConstructorUsedError;
}
