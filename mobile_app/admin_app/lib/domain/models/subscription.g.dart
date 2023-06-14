// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      id: json['id'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      created_at: json['created_at'] as String,
      repeated_days: json['repeated_days'] as int,
      count: json['count'] as int,
      total_price: Decimal.fromJson(json['total_price'] as String),
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'created_at': instance.created_at,
      'repeated_days': instance.repeated_days,
      'count': instance.count,
      'total_price': instance.total_price,
      'order': instance.order,
    };
