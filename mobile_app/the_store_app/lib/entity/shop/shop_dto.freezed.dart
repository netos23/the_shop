// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return _ShopDto.fromJson(json);
}

/// @nodoc
mixin _$ShopDto {
  int get id => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get shopPhone => throw _privateConstructorUsedError;
  String get shopWorkHours => throw _privateConstructorUsedError;
  String get shopPicture => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDtoCopyWith<ShopDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDtoCopyWith<$Res> {
  factory $ShopDtoCopyWith(ShopDto value, $Res Function(ShopDto) then) =
      _$ShopDtoCopyWithImpl<$Res, ShopDto>;
  @useResult
  $Res call(
      {int id,
      String shopName,
      String shopPhone,
      String shopWorkHours,
      String shopPicture,
      String lat,
      String lon});
}

/// @nodoc
class _$ShopDtoCopyWithImpl<$Res, $Val extends ShopDto>
    implements $ShopDtoCopyWith<$Res> {
  _$ShopDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shopName = null,
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
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopDtoCopyWith<$Res> implements $ShopDtoCopyWith<$Res> {
  factory _$$_ShopDtoCopyWith(
          _$_ShopDto value, $Res Function(_$_ShopDto) then) =
      __$$_ShopDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String shopName,
      String shopPhone,
      String shopWorkHours,
      String shopPicture,
      String lat,
      String lon});
}

/// @nodoc
class __$$_ShopDtoCopyWithImpl<$Res>
    extends _$ShopDtoCopyWithImpl<$Res, _$_ShopDto>
    implements _$$_ShopDtoCopyWith<$Res> {
  __$$_ShopDtoCopyWithImpl(_$_ShopDto _value, $Res Function(_$_ShopDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shopName = null,
    Object? shopPhone = null,
    Object? shopWorkHours = null,
    Object? shopPicture = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$_ShopDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
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
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopDto implements _ShopDto {
  _$_ShopDto(
      {required this.id,
      required this.shopName,
      required this.shopPhone,
      required this.shopWorkHours,
      required this.shopPicture,
      required this.lat,
      required this.lon});

  factory _$_ShopDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopDtoFromJson(json);

  @override
  final int id;
  @override
  final String shopName;
  @override
  final String shopPhone;
  @override
  final String shopWorkHours;
  @override
  final String shopPicture;
  @override
  final String lat;
  @override
  final String lon;

  @override
  String toString() {
    return 'ShopDto(id: $id, shopName: $shopName, shopPhone: $shopPhone, shopWorkHours: $shopWorkHours, shopPicture: $shopPicture, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
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
  int get hashCode => Object.hash(runtimeType, id, shopName, shopPhone,
      shopWorkHours, shopPicture, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopDtoCopyWith<_$_ShopDto> get copyWith =>
      __$$_ShopDtoCopyWithImpl<_$_ShopDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopDtoToJson(
      this,
    );
  }
}

abstract class _ShopDto implements ShopDto {
  factory _ShopDto(
      {required final int id,
      required final String shopName,
      required final String shopPhone,
      required final String shopWorkHours,
      required final String shopPicture,
      required final String lat,
      required final String lon}) = _$_ShopDto;

  factory _ShopDto.fromJson(Map<String, dynamic> json) = _$_ShopDto.fromJson;

  @override
  int get id;
  @override
  String get shopName;
  @override
  String get shopPhone;
  @override
  String get shopWorkHours;
  @override
  String get shopPicture;
  @override
  String get lat;
  @override
  String get lon;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDtoCopyWith<_$_ShopDto> get copyWith =>
      throw _privateConstructorUsedError;
}
