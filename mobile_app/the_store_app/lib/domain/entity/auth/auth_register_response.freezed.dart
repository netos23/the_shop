// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRegisterResponse _$AuthRegisterResponseFromJson(Map<String, dynamic> json) {
  return _AuthRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRegisterResponseCopyWith<AuthRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterResponseCopyWith<$Res> {
  factory $AuthRegisterResponseCopyWith(AuthRegisterResponse value,
          $Res Function(AuthRegisterResponse) then) =
      _$AuthRegisterResponseCopyWithImpl<$Res, AuthRegisterResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthRegisterResponseCopyWithImpl<$Res,
        $Val extends AuthRegisterResponse>
    implements $AuthRegisterResponseCopyWith<$Res> {
  _$AuthRegisterResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthRegisterResponseCopyWith<$Res>
    implements $AuthRegisterResponseCopyWith<$Res> {
  factory _$$_AuthRegisterResponseCopyWith(_$_AuthRegisterResponse value,
          $Res Function(_$_AuthRegisterResponse) then) =
      __$$_AuthRegisterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthRegisterResponseCopyWithImpl<$Res>
    extends _$AuthRegisterResponseCopyWithImpl<$Res, _$_AuthRegisterResponse>
    implements _$$_AuthRegisterResponseCopyWith<$Res> {
  __$$_AuthRegisterResponseCopyWithImpl(_$_AuthRegisterResponse _value,
      $Res Function(_$_AuthRegisterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthRegisterResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AuthRegisterResponse implements _AuthRegisterResponse {
  const _$_AuthRegisterResponse({required this.name});

  factory _$_AuthRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthRegisterResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthRegisterResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRegisterResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRegisterResponseCopyWith<_$_AuthRegisterResponse> get copyWith =>
      __$$_AuthRegisterResponseCopyWithImpl<_$_AuthRegisterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRegisterResponseToJson(
      this,
    );
  }
}

abstract class _AuthRegisterResponse implements AuthRegisterResponse {
  const factory _AuthRegisterResponse({required final String name}) =
      _$_AuthRegisterResponse;

  factory _AuthRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthRegisterResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRegisterResponseCopyWith<_$_AuthRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
