// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Delivery _$$DeliveryFromJson(Map<String, dynamic> json) => _$Delivery(
      address: json['address'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeliveryToJson(_$Delivery instance) =>
    <String, dynamic>{
      'address': instance.address,
      'runtimeType': instance.$type,
    };

_$Shop _$$ShopFromJson(Map<String, dynamic> json) => _$Shop(
      point: PickupPoint.fromJson(json['point'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShopToJson(_$Shop instance) => <String, dynamic>{
      'point': instance.point,
      'runtimeType': instance.$type,
    };
