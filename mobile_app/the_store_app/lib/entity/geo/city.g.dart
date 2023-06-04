// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      name: json['cityName'] as String,
      region: json['cityRegion'] as String,
      cityId: json['cityCode'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'cityName': instance.name,
      'cityRegion': instance.region,
      'cityCode': instance.cityId,
      'lat': instance.lat,
      'lon': instance.lon,
    };
