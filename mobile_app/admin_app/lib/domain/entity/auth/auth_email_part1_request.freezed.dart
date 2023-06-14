// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part1_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart1Request _$AuthEmailPart1RequestFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart1Request.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart1Request {
  String get email => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart1RequestCopyWith<AuthEmailPart1Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart1RequestCopyWith<$Res> {
  factory $AuthEmailPart1RequestCopyWith(AuthEmailPart1Request value,
          $Res Function(AuthEmailPart1Request) then) =
      _$AuthEmailPart1RequestCopyWithImpl<$Res, AuthEmailPart1Request>;
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class _$AuthEmailPart1RequestCopyWithImpl<$Res,
        $Val extends AuthEmailPart1Request>
    implements $AuthEmailPart1RequestCopyWith<$Res> {
  _$AuthEmailPart1RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthEmailPart1RequestCopyWith<$Res>
    implements $AuthEmailPart1RequestCopyWith<$Res> {
  factory _$$_AuthEmailPart1RequestCopyWith(_$_AuthEmailPart1Request value,
          $Res Function(_$_AuthEmailPart1Request) then) =
      __$$_AuthEmailPart1RequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class __$$_AuthEmailPart1RequestCopyWithImpl<$Res>
    extends _$AuthEmailPart1RequestCopyWithImpl<$Res, _$_AuthEmailPart1Request>
    implements _$$_AuthEmailPart1RequestCopyWith<$Res> {
  __$$_AuthEmailPart1RequestCopyWithImpl(_$_AuthEmailPart1Request _value,
      $Res Function(_$_AuthEmailPart1Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_$_AuthEmailPart1Request(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AuthEmailPart1Request implements _AuthEmailPart1Request {
  const _$_AuthEmailPart1Request({required this.email, required this.digits});

  factory _$_AuthEmailPart1Request.fromJson(Map<String, dynamic> json) =>
      _$$_AuthEmailPart1RequestFromJson(json);

  @override
  final String email;
  @override
  final int digits;

  @override
  String toString() {
    return 'AuthEmailPart1Request(email: $email, digits: $digits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEmailPart1Request &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.digits, digits) || other.digits == digits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, digits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEmailPart1RequestCopyWith<_$_AuthEmailPart1Request> get copyWith =>
      __$$_AuthEmailPart1RequestCopyWithImpl<_$_AuthEmailPart1Request>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthEmailPart1RequestToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart1Request implements AuthEmailPart1Request {
  const factory _AuthEmailPart1Request(
      {required final String email,
      required final int digits}) = _$_AuthEmailPart1Request;

  factory _AuthEmailPart1Request.fromJson(Map<String, dynamic> json) =
      _$_AuthEmailPart1Request.fromJson;

  @override
  String get email;
  @override
  int get digits;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEmailPart1RequestCopyWith<_$_AuthEmailPart1Request> get copyWith =>
      throw _privateConstructorUsedError;
}
