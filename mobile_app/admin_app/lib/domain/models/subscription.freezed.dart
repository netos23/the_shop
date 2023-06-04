// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  int get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get repeated_days => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  Decimal get total_price => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {int id,
      Product product,
      String created_at,
      int repeated_days,
      int count,
      Decimal total_price,
      Order order});

  $ProductCopyWith<$Res> get product;
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? created_at = null,
    Object? repeated_days = null,
    Object? count = null,
    Object? total_price = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      repeated_days: null == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$_SubscriptionCopyWith(
          _$_Subscription value, $Res Function(_$_Subscription) then) =
      __$$_SubscriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Product product,
      String created_at,
      int repeated_days,
      int count,
      Decimal total_price,
      Order order});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_SubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$_Subscription>
    implements _$$_SubscriptionCopyWith<$Res> {
  __$$_SubscriptionCopyWithImpl(
      _$_Subscription _value, $Res Function(_$_Subscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? created_at = null,
    Object? repeated_days = null,
    Object? count = null,
    Object? total_price = null,
    Object? order = null,
  }) {
    return _then(_$_Subscription(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      repeated_days: null == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subscription implements _Subscription {
  _$_Subscription(
      {required this.id,
      required this.product,
      required this.created_at,
      required this.repeated_days,
      required this.count,
      required this.total_price,
      required this.order});

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionFromJson(json);

  @override
  final int id;
  @override
  final Product product;
  @override
  final String created_at;
  @override
  final int repeated_days;
  @override
  final int count;
  @override
  final Decimal total_price;
  @override
  final Order order;

  @override
  String toString() {
    return 'Subscription(id: $id, product: $product, created_at: $created_at, repeated_days: $repeated_days, count: $count, total_price: $total_price, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.repeated_days, repeated_days) ||
                other.repeated_days == repeated_days) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, created_at,
      repeated_days, count, total_price, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionCopyWith<_$_Subscription> get copyWith =>
      __$$_SubscriptionCopyWithImpl<_$_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  factory _Subscription(
      {required final int id,
      required final Product product,
      required final String created_at,
      required final int repeated_days,
      required final int count,
      required final Decimal total_price,
      required final Order order}) = _$_Subscription;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  int get id;
  @override
  Product get product;
  @override
  String get created_at;
  @override
  int get repeated_days;
  @override
  int get count;
  @override
  Decimal get total_price;
  @override
  Order get order;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionCopyWith<_$_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}
