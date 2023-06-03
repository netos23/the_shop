// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      id: json['id'] as int,
      productName: json['productName'] as String,
      productPrice: json['productPrice'] as String,
      productOldPrice: json['productOldPrice'] as String?,
      productDescription: json['productDescription'] as String,
      productAmount: json['productAmount'] as int,
      categoryId: json['categoryId'] as int,
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productOldPrice': instance.productOldPrice,
      'productDescription': instance.productDescription,
      'productAmount': instance.productAmount,
      'categoryId': instance.categoryId,
      'pictures': instance.pictures,
    };
