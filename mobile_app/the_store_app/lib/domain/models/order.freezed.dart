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
  int? get id => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;
  String get user_phone => throw _privateConstructorUsedError;
  String get user_email => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String get delivery_id => throw _privateConstructorUsedError;
  String get delivery_type => throw _privateConstructorUsedError;
  int? get delivery_price => throw _privateConstructorUsedError;
  String? get delivery_date => throw _privateConstructorUsedError;
  String? get delivery_time => throw _privateConstructorUsedError;
  String get payment_id => throw _privateConstructorUsedError;
  String get payment_type => throw _privateConstructorUsedError;
  Decimal get items_price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  Decimal? get full_price => throw _privateConstructorUsedError;
  String? get promocode => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get error_text => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get repeated_days => throw _privateConstructorUsedError;

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
      {int? id,
      List<OrderItem> items,
      String user_name,
      String user_phone,
      String user_email,
      String? created_at,
      String delivery_id,
      String delivery_type,
      int? delivery_price,
      String? delivery_date,
      String? delivery_time,
      String payment_id,
      String payment_type,
      Decimal items_price,
      int? discount,
      Decimal? full_price,
      String? promocode,
      String? address,
      String? comment,
      String? error_text,
      String? brand,
      int? status,
      int? repeated_days});
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
    Object? id = freezed,
    Object? items = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? user_email = null,
    Object? created_at = freezed,
    Object? delivery_id = null,
    Object? delivery_type = null,
    Object? delivery_price = freezed,
    Object? delivery_date = freezed,
    Object? delivery_time = freezed,
    Object? payment_id = null,
    Object? payment_type = null,
    Object? items_price = null,
    Object? discount = freezed,
    Object? full_price = freezed,
    Object? promocode = freezed,
    Object? address = freezed,
    Object? comment = freezed,
    Object? error_text = freezed,
    Object? brand = freezed,
    Object? status = freezed,
    Object? repeated_days = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      user_phone: null == user_phone
          ? _value.user_phone
          : user_phone // ignore: cast_nullable_to_non_nullable
              as String,
      user_email: null == user_email
          ? _value.user_email
          : user_email // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_id: null == delivery_id
          ? _value.delivery_id
          : delivery_id // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_type: null == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_price: freezed == delivery_price
          ? _value.delivery_price
          : delivery_price // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_date: freezed == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_id: null == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      items_price: null == items_price
          ? _value.items_price
          : items_price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      full_price: freezed == full_price
          ? _value.full_price
          : full_price // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      error_text: freezed == error_text
          ? _value.error_text
          : error_text // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      repeated_days: freezed == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<OrderItem> items,
      String user_name,
      String user_phone,
      String user_email,
      String? created_at,
      String delivery_id,
      String delivery_type,
      int? delivery_price,
      String? delivery_date,
      String? delivery_time,
      String payment_id,
      String payment_type,
      Decimal items_price,
      int? discount,
      Decimal? full_price,
      String? promocode,
      String? address,
      String? comment,
      String? error_text,
      String? brand,
      int? status,
      int? repeated_days});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? items = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? user_email = null,
    Object? created_at = freezed,
    Object? delivery_id = null,
    Object? delivery_type = null,
    Object? delivery_price = freezed,
    Object? delivery_date = freezed,
    Object? delivery_time = freezed,
    Object? payment_id = null,
    Object? payment_type = null,
    Object? items_price = null,
    Object? discount = freezed,
    Object? full_price = freezed,
    Object? promocode = freezed,
    Object? address = freezed,
    Object? comment = freezed,
    Object? error_text = freezed,
    Object? brand = freezed,
    Object? status = freezed,
    Object? repeated_days = freezed,
  }) {
    return _then(_$_Order(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      user_phone: null == user_phone
          ? _value.user_phone
          : user_phone // ignore: cast_nullable_to_non_nullable
              as String,
      user_email: null == user_email
          ? _value.user_email
          : user_email // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_id: null == delivery_id
          ? _value.delivery_id
          : delivery_id // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_type: null == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_price: freezed == delivery_price
          ? _value.delivery_price
          : delivery_price // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_date: freezed == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_id: null == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      items_price: null == items_price
          ? _value.items_price
          : items_price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      full_price: freezed == full_price
          ? _value.full_price
          : full_price // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      error_text: freezed == error_text
          ? _value.error_text
          : error_text // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      repeated_days: freezed == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order(
      {this.id,
      required final List<OrderItem> items,
      required this.user_name,
      required this.user_phone,
      required this.user_email,
      this.created_at,
      required this.delivery_id,
      required this.delivery_type,
      this.delivery_price,
      this.delivery_date,
      this.delivery_time,
      required this.payment_id,
      required this.payment_type,
      required this.items_price,
      this.discount,
      this.full_price,
      this.promocode,
      this.address,
      this.comment,
      this.error_text,
      this.brand,
      this.status,
      this.repeated_days})
      : _items = items;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int? id;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String user_name;
  @override
  final String user_phone;
  @override
  final String user_email;
  @override
  final String? created_at;
  @override
  final String delivery_id;
  @override
  final String delivery_type;
  @override
  final int? delivery_price;
  @override
  final String? delivery_date;
  @override
  final String? delivery_time;
  @override
  final String payment_id;
  @override
  final String payment_type;
  @override
  final Decimal items_price;
  @override
  final int? discount;
  @override
  final Decimal? full_price;
  @override
  final String? promocode;
  @override
  final String? address;
  @override
  final String? comment;
  @override
  final String? error_text;
  @override
  final String? brand;
  @override
  final int? status;
  @override
  final int? repeated_days;

  @override
  String toString() {
    return 'Order(id: $id, items: $items, user_name: $user_name, user_phone: $user_phone, user_email: $user_email, created_at: $created_at, delivery_id: $delivery_id, delivery_type: $delivery_type, delivery_price: $delivery_price, delivery_date: $delivery_date, delivery_time: $delivery_time, payment_id: $payment_id, payment_type: $payment_type, items_price: $items_price, discount: $discount, full_price: $full_price, promocode: $promocode, address: $address, comment: $comment, error_text: $error_text, brand: $brand, status: $status, repeated_days: $repeated_days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_phone, user_phone) ||
                other.user_phone == user_phone) &&
            (identical(other.user_email, user_email) ||
                other.user_email == user_email) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.delivery_id, delivery_id) ||
                other.delivery_id == delivery_id) &&
            (identical(other.delivery_type, delivery_type) ||
                other.delivery_type == delivery_type) &&
            (identical(other.delivery_price, delivery_price) ||
                other.delivery_price == delivery_price) &&
            (identical(other.delivery_date, delivery_date) ||
                other.delivery_date == delivery_date) &&
            (identical(other.delivery_time, delivery_time) ||
                other.delivery_time == delivery_time) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.payment_type, payment_type) ||
                other.payment_type == payment_type) &&
            (identical(other.items_price, items_price) ||
                other.items_price == items_price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.full_price, full_price) ||
                other.full_price == full_price) &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.error_text, error_text) ||
                other.error_text == error_text) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.repeated_days, repeated_days) ||
                other.repeated_days == repeated_days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_items),
        user_name,
        user_phone,
        user_email,
        created_at,
        delivery_id,
        delivery_type,
        delivery_price,
        delivery_date,
        delivery_time,
        payment_id,
        payment_type,
        items_price,
        discount,
        full_price,
        promocode,
        address,
        comment,
        error_text,
        brand,
        status,
        repeated_days
      ]);

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
      {final int? id,
      required final List<OrderItem> items,
      required final String user_name,
      required final String user_phone,
      required final String user_email,
      final String? created_at,
      required final String delivery_id,
      required final String delivery_type,
      final int? delivery_price,
      final String? delivery_date,
      final String? delivery_time,
      required final String payment_id,
      required final String payment_type,
      required final Decimal items_price,
      final int? discount,
      final Decimal? full_price,
      final String? promocode,
      final String? address,
      final String? comment,
      final String? error_text,
      final String? brand,
      final int? status,
      final int? repeated_days}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int? get id;
  @override
  List<OrderItem> get items;
  @override
  String get user_name;
  @override
  String get user_phone;
  @override
  String get user_email;
  @override
  String? get created_at;
  @override
  String get delivery_id;
  @override
  String get delivery_type;
  @override
  int? get delivery_price;
  @override
  String? get delivery_date;
  @override
  String? get delivery_time;
  @override
  String get payment_id;
  @override
  String get payment_type;
  @override
  Decimal get items_price;
  @override
  int? get discount;
  @override
  Decimal? get full_price;
  @override
  String? get promocode;
  @override
  String? get address;
  @override
  String? get comment;
  @override
  String? get error_text;
  @override
  String? get brand;
  @override
  int? get status;
  @override
  int? get repeated_days;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int? get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int? id,
      int count,
      String picture,
      String name,
      Decimal price,
      int? discount,
      int? order,
      int? product});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = null,
    Object? picture = null,
    Object? name = null,
    Object? price = null,
    Object? discount = freezed,
    Object? order = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$$_OrderItemCopyWith(
          _$_OrderItem value, $Res Function(_$_OrderItem) then) =
      __$$_OrderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int count,
      String picture,
      String name,
      Decimal price,
      int? discount,
      int? order,
      int? product});
}

