import 'package:freezed_annotation/freezed_annotation.dart';

import 'short_product.dart';

part 'catalog_product_list.freezed.dart';

@freezed
class CatalogProductList with _$CatalogProductList {
  factory CatalogProductList({
    required int count,
    required int page,
    required int size,
    required List<ShortProduct> products,
  }) = _CatalogProductList;
}
