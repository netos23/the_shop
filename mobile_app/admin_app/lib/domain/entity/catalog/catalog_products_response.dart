import 'package:admin_app/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products_response.freezed.dart';

part 'catalog_products_response.g.dart';

@freezed
class CatalogProductsResponse with _$CatalogProductsResponse {
  factory CatalogProductsResponse({
    required List<Product> results,
    required int count,
    required String? next,
  }) = _CatalogProductsResponse;

  factory CatalogProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductsResponseFromJson(json);
}
