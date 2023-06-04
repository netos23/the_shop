// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int,
      shop: json['shop'] == null
          ? null
          : PickupPoint.fromJson(json['shop'] as Map<String, dynamic>),
      orderTotal: json['orderTotal'] as String,
      orderStatus: json['orderStatus'] as bool,
      delivery: json['delivery'] == null
          ? null
          : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
      paymentDTO: Payment.fromJson(json['paymentDTO'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => ShortProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'shop': instance.shop,
      'orderTotal': instance.orderTotal,
      'orderStatus': instance.orderStatus,
      'delivery': instance.delivery,
      'paymentDTO': instance.paymentDTO,
      'products': instance.products,
    };
