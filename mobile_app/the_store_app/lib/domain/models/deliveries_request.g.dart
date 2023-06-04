// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveriesRequest _$$_DeliveriesRequestFromJson(Map<String, dynamic> json) =>
    _$_DeliveriesRequest(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeliveriesRequestToJson(
        _$_DeliveriesRequest instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_PaymentsRequest _$$_PaymentsRequestFromJson(Map<String, dynamic> json) =>
    _$_PaymentsRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryId: json['deliveryId'] as String,
    );

Map<String, dynamic> _$$_PaymentsRequestToJson(_$_PaymentsRequest instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'products': instance.products,
      'deliveryId': instance.deliveryId,
    };
