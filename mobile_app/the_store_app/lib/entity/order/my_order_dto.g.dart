// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyOrderDto _$$_MyOrderDtoFromJson(Map<String, dynamic> json) =>
    _$_MyOrderDto(
      id: json['id'] as int,
      shop: json['shop'] == null
          ? null
          : ShopDto.fromJson(json['shop'] as Map<String, dynamic>),
      orderTotal: json['orderTotal'] as String,
      orderStatus: json['orderStatus'] as bool,
      delivery: json['delivery'] == null
          ? null
          : DeliveryDto.fromJson(json['delivery'] as Map<String, dynamic>),
      paymentDTO:
          PaymentDto.fromJson(json['paymentDTO'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => ShortProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyOrderDtoToJson(_$_MyOrderDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop': instance.shop,
      'orderTotal': instance.orderTotal,
      'orderStatus': instance.orderStatus,
      'delivery': instance.delivery,
      'paymentDTO': instance.paymentDTO,
      'products': instance.products,
    };
