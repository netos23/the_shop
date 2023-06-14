// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRegisterRequest _$AuthRegisterRequestFromJson(Map<String, dynamic> json) {
  return _AuthRegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRegisterRequestCopyWith<AuthRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterRequestCopyWith<$Res> {
  factory $AuthRegisterRequestCopyWith(
          AuthRegisterRequest value, $Res Function(AuthRegisterRequest) then) =
      _$AuthRegisterRequestCopyWithImpl<$Res, AuthRegisterRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthRegisterRequestCopyWithImpl<$Res, $Val extends AuthRegisterRequest>
    implements $AuthRegisterRequestCopyWith<$Res> {
  _$AuthRegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthRegisterRequestCopyWith<$Res>
    implements $AuthRegisterRequestCopyWith<$Res> {
  factory _$$_AuthRegisterRequestCopyWith(_$_AuthRegisterRequest value,
          $Res Function(_$_AuthRegisterRequest) then) =
      __$$_AuthRegisterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthRegisterRequestCopyWithImpl<$Res>
    extends _$AuthRegisterRequestCopyWithImpl<$Res, _$_AuthRegisterRequest>
    implements _$$_AuthRegisterRequestCopyWith<$Res> {
  __$$_AuthRegisterRequestCopyWithImpl(_$_AuthRegisterRequest _value,
      $Res Function(_$_AuthRegisterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthRegisterRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AuthRegisterRequest implements _AuthRegisterRequest {
  const _$_AuthRegisterRequest({required this.name});

  factory _$_AuthRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AuthRegisterRequestFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthRegisterRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRegisterRequest &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRegisterRequestCopyWith<_$_AuthRegisterRequest> get copyWith =>
      __$$_AuthRegisterRequestCopyWithImpl<_$_AuthRegisterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRegisterRequestToJson(
      this,
    );
  }
}

abstract class _AuthRegisterRequest implements AuthRegisterRequest {
  const factory _AuthRegisterRequest({required final String name}) =
      _$_AuthRegisterRequest;

  factory _AuthRegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_AuthRegisterRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRegisterRequestCopyWith<_$_AuthRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
