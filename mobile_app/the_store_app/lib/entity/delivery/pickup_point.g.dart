// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PickupPoint _$$_PickupPointFromJson(Map<String, dynamic> json) =>
    _$_PickupPoint(
      id: json['id'] as int,
      shopName: json['shopName'] as String,
      shopAddress: json['shopAddress'] as String,
      shopPhone: json['shopPhone'] as String,
      shopWorkHours: json['shopWorkHours'] as String,
      shopPicture: json['shopPicture'] as String,
      lat: Decimal.fromJson(json['lat'] as String),
      lon: Decimal.fromJson(json['lon'] as String),
    );

Map<String, dynamic> _$$_PickupPointToJson(_$_PickupPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopName': instance.shopName,
      'shopAddress': instance.shopAddress,
      'shopPhone': instance.shopPhone,
      'shopWorkHours': instance.shopWorkHours,
      'shopPicture': instance.shopPicture,
      'lat': instance.lat,
      'lon': instance.lon,
    };
