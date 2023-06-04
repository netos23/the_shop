// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  PickupPoint? get shop => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  bool get orderStatus => throw _privateConstructorUsedError;
  Delivery? get delivery => throw _privateConstructorUsedError;
  Payment get paymentDTO => throw _privateConstructorUsedError;
  List<ShortProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int id,
      PickupPoint? shop,
      String orderTotal,
      bool orderStatus,
      Delivery? delivery,
      Payment paymentDTO,
      List<ShortProduct> products});

  $PickupPointCopyWith<$Res>? get shop;
  $DeliveryCopyWith<$Res>? get delivery;
  $PaymentCopyWith<$Res> get paymentDTO;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = freezed,
    Object? orderTotal = null,
    Object? orderStatus = null,
    Object? delivery = freezed,
    Object? paymentDTO = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as PickupPoint?,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery?,
      paymentDTO: null == paymentDTO
          ? _value.paymentDTO
          : paymentDTO // ignore: cast_nullable_to_non_nullable
              as Payment,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupPointCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $PickupPointCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $DeliveryCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get paymentDTO {
    return $PaymentCopyWith<$Res>(_value.paymentDTO, (value) {
      return _then(_value.copyWith(paymentDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      PickupPoint? shop,
      String orderTotal,
      bool orderStatus,
      Delivery? delivery,
      Payment paymentDTO,
      List<ShortProduct> products});

  @override
  $PickupPointCopyWith<$Res>? get shop;
  @override
  $DeliveryCopyWith<$Res>? get delivery;
  @override
  $PaymentCopyWith<$Res> get paymentDTO;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = freezed,
    Object? orderTotal = null,
    Object? orderStatus = null,
    Object? delivery = freezed,
    Object? paymentDTO = null,
    Object? products = null,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as PickupPoint?,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery?,
      paymentDTO: null == paymentDTO
          ? _value.paymentDTO
          : paymentDTO // ignore: cast_nullable_to_non_nullable
              as Payment,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order(
      {required this.id,
      this.shop,
      required this.orderTotal,
      required this.orderStatus,
      this.delivery,
      required this.paymentDTO,
      required final List<ShortProduct> products})
      : _products = products;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int id;
  @override
  final PickupPoint? shop;
  @override
  final String orderTotal;
  @override
  final bool orderStatus;
  @override
  final Delivery? delivery;
  @override
  final Payment paymentDTO;
  final List<ShortProduct> _products;
  @override
  List<ShortProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Order(id: $id, shop: $shop, orderTotal: $orderTotal, orderStatus: $orderStatus, delivery: $delivery, paymentDTO: $paymentDTO, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.paymentDTO, paymentDTO) ||
                other.paymentDTO == paymentDTO) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      shop,
      orderTotal,
      orderStatus,
      delivery,
      paymentDTO,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final int id,
      final PickupPoint? shop,
      required final String orderTotal,
      required final bool orderStatus,
      final Delivery? delivery,
      required final Payment paymentDTO,
      required final List<ShortProduct> products}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int get id;
  @override
  PickupPoint? get shop;
  @override
  String get orderTotal;
  @override
  bool get orderStatus;
  @override
  Delivery? get delivery;
  @override
  Payment get paymentDTO;
  @override
  List<ShortProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
