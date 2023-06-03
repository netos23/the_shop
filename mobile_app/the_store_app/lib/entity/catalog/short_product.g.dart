// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortProduct _$$_ShortProductFromJson(Map<String, dynamic> json) =>
    _$_ShortProduct(
      id: json['id'] as int,
      productName: json['productName'] as String,
      productPrice: Decimal.fromJson(json['productPrice'] as String),
      productOldPrice: json['productOldPrice'] == null
          ? null
          : Decimal.fromJson(json['productOldPrice'] as String),
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ShortProductToJson(_$_ShortProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productOldPrice': instance.productOldPrice,
      'pictures': instance.pictures,
    };