/// @nodoc
class __$$_OrderItemCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$_OrderItem>
    implements _$$_OrderItemCopyWith<$Res> {
  __$$_OrderItemCopyWithImpl(
      _$_OrderItem _value, $Res Function(_$_OrderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = null,
    Object? picture = null,
    Object? name = null,
    Object? price = null,
    Object? discount = freezed,
    Object? order = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_OrderItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItem implements _OrderItem {
  _$_OrderItem(
      {this.id,
      required this.count,
      required this.picture,
      required this.name,
      required this.price,
      this.discount,
      this.order,
      this.product});

  factory _$_OrderItem.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemFromJson(json);

  @override
  final int? id;
  @override
  final int count;
  @override
  final String picture;
  @override
  final String name;
  @override
  final Decimal price;
  @override
  final int? discount;
  @override
  final int? order;
  @override
  final int? product;

  @override
  String toString() {
    return 'OrderItem(id: $id, count: $count, picture: $picture, name: $name, price: $price, discount: $discount, order: $order, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, count, picture, name, price, discount, order, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      __$$_OrderItemCopyWithImpl<_$_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {final int? id,
      required final int count,
      required final String picture,
      required final String name,
      required final Decimal price,
      final int? discount,
      final int? order,
      final int? product}) = _$_OrderItem;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$_OrderItem.fromJson;

  @override
  int? get id;
  @override
  int get count;
  @override
  String get picture;
  @override
  String get name;
  @override
  Decimal get price;
  @override
  int? get discount;
  @override
  int? get order;
  @override
  int? get product;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
