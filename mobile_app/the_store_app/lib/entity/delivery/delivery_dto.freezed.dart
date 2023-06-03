// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryDto _$DeliveryDtoFromJson(Map<String, dynamic> json) {
  return _DeliveryDto.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDto {
  int get deliveryId => throw _privateConstructorUsedError;
  String get deliveryPrice => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDtoCopyWith<DeliveryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDtoCopyWith<$Res> {
  factory $DeliveryDtoCopyWith(
          DeliveryDto value, $Res Function(DeliveryDto) then) =
      _$DeliveryDtoCopyWithImpl<$Res, DeliveryDto>;
  @useResult
  $Res call({int deliveryId, String deliveryPrice, int userId});
}

/// @nodoc
class _$DeliveryDtoCopyWithImpl<$Res, $Val extends DeliveryDto>
    implements $DeliveryDtoCopyWith<$Res> {
  _$DeliveryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryId = null,
    Object? deliveryPrice = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryDtoCopyWith<$Res>
    implements $DeliveryDtoCopyWith<$Res> {
  factory _$$_DeliveryDtoCopyWith(
          _$_DeliveryDto value, $Res Function(_$_DeliveryDto) then) =
      __$$_DeliveryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deliveryId, String deliveryPrice, int userId});
}

/// @nodoc
class __$$_DeliveryDtoCopyWithImpl<$Res>
    extends _$DeliveryDtoCopyWithImpl<$Res, _$_DeliveryDto>
    implements _$$_DeliveryDtoCopyWith<$Res> {
  __$$_DeliveryDtoCopyWithImpl(
      _$_DeliveryDto _value, $Res Function(_$_DeliveryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryId = null,
    Object? deliveryPrice = null,
    Object? userId = null,
  }) {
    return _then(_$_DeliveryDto(
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryDto implements _DeliveryDto {
  _$_DeliveryDto(
      {required this.deliveryId,
      required this.deliveryPrice,
      required this.userId});

  factory _$_DeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryDtoFromJson(json);

  @override
  final int deliveryId;
  @override
  final String deliveryPrice;
  @override
  final int userId;

  @override
  String toString() {
    return 'DeliveryDto(deliveryId: $deliveryId, deliveryPrice: $deliveryPrice, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryDto &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deliveryId, deliveryPrice, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryDtoCopyWith<_$_DeliveryDto> get copyWith =>
      __$$_DeliveryDtoCopyWithImpl<_$_DeliveryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryDtoToJson(
      this,
    );
  }
}

abstract class _DeliveryDto implements DeliveryDto {
  factory _DeliveryDto(
      {required final int deliveryId,
      required final String deliveryPrice,
      required final int userId}) = _$_DeliveryDto;

  factory _DeliveryDto.fromJson(Map<String, dynamic> json) =
      _$_DeliveryDto.fromJson;

  @override
  int get deliveryId;
  @override
  String get deliveryPrice;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryDtoCopyWith<_$_DeliveryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
