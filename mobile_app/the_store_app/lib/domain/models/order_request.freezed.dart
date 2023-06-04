// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) {
  return _OrderRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderRequest {
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;
  List<ProductWithCount> get products => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;
  String get user_phone => throw _privateConstructorUsedError;
  String get user_email => throw _privateConstructorUsedError;
  String get delivery_id => throw _privateConstructorUsedError;
  String get delivery_type => throw _privateConstructorUsedError;
  String get delivery_date => throw _privateConstructorUsedError;
  String get payment_id => throw _privateConstructorUsedError;
  String get payment_type => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get address => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get repeated_days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderRequestCopyWith<OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestCopyWith<$Res> {
  factory $OrderRequestCopyWith(
          OrderRequest value, $Res Function(OrderRequest) then) =
      _$OrderRequestCopyWithImpl<$Res, OrderRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      List<ProductWithCount> products,
      String user_name,
      String user_phone,
      String user_email,
      String delivery_id,
      String delivery_type,
      String delivery_date,
      String payment_id,
      String payment_type,
      @JsonKey(includeIfNull: false) String? address,
      String comment,
      @JsonKey(includeIfNull: false) int? repeated_days});
}

/// @nodoc
class _$OrderRequestCopyWithImpl<$Res, $Val extends OrderRequest>
    implements $OrderRequestCopyWith<$Res> {
  _$OrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? user_email = null,
    Object? delivery_id = null,
    Object? delivery_type = null,
    Object? delivery_date = null,
    Object? payment_id = null,
    Object? payment_type = null,
    Object? address = freezed,
    Object? comment = null,
    Object? repeated_days = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
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
      delivery_id: null == delivery_id
          ? _value.delivery_id
          : delivery_id // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_type: null == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_date: null == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as String,
      payment_id: null == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      repeated_days: freezed == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderRequestCopyWith<$Res>
    implements $OrderRequestCopyWith<$Res> {
  factory _$$_OrderRequestCopyWith(
          _$_OrderRequest value, $Res Function(_$_OrderRequest) then) =
      __$$_OrderRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      List<ProductWithCount> products,
      String user_name,
      String user_phone,
      String user_email,
      String delivery_id,
      String delivery_type,
      String delivery_date,
      String payment_id,
      String payment_type,
      @JsonKey(includeIfNull: false) String? address,
      String comment,
      @JsonKey(includeIfNull: false) int? repeated_days});
}

/// @nodoc
class __$$_OrderRequestCopyWithImpl<$Res>
    extends _$OrderRequestCopyWithImpl<$Res, _$_OrderRequest>
    implements _$$_OrderRequestCopyWith<$Res> {
  __$$_OrderRequestCopyWithImpl(
      _$_OrderRequest _value, $Res Function(_$_OrderRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? user_email = null,
    Object? delivery_id = null,
    Object? delivery_type = null,
    Object? delivery_date = null,
    Object? payment_id = null,
    Object? payment_type = null,
    Object? address = freezed,
    Object? comment = null,
    Object? repeated_days = freezed,
  }) {
    return _then(_$_OrderRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
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
      delivery_id: null == delivery_id
          ? _value.delivery_id
          : delivery_id // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_type: null == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
      delivery_date: null == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as String,
      payment_id: null == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      repeated_days: freezed == repeated_days
          ? _value.repeated_days
          : repeated_days // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderRequest implements _OrderRequest {
  _$_OrderRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias,
      required final List<ProductWithCount> products,
      required this.user_name,
      required this.user_phone,
      required this.user_email,
      required this.delivery_id,
      required this.delivery_type,
      required this.delivery_date,
      required this.payment_id,
      required this.payment_type,
      @JsonKey(includeIfNull: false) this.address,
      required this.comment,
      @JsonKey(includeIfNull: false) this.repeated_days})
      : _products = products;

  factory _$_OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OrderRequestFromJson(json);

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;
  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String user_name;
  @override
  final String user_phone;
  @override
  final String user_email;
  @override
  final String delivery_id;
  @override
  final String delivery_type;
  @override
  final String delivery_date;
  @override
  final String payment_id;
  @override
  final String payment_type;
  @override
  @JsonKey(includeIfNull: false)
  final String? address;
  @override
  final String comment;
  @override
  @JsonKey(includeIfNull: false)
  final int? repeated_days;

  @override
  String toString() {
    return 'OrderRequest(cityFias: $cityFias, products: $products, user_name: $user_name, user_phone: $user_phone, user_email: $user_email, delivery_id: $delivery_id, delivery_type: $delivery_type, delivery_date: $delivery_date, payment_id: $payment_id, payment_type: $payment_type, address: $address, comment: $comment, repeated_days: $repeated_days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_phone, user_phone) ||
                other.user_phone == user_phone) &&
            (identical(other.user_email, user_email) ||
                other.user_email == user_email) &&
            (identical(other.delivery_id, delivery_id) ||
                other.delivery_id == delivery_id) &&
            (identical(other.delivery_type, delivery_type) ||
                other.delivery_type == delivery_type) &&
            (identical(other.delivery_date, delivery_date) ||
                other.delivery_date == delivery_date) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.payment_type, payment_type) ||
                other.payment_type == payment_type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.repeated_days, repeated_days) ||
                other.repeated_days == repeated_days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityFias,
      const DeepCollectionEquality().hash(_products),
      user_name,
      user_phone,
      user_email,
      delivery_id,
      delivery_type,
      delivery_date,
      payment_id,
      payment_type,
      address,
      comment,
      repeated_days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderRequestCopyWith<_$_OrderRequest> get copyWith =>
      __$$_OrderRequestCopyWithImpl<_$_OrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderRequestToJson(
      this,
    );
  }
}

abstract class _OrderRequest implements OrderRequest {
  factory _OrderRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false)
          final String? cityFias,
      required final List<ProductWithCount> products,
      required final String user_name,
      required final String user_phone,
      required final String user_email,
      required final String delivery_id,
      required final String delivery_type,
      required final String delivery_date,
      required final String payment_id,
      required final String payment_type,
      @JsonKey(includeIfNull: false)
          final String? address,
      required final String comment,
      @JsonKey(includeIfNull: false)
          final int? repeated_days}) = _$_OrderRequest;

  factory _OrderRequest.fromJson(Map<String, dynamic> json) =
      _$_OrderRequest.fromJson;

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  List<ProductWithCount> get products;
  @override
  String get user_name;
  @override
  String get user_phone;
  @override
  String get user_email;
  @override
  String get delivery_id;
  @override
  String get delivery_type;
  @override
  String get delivery_date;
  @override
  String get payment_id;
  @override
  String get payment_type;
  @override
  @JsonKey(includeIfNull: false)
  String? get address;
  @override
  String get comment;
  @override
  @JsonKey(includeIfNull: false)
  int? get repeated_days;
  @override
  @JsonKey(ignore: true)
  _$$_OrderRequestCopyWith<_$_OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
