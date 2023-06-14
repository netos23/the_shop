import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products_request.freezed.dart';

part 'catalog_products_request.g.dart';

@freezed
class CatalogProductsRequest with _$CatalogProductsRequest {
  factory CatalogProductsRequest({
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
    @JsonKey(name: 'sort_by', includeIfNull: false) String? sortBy,
    @JsonKey(name: 'search', includeIfNull: false) String? search,
    @JsonKey(name: 'brand', includeIfNull: false) String? brand,
    @JsonKey(name: 'category_ids', includeIfNull: false) List<int>? categoryIds,
    @JsonKey(name: 'product_ids', includeIfNull: false) List<int>? productIds,
  }) = _CatalogProductsRequest;

  factory CatalogProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductsRequestFromJson(json);
}
