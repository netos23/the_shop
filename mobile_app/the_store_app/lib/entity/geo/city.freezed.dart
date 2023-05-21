// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  @JsonKey(name: "cityName")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "cityRegion")
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: "cityCode")
  String get cityId => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {@JsonKey(name: "cityName") String name,
      @JsonKey(name: "cityRegion") String region,
      @JsonKey(name: "cityCode") String cityId,
      double? lat,
      double? lon});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? cityId = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cityName") String name,
      @JsonKey(name: "cityRegion") String region,
      @JsonKey(name: "cityCode") String cityId,
      double? lat,
      double? lon});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res, _$_City>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? cityId = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_City(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_City implements _City {
  _$_City(
      {@JsonKey(name: "cityName") required this.name,
      @JsonKey(name: "cityRegion") required this.region,
      @JsonKey(name: "cityCode") required this.cityId,
      this.lat,
      this.lon});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  @JsonKey(name: "cityName")
  final String name;
  @override
  @JsonKey(name: "cityRegion")
  final String region;
  @override
  @JsonKey(name: "cityCode")
  final String cityId;
  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'City(name: $name, region: $region, cityId: $cityId, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, cityId, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);
}

abstract class _City implements City {
  factory _City(
      {@JsonKey(name: "cityName") required final String name,
      @JsonKey(name: "cityRegion") required final String region,
      @JsonKey(name: "cityCode") required final String cityId,
      final double? lat,
      final double? lon}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  @JsonKey(name: "cityName")
  String get name;
  @override
  @JsonKey(name: "cityRegion")
  String get region;
  @override
  @JsonKey(name: "cityCode")
  String get cityId;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}
