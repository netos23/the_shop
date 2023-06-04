// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogProductsRequest _$$_CatalogProductsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CatalogProductsRequest(
      cityFias: json['city_fias'] as String?,
      sortBy: json['sort_by'] as String?,
      search: json['search'] as String?,
      brand: json['brand'] as String?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_CatalogProductsRequestToJson(
    _$_CatalogProductsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  writeNotNull('sort_by', instance.sortBy);
  writeNotNull('search', instance.search);
  writeNotNull('brand', instance.brand);
  writeNotNull('category_ids', instance.categoryIds);
  writeNotNull('product_ids', instance.productIds);
  return val;
}
