import 'package:the_store_app/data/catalog/models/models.dart';
import 'package:the_store_app/entity/catalog/catalog_export.dart';

import 'short_product_mapper.dart';

CatalogProductList mapCatalogProductListFromDto(CatalogProductListDto dto) {
  return CatalogProductList(
    count: dto.count,
    page: dto.page,
    size: dto.size,
    products: dto.products.map(mapShortProductFromDto).toList(),
  );
}

CatalogProductListDto mapCatalogProductListToDto(CatalogProductList entity) {
  return CatalogProductListDto(
    count: entity.count,
    page: entity.page,
    size: entity.size,
    products: entity.products.map(mapShortProductToDto).toList(),
  );
}
