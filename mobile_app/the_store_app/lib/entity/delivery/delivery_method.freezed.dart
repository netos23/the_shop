// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryMethod _$DeliveryMethodFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'delivery':
      return Delivery.fromJson(json);
    case 'shop':
      return Shop.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DeliveryMethod',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DeliveryMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) delivery,
    required TResult Function(PickupPoint point) shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? delivery,
    TResult? Function(PickupPoint point)? shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? delivery,
    TResult Function(PickupPoint point)? shop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delivery value) delivery,
    required TResult Function(Shop value) shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delivery value)? delivery,
    TResult? Function(Shop value)? shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delivery value)? delivery,
    TResult Function(Shop value)? shop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodCopyWith<$Res> {
  factory $DeliveryMethodCopyWith(
          DeliveryMethod value, $Res Function(DeliveryMethod) then) =
      _$DeliveryMethodCopyWithImpl<$Res, DeliveryMethod>;
}

/// @nodoc
class _$DeliveryMethodCopyWithImpl<$Res, $Val extends DeliveryMethod>
    implements $DeliveryMethodCopyWith<$Res> {
  _$DeliveryMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeliveryCopyWith<$Res> {
  factory _$$DeliveryCopyWith(
          _$Delivery value, $Res Function(_$Delivery) then) =
      __$$DeliveryCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$DeliveryCopyWithImpl<$Res>
    extends _$DeliveryMethodCopyWithImpl<$Res, _$Delivery>
    implements _$$DeliveryCopyWith<$Res> {
  __$$DeliveryCopyWithImpl(_$Delivery _value, $Res Function(_$Delivery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$Delivery(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Delivery implements Delivery {
  const _$Delivery({required this.address, final String? $type})
      : $type = $type ?? 'delivery';

  factory _$Delivery.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryFromJson(json);

  @override
  final String address;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeliveryMethod.delivery(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delivery &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryCopyWith<_$Delivery> get copyWith =>
      __$$DeliveryCopyWithImpl<_$Delivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) delivery,
    required TResult Function(PickupPoint point) shop,
  }) {
    return delivery(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? delivery,
    TResult? Function(PickupPoint point)? shop,
  }) {
    return delivery?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? delivery,
    TResult Function(PickupPoint point)? shop,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delivery value) delivery,
    required TResult Function(Shop value) shop,
  }) {
    return delivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delivery value)? delivery,
    TResult? Function(Shop value)? shop,
  }) {
    return delivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delivery value)? delivery,
    TResult Function(Shop value)? shop,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryToJson(
      this,
    );
  }
}

abstract class Delivery implements DeliveryMethod {
  const factory Delivery({required final String address}) = _$Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) = _$Delivery.fromJson;

  String get address;
  @JsonKey(ignore: true)
  _$$DeliveryCopyWith<_$Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShopCopyWith<$Res> {
  factory _$$ShopCopyWith(_$Shop value, $Res Function(_$Shop) then) =
      __$$ShopCopyWithImpl<$Res>;
  @useResult
  $Res call({PickupPoint point});

  $PickupPointCopyWith<$Res> get point;
}

/// @nodoc
class __$$ShopCopyWithImpl<$Res>
    extends _$DeliveryMethodCopyWithImpl<$Res, _$Shop>
    implements _$$ShopCopyWith<$Res> {
  __$$ShopCopyWithImpl(_$Shop _value, $Res Function(_$Shop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
  }) {
    return _then(_$Shop(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as PickupPoint,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupPointCopyWith<$Res> get point {
    return $PickupPointCopyWith<$Res>(_value.point, (value) {
      return _then(_value.copyWith(point: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Shop implements Shop {
  const _$Shop({required this.point, final String? $type})
      : $type = $type ?? 'shop';

  factory _$Shop.fromJson(Map<String, dynamic> json) => _$$ShopFromJson(json);

  @override
  final PickupPoint point;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeliveryMethod.shop(point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Shop &&
            (identical(other.point, point) || other.point == point));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopCopyWith<_$Shop> get copyWith =>
      __$$ShopCopyWithImpl<_$Shop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) delivery,
    required TResult Function(PickupPoint point) shop,
  }) {
    return shop(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? delivery,
    TResult? Function(PickupPoint point)? shop,
  }) {
    return shop?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? delivery,
    TResult Function(PickupPoint point)? shop,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delivery value) delivery,
    required TResult Function(Shop value) shop,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delivery value)? delivery,
    TResult? Function(Shop value)? shop,
  }) {
    return shop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delivery value)? delivery,
    TResult Function(Shop value)? shop,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopToJson(
      this,
    );
  }
}

abstract class Shop implements DeliveryMethod {
  const factory Shop({required final PickupPoint point}) = _$Shop;

  factory Shop.fromJson(Map<String, dynamic> json) = _$Shop.fromJson;

  PickupPoint get point;
  @JsonKey(ignore: true)
  _$$ShopCopyWith<_$Shop> get copyWith => throw _privateConstructorUsedError;
}
