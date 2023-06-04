// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calc_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalcCart _$CalcCartFromJson(Map<String, dynamic> json) {
  return _CalcCart.fromJson(json);
}

/// @nodoc
mixin _$CalcCart {
  @JsonKey(name: 'price')
  Decimal get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<CartProduct> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied')
  bool? get applied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalcCartCopyWith<CalcCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcCartCopyWith<$Res> {
  factory $CalcCartCopyWith(CalcCart value, $Res Function(CalcCart) then) =
      _$CalcCartCopyWithImpl<$Res, CalcCart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price') Decimal price,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'products') List<CartProduct> products,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'applied') bool? applied});
}

/// @nodoc
class _$CalcCartCopyWithImpl<$Res, $Val extends CalcCart>
    implements $CalcCartCopyWith<$Res> {
  _$CalcCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? products = null,
    Object? oldPrice = freezed,
    Object? applied = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalcCartCopyWith<$Res> implements $CalcCartCopyWith<$Res> {
  factory _$$_CalcCartCopyWith(
          _$_CalcCart value, $Res Function(_$_CalcCart) then) =
      __$$_CalcCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price') Decimal price,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'products') List<CartProduct> products,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'applied') bool? applied});
}

/// @nodoc
class __$$_CalcCartCopyWithImpl<$Res>
    extends _$CalcCartCopyWithImpl<$Res, _$_CalcCart>
    implements _$$_CalcCartCopyWith<$Res> {
  __$$_CalcCartCopyWithImpl(
      _$_CalcCart _value, $Res Function(_$_CalcCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? products = null,
    Object? oldPrice = freezed,
    Object? applied = freezed,
  }) {
    return _then(_$_CalcCart(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalcCart implements _CalcCart {
  _$_CalcCart(
      {@JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'products') required final List<CartProduct> products,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'applied') this.applied})
      : _products = products;

  factory _$_CalcCart.fromJson(Map<String, dynamic> json) =>
      _$$_CalcCartFromJson(json);

  @override
  @JsonKey(name: 'price')
  final Decimal price;
  @override
  @JsonKey(name: 'count')
  final int count;
  final List<CartProduct> _products;
  @override
  @JsonKey(name: 'products')
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'old_price')
  final Decimal? oldPrice;
  @override
  @JsonKey(name: 'applied')
  final bool? applied;

  @override
  String toString() {
    return 'CalcCart(price: $price, count: $count, products: $products, oldPrice: $oldPrice, applied: $applied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalcCart &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.applied, applied) || other.applied == applied));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, count,
      const DeepCollectionEquality().hash(_products), oldPrice, applied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalcCartCopyWith<_$_CalcCart> get copyWith =>
      __$$_CalcCartCopyWithImpl<_$_CalcCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalcCartToJson(
      this,
    );
  }
}

abstract class _CalcCart implements CalcCart {
  factory _CalcCart(
      {@JsonKey(name: 'price') required final Decimal price,
      @JsonKey(name: 'count') required final int count,
      @JsonKey(name: 'products') required final List<CartProduct> products,
      @JsonKey(name: 'old_price') final Decimal? oldPrice,
      @JsonKey(name: 'applied') final bool? applied}) = _$_CalcCart;

  factory _CalcCart.fromJson(Map<String, dynamic> json) = _$_CalcCart.fromJson;

  @override
  @JsonKey(name: 'price')
  Decimal get price;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'products')
  List<CartProduct> get products;
  @override
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice;
  @override
  @JsonKey(name: 'applied')
  bool? get applied;
  @override
  @JsonKey(ignore: true)
  _$$_CalcCartCopyWith<_$_CalcCart> get copyWith =>
      throw _privateConstructorUsedError;
}
