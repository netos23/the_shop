// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_brand_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterBrandRequest _$RegisterBrandRequestFromJson(Map<String, dynamic> json) {
  return _RegisterBrandRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterBrandRequest {
  String get address => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterBrandRequestCopyWith<RegisterBrandRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBrandRequestCopyWith<$Res> {
  factory $RegisterBrandRequestCopyWith(RegisterBrandRequest value,
          $Res Function(RegisterBrandRequest) then) =
      _$RegisterBrandRequestCopyWithImpl<$Res, RegisterBrandRequest>;
  @useResult
  $Res call({String address, String brand});
}

/// @nodoc
class _$RegisterBrandRequestCopyWithImpl<$Res,
        $Val extends RegisterBrandRequest>
    implements $RegisterBrandRequestCopyWith<$Res> {
  _$RegisterBrandRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterBrandRequestCopyWith<$Res>
    implements $RegisterBrandRequestCopyWith<$Res> {
  factory _$$_RegisterBrandRequestCopyWith(_$_RegisterBrandRequest value,
          $Res Function(_$_RegisterBrandRequest) then) =
      __$$_RegisterBrandRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String brand});
}

/// @nodoc
class __$$_RegisterBrandRequestCopyWithImpl<$Res>
    extends _$RegisterBrandRequestCopyWithImpl<$Res, _$_RegisterBrandRequest>
    implements _$$_RegisterBrandRequestCopyWith<$Res> {
  __$$_RegisterBrandRequestCopyWithImpl(_$_RegisterBrandRequest _value,
      $Res Function(_$_RegisterBrandRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? brand = null,
  }) {
    return _then(_$_RegisterBrandRequest(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterBrandRequest implements _RegisterBrandRequest {
  _$_RegisterBrandRequest({required this.address, required this.brand});

  factory _$_RegisterBrandRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterBrandRequestFromJson(json);

  @override
  final String address;
  @override
  final String brand;

  @override
  String toString() {
    return 'RegisterBrandRequest(address: $address, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterBrandRequest &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterBrandRequestCopyWith<_$_RegisterBrandRequest> get copyWith =>
      __$$_RegisterBrandRequestCopyWithImpl<_$_RegisterBrandRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterBrandRequestToJson(
      this,
    );
  }
}

abstract class _RegisterBrandRequest implements RegisterBrandRequest {
  factory _RegisterBrandRequest(
      {required final String address,
      required final String brand}) = _$_RegisterBrandRequest;

  factory _RegisterBrandRequest.fromJson(Map<String, dynamic> json) =
      _$_RegisterBrandRequest.fromJson;

  @override
  String get address;
  @override
  String get brand;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterBrandRequestCopyWith<_$_RegisterBrandRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
