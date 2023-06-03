// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyUserDto _$MyUserDtoFromJson(Map<String, dynamic> json) {
  return _MyUserDto.fromJson(json);
}

/// @nodoc
mixin _$MyUserDto {
  int get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get userPhone => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  bool? get userAnonimus => throw _privateConstructorUsedError;
  int? get userFirebase => throw _privateConstructorUsedError;
  List<MyOrderDto>? get orders => throw _privateConstructorUsedError;
  List<ProductDto>? get basket => throw _privateConstructorUsedError;
  List<ProductDto>? get favourites => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyUserDtoCopyWith<MyUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserDtoCopyWith<$Res> {
  factory $MyUserDtoCopyWith(MyUserDto value, $Res Function(MyUserDto) then) =
      _$MyUserDtoCopyWithImpl<$Res, MyUserDto>;
  @useResult
  $Res call(
      {int id,
      String? username,
      String? userEmail,
      String? userPhone,
      String? gender,
      bool? userAnonimus,
      int? userFirebase,
      List<MyOrderDto>? orders,
      List<ProductDto>? basket,
      List<ProductDto>? favourites,
      City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$MyUserDtoCopyWithImpl<$Res, $Val extends MyUserDto>
    implements $MyUserDtoCopyWith<$Res> {
  _$MyUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? gender = freezed,
    Object? userAnonimus = freezed,
    Object? userFirebase = freezed,
    Object? orders = freezed,
    Object? basket = freezed,
    Object? favourites = freezed,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAnonimus: freezed == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool?,
      userFirebase: freezed == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<MyOrderDto>?,
      basket: freezed == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>?,
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyUserDtoCopyWith<$Res> implements $MyUserDtoCopyWith<$Res> {
  factory _$$_MyUserDtoCopyWith(
          _$_MyUserDto value, $Res Function(_$_MyUserDto) then) =
      __$$_MyUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? username,
      String? userEmail,
      String? userPhone,
      String? gender,
      bool? userAnonimus,
      int? userFirebase,
      List<MyOrderDto>? orders,
      List<ProductDto>? basket,
      List<ProductDto>? favourites,
      City city});

  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$_MyUserDtoCopyWithImpl<$Res>
    extends _$MyUserDtoCopyWithImpl<$Res, _$_MyUserDto>
    implements _$$_MyUserDtoCopyWith<$Res> {
  __$$_MyUserDtoCopyWithImpl(
      _$_MyUserDto _value, $Res Function(_$_MyUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? gender = freezed,
    Object? userAnonimus = freezed,
    Object? userFirebase = freezed,
    Object? orders = freezed,
    Object? basket = freezed,
    Object? favourites = freezed,
    Object? city = null,
  }) {
    return _then(_$_MyUserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAnonimus: freezed == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool?,
      userFirebase: freezed == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<MyOrderDto>?,
      basket: freezed == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>?,
      favourites: freezed == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyUserDto implements _MyUserDto {
  _$_MyUserDto(
      {required this.id,
      this.username,
      this.userEmail,
      this.userPhone,
      this.gender,
      this.userAnonimus,
      this.userFirebase,
      final List<MyOrderDto>? orders,
      final List<ProductDto>? basket,
      final List<ProductDto>? favourites,
      required this.city})
      : _orders = orders,
        _basket = basket,
        _favourites = favourites;

  factory _$_MyUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_MyUserDtoFromJson(json);

  @override
  final int id;
  @override
  final String? username;
  @override
  final String? userEmail;
  @override
  final String? userPhone;
  @override
  final String? gender;
  @override
  final bool? userAnonimus;
  @override
  final int? userFirebase;
  final List<MyOrderDto>? _orders;
  @override
  List<MyOrderDto>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductDto>? _basket;
  @override
  List<ProductDto>? get basket {
    final value = _basket;
    if (value == null) return null;
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductDto>? _favourites;
  @override
  List<ProductDto>? get favourites {
    final value = _favourites;
    if (value == null) return null;
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final City city;

  @override
  String toString() {
    return 'MyUserDto(id: $id, username: $username, userEmail: $userEmail, userPhone: $userPhone, gender: $gender, userAnonimus: $userAnonimus, userFirebase: $userFirebase, orders: $orders, basket: $basket, favourites: $favourites, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userAnonimus, userAnonimus) ||
                other.userAnonimus == userAnonimus) &&
            (identical(other.userFirebase, userFirebase) ||
                other.userFirebase == userFirebase) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other._basket, _basket) &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      userEmail,
      userPhone,
      gender,
      userAnonimus,
      userFirebase,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_basket),
      const DeepCollectionEquality().hash(_favourites),
      city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyUserDtoCopyWith<_$_MyUserDto> get copyWith =>
      __$$_MyUserDtoCopyWithImpl<_$_MyUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyUserDtoToJson(
      this,
    );
  }
}

abstract class _MyUserDto implements MyUserDto {
  factory _MyUserDto(
      {required final int id,
      final String? username,
      final String? userEmail,
      final String? userPhone,
      final String? gender,
      final bool? userAnonimus,
      final int? userFirebase,
      final List<MyOrderDto>? orders,
      final List<ProductDto>? basket,
      final List<ProductDto>? favourites,
      required final City city}) = _$_MyUserDto;

  factory _MyUserDto.fromJson(Map<String, dynamic> json) =
      _$_MyUserDto.fromJson;

  @override
  int get id;
  @override
  String? get username;
  @override
  String? get userEmail;
  @override
  String? get userPhone;
  @override
  String? get gender;
  @override
  bool? get userAnonimus;
  @override
  int? get userFirebase;
  @override
  List<MyOrderDto>? get orders;
  @override
  List<ProductDto>? get basket;
  @override
  List<ProductDto>? get favourites;
  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$_MyUserDtoCopyWith<_$_MyUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
