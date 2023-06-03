// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogProductList _$$_CatalogProductListFromJson(
        Map<String, dynamic> json) =>
    _$_CatalogProductList(
      count: json['count'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ShortProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CatalogProductListToJson(
        _$_CatalogProductList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'size': instance.size,
      'products': instance.products,
    };
