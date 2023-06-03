// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopDto _$$_ShopDtoFromJson(Map<String, dynamic> json) => _$_ShopDto(
      id: json['id'] as int,
      shopName: json['shopName'] as String,
      shopPhone: json['shopPhone'] as String,
      shopWorkHours: json['shopWorkHours'] as String,
      shopPicture: json['shopPicture'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
    );

Map<String, dynamic> _$$_ShopDtoToJson(_$_ShopDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopName': instance.shopName,
      'shopPhone': instance.shopPhone,
      'shopWorkHours': instance.shopWorkHours,
      'shopPicture': instance.shopPicture,
      'lat': instance.lat,
      'lon': instance.lon,
    };
