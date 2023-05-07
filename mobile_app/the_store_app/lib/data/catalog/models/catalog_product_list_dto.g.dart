// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogProductListDto _$CatalogProductListDtoFromJson(
        Map<String, dynamic> json) =>
    CatalogProductListDto(
      count: json['count'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ShortProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
