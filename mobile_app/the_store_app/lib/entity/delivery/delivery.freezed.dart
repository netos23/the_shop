// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  int get deliveryId => throw _privateConstructorUsedError;
  String get deliveryPrice => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call({int deliveryId, String deliveryPrice, int userId});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$$_DeliveryCopyWith(
          _$_Delivery value, $Res Function(_$_Delivery) then) =
      __$$_DeliveryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deliveryId, String deliveryPrice, int userId});
}

/// @nodoc
class __$$_DeliveryCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$_Delivery>
    implements _$$_DeliveryCopyWith<$Res> {
  __$$_DeliveryCopyWithImpl(
      _$_Delivery _value, $Res Function(_$_Delivery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryId = null,
    Object? deliveryPrice = null,
    Object? userId = null,
  }) {
    return _then(_$_Delivery(
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
class _$_Delivery implements _Delivery {
  _$_Delivery(
      {required this.deliveryId,
      required this.deliveryPrice,
      required this.userId});

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFromJson(json);

  @override
  final int deliveryId;
  @override
  final String deliveryPrice;
  @override
  final int userId;

  @override
  String toString() {
    return 'Delivery(deliveryId: $deliveryId, deliveryPrice: $deliveryPrice, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delivery &&
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
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      __$$_DeliveryCopyWithImpl<_$_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryToJson(
      this,
    );
  }
}

abstract class _Delivery implements Delivery {
  factory _Delivery(
      {required final int deliveryId,
      required final String deliveryPrice,
      required final int userId}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  int get deliveryId;
  @override
  String get deliveryPrice;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}
