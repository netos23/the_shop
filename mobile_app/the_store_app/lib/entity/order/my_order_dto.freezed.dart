// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyOrderDto _$MyOrderDtoFromJson(Map<String, dynamic> json) {
  return _MyOrderDto.fromJson(json);
}

/// @nodoc
mixin _$MyOrderDto {
  int get id => throw _privateConstructorUsedError;
  ShopDto? get shop => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  bool get orderStatus => throw _privateConstructorUsedError;
  DeliveryDto? get delivery => throw _privateConstructorUsedError;
  PaymentDto get paymentDTO => throw _privateConstructorUsedError;
  List<ShortProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrderDtoCopyWith<MyOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderDtoCopyWith<$Res> {
  factory $MyOrderDtoCopyWith(
          MyOrderDto value, $Res Function(MyOrderDto) then) =
      _$MyOrderDtoCopyWithImpl<$Res, MyOrderDto>;
  @useResult
  $Res call(
      {int id,
      ShopDto? shop,
      String orderTotal,
      bool orderStatus,
      DeliveryDto? delivery,
      PaymentDto paymentDTO,
      List<ShortProduct> products});

  $ShopDtoCopyWith<$Res>? get shop;
  $DeliveryDtoCopyWith<$Res>? get delivery;
  $PaymentDtoCopyWith<$Res> get paymentDTO;
}

/// @nodoc
class _$MyOrderDtoCopyWithImpl<$Res, $Val extends MyOrderDto>
    implements $MyOrderDtoCopyWith<$Res> {
  _$MyOrderDtoCopyWithImpl(this._value, this._then);

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
              as ShopDto?,
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
              as DeliveryDto?,
      paymentDTO: null == paymentDTO
          ? _value.paymentDTO
          : paymentDTO // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopDtoCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopDtoCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryDtoCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $DeliveryDtoCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDtoCopyWith<$Res> get paymentDTO {
    return $PaymentDtoCopyWith<$Res>(_value.paymentDTO, (value) {
      return _then(_value.copyWith(paymentDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyOrderDtoCopyWith<$Res>
    implements $MyOrderDtoCopyWith<$Res> {
  factory _$$_MyOrderDtoCopyWith(
          _$_MyOrderDto value, $Res Function(_$_MyOrderDto) then) =
      __$$_MyOrderDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ShopDto? shop,
      String orderTotal,
      bool orderStatus,
      DeliveryDto? delivery,
      PaymentDto paymentDTO,
      List<ShortProduct> products});

  @override
  $ShopDtoCopyWith<$Res>? get shop;
  @override
  $DeliveryDtoCopyWith<$Res>? get delivery;
  @override
  $PaymentDtoCopyWith<$Res> get paymentDTO;
}

/// @nodoc
class __$$_MyOrderDtoCopyWithImpl<$Res>
    extends _$MyOrderDtoCopyWithImpl<$Res, _$_MyOrderDto>
    implements _$$_MyOrderDtoCopyWith<$Res> {
  __$$_MyOrderDtoCopyWithImpl(
      _$_MyOrderDto _value, $Res Function(_$_MyOrderDto) _then)
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
    return _then(_$_MyOrderDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopDto?,
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
              as DeliveryDto?,
      paymentDTO: null == paymentDTO
          ? _value.paymentDTO
          : paymentDTO // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyOrderDto implements _MyOrderDto {
  _$_MyOrderDto(
      {required this.id,
      this.shop,
      required this.orderTotal,
      required this.orderStatus,
      this.delivery,
      required this.paymentDTO,
      required final List<ShortProduct> products})
      : _products = products;

  factory _$_MyOrderDto.fromJson(Map<String, dynamic> json) =>
      _$$_MyOrderDtoFromJson(json);

  @override
  final int id;
  @override
  final ShopDto? shop;
  @override
  final String orderTotal;
  @override
  final bool orderStatus;
  @override
  final DeliveryDto? delivery;
  @override
  final PaymentDto paymentDTO;
  final List<ShortProduct> _products;
  @override
  List<ShortProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'MyOrderDto(id: $id, shop: $shop, orderTotal: $orderTotal, orderStatus: $orderStatus, delivery: $delivery, paymentDTO: $paymentDTO, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyOrderDto &&
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
  _$$_MyOrderDtoCopyWith<_$_MyOrderDto> get copyWith =>
      __$$_MyOrderDtoCopyWithImpl<_$_MyOrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyOrderDtoToJson(
      this,
    );
  }
}

abstract class _MyOrderDto implements MyOrderDto {
  factory _MyOrderDto(
      {required final int id,
      final ShopDto? shop,
      required final String orderTotal,
      required final bool orderStatus,
      final DeliveryDto? delivery,
      required final PaymentDto paymentDTO,
      required final List<ShortProduct> products}) = _$_MyOrderDto;

  factory _MyOrderDto.fromJson(Map<String, dynamic> json) =
      _$_MyOrderDto.fromJson;

  @override
  int get id;
  @override
  ShopDto? get shop;
  @override
  String get orderTotal;
  @override
  bool get orderStatus;
  @override
  DeliveryDto? get delivery;
  @override
  PaymentDto get paymentDTO;
  @override
  List<ShortProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$_MyOrderDtoCopyWith<_$_MyOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
