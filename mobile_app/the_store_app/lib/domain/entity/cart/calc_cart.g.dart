// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalcCart _$$_CalcCartFromJson(Map<String, dynamic> json) => _$_CalcCart(
      price: Decimal.fromJson(json['price'] as String),
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      applied: json['applied'] as bool?,
    );

Map<String, dynamic> _$$_CalcCartToJson(_$_CalcCart instance) =>
    <String, dynamic>{
      'price': instance.price,
      'count': instance.count,
      'products': instance.products,
      'old_price': instance.oldPrice,
      'applied': instance.applied,
    };
