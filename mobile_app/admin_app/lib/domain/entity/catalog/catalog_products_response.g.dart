// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogProductsResponse _$$_CatalogProductsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CatalogProductsResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$_CatalogProductsResponseToJson(
        _$_CatalogProductsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'count': instance.count,
      'next': instance.next,
    };
