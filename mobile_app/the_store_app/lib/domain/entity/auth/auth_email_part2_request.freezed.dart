// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part2_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart2Request _$AuthEmailPart2RequestFromJson(
    Map<String, dynamic> json) {
  return _AuthPart2Request.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart2Request {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart2RequestCopyWith<AuthEmailPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart2RequestCopyWith<$Res> {
  factory $AuthEmailPart2RequestCopyWith(AuthEmailPart2Request value,
          $Res Function(AuthEmailPart2Request) then) =
      _$AuthEmailPart2RequestCopyWithImpl<$Res, AuthEmailPart2Request>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthEmailPart2RequestCopyWithImpl<$Res,
        $Val extends AuthEmailPart2Request>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  _$AuthEmailPart2RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthPart2RequestCopyWith<$Res>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  factory _$$_AuthPart2RequestCopyWith(
          _$_AuthPart2Request value, $Res Function(_$_AuthPart2Request) then) =
      __$$_AuthPart2RequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_AuthPart2RequestCopyWithImpl<$Res>
    extends _$AuthEmailPart2RequestCopyWithImpl<$Res, _$_AuthPart2Request>
    implements _$$_AuthPart2RequestCopyWith<$Res> {
  __$$_AuthPart2RequestCopyWithImpl(
      _$_AuthPart2Request _value, $Res Function(_$_AuthPart2Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_AuthPart2Request(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AuthPart2Request implements _AuthPart2Request {
  const _$_AuthPart2Request({required this.email, required this.code});

  factory _$_AuthPart2Request.fromJson(Map<String, dynamic> json) =>
      _$$_AuthPart2RequestFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEmailPart2Request(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPart2Request &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPart2RequestCopyWith<_$_AuthPart2Request> get copyWith =>
      __$$_AuthPart2RequestCopyWithImpl<_$_AuthPart2Request>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthPart2RequestToJson(
      this,
    );
  }
}

abstract class _AuthPart2Request implements AuthEmailPart2Request {
  const factory _AuthPart2Request(
      {required final String email,
      required final String code}) = _$_AuthPart2Request;

  factory _AuthPart2Request.fromJson(Map<String, dynamic> json) =
      _$_AuthPart2Request.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPart2RequestCopyWith<_$_AuthPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}
