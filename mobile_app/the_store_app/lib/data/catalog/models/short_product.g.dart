// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShortProductDto _$ShortProductDtoFromJson(Map<String, dynamic> json) =>
    ShortProductDto(
      id: json['id'] as int,
      productName: json['productName'] as String,
      productPrice: Decimal.fromJson(json['productPrice'] as String),
      productOldPrice: json['productOldPrice'] == null
          ? null
          : Decimal.fromJson(json['productOldPrice'] as String),
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );
