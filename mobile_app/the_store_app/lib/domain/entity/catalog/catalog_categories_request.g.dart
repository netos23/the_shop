// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogCategoriesRequest _$$_CatalogCategoriesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CatalogCategoriesRequest(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_CatalogCategoriesRequestToJson(
    _$_CatalogCategoriesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
