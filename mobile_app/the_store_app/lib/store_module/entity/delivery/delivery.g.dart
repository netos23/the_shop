// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      deliveryId: json['deliveryId'] as int,
      deliveryPrice: json['deliveryPrice'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'deliveryId': instance.deliveryId,
      'deliveryPrice': instance.deliveryPrice,
      'userId': instance.userId,
    };
