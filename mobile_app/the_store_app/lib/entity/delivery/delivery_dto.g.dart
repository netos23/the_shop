// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryDto _$$_DeliveryDtoFromJson(Map<String, dynamic> json) =>
    _$_DeliveryDto(
      deliveryId: json['deliveryId'] as int,
      deliveryPrice: json['deliveryPrice'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$_DeliveryDtoToJson(_$_DeliveryDto instance) =>
    <String, dynamic>{
      'deliveryId': instance.deliveryId,
      'deliveryPrice': instance.deliveryPrice,
      'userId': instance.userId,
    };
