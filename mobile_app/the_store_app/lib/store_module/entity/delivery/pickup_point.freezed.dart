// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PickupPoint _$PickupPointFromJson(Map<String, dynamic> json) {
  return _PickupPoint.fromJson(json);
}

/// @nodoc
mixin _$PickupPoint {
  int get id => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get shopAddress => throw _privateConstructorUsedError;
  String get shopPhone => throw _privateConstructorUsedError;
  String get shopWorkHours => throw _privateConstructorUsedError;
  String get shopPicture => throw _privateConstructorUsedError;
  Decimal get lat => throw _privateConstructorUsedError;
  Decimal get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupPointCopyWith<PickupPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupPointCopyWith<$Res> {
  factory $PickupPointCopyWith(
          PickupPoint value, $Res Function(PickupPoint) then) =
      _$PickupPointCopyWithImpl<$Res, PickupPoint>;
  @useResult
  $Res call(
      {int id,
      String shopName,
      String shopAddress,
      String shopPhone,
      String shopWorkHours,
      String shopPicture,
      Decimal lat,
      Decimal lon});
}

/// @nodoc
class _$PickupPointCopyWithImpl<$Res, $Val extends PickupPoint>
    implements $PickupPointCopyWith<$Res> {
  _$PickupPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shopName = null,
    Object? shopAddress = null,
    Object? shopPhone = null,
    Object? shopWorkHours = null,
    Object? shopPicture = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress: null == shopAddress
          ? _value.shopAddress
          : shopAddress // ignore: cast_nullable_to_non_nullable
              as String,
      shopPhone: null == shopPhone
          ? _value.shopPhone
          : shopPhone // ignore: cast_nullable_to_non_nullable
              as String,
      shopWorkHours: null == shopWorkHours
          ? _value.shopWorkHours
          : shopWorkHours // ignore: cast_nullable_to_non_nullable
              as String,
      shopPicture: null == shopPicture
          ? _value.shopPicture
          : shopPicture // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickupPointCopyWith<$Res>
    implements $PickupPointCopyWith<$Res> {
  factory _$$_PickupPointCopyWith(
          _$_PickupPoint value, $Res Function(_$_PickupPoint) then) =
      __$$_PickupPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String shopName,
      String shopAddress,
      String shopPhone,
      String shopWorkHours,
      String shopPicture,
      Decimal lat,
      Decimal lon});
}

/// @nodoc
class __$$_PickupPointCopyWithImpl<$Res>
    extends _$PickupPointCopyWithImpl<$Res, _$_PickupPoint>
    implements _$$_PickupPointCopyWith<$Res> {
  __$$_PickupPointCopyWithImpl(
      _$_PickupPoint _value, $Res Function(_$_PickupPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shopName = null,
    Object? shopAddress = null,
    Object? shopPhone = null,
    Object? shopWorkHours = null,
    Object? shopPicture = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$_PickupPoint(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress: null == shopAddress
          ? _value.shopAddress
          : shopAddress // ignore: cast_nullable_to_non_nullable
              as String,
      shopPhone: null == shopPhone
          ? _value.shopPhone
          : shopPhone // ignore: cast_nullable_to_non_nullable
              as String,
      shopWorkHours: null == shopWorkHours
          ? _value.shopWorkHours
          : shopWorkHours // ignore: cast_nullable_to_non_nullable
              as String,
      shopPicture: null == shopPicture
          ? _value.shopPicture
          : shopPicture // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupPoint implements _PickupPoint {
  const _$_PickupPoint(
      {required this.id,
      required this.shopName,
      required this.shopAddress,
      required this.shopPhone,
      required this.shopWorkHours,
      required this.shopPicture,
      required this.lat,
      required this.lon});

  factory _$_PickupPoint.fromJson(Map<String, dynamic> json) =>
      _$$_PickupPointFromJson(json);

  @override
  final int id;
  @override
  final String shopName;
  @override
  final String shopAddress;
  @override
  final String shopPhone;
  @override
  final String shopWorkHours;
  @override
  final String shopPicture;
  @override
  final Decimal lat;
  @override
  final Decimal lon;

  @override
  String toString() {
    return 'PickupPoint(id: $id, shopName: $shopName, shopAddress: $shopAddress, shopPhone: $shopPhone, shopWorkHours: $shopWorkHours, shopPicture: $shopPicture, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickupPoint &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopAddress, shopAddress) ||
                other.shopAddress == shopAddress) &&
            (identical(other.shopPhone, shopPhone) ||
                other.shopPhone == shopPhone) &&
            (identical(other.shopWorkHours, shopWorkHours) ||
                other.shopWorkHours == shopWorkHours) &&
            (identical(other.shopPicture, shopPicture) ||
                other.shopPicture == shopPicture) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, shopName, shopAddress,
      shopPhone, shopWorkHours, shopPicture, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickupPointCopyWith<_$_PickupPoint> get copyWith =>
      __$$_PickupPointCopyWithImpl<_$_PickupPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupPointToJson(
      this,
    );
  }
}

abstract class _PickupPoint implements PickupPoint {
  const factory _PickupPoint(
      {required final int id,
      required final String shopName,
      required final String shopAddress,
      required final String shopPhone,
      required final String shopWorkHours,
      required final String shopPicture,
      required final Decimal lat,
      required final Decimal lon}) = _$_PickupPoint;

  factory _PickupPoint.fromJson(Map<String, dynamic> json) =
      _$_PickupPoint.fromJson;

  @override
  int get id;
  @override
  String get shopName;
  @override
  String get shopAddress;
  @override
  String get shopPhone;
  @override
  String get shopWorkHours;
  @override
  String get shopPicture;
  @override
  Decimal get lat;
  @override
  Decimal get lon;
  @override
  @JsonKey(ignore: true)
  _$$_PickupPointCopyWith<_$_PickupPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
