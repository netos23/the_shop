import 'package:the_store_app/data/catalog/models/short_product.dart';
import 'package:the_store_app/entity/catalog/catalog_export.dart';

ShortProduct mapShortProductFromDto(ShortProductDto dto) {
  return ShortProduct(
    id: dto.id,
    productName: dto.productName,
    productPrice: dto.productPrice,
    pictures: dto.pictures,
  );
}

ShortProductDto mapShortProductToDto(ShortProduct entity) {
  return ShortProductDto(
    id: entity.id,
    productName: entity.productName,
    productPrice: entity.productPrice,
    pictures: entity.pictures,
  );
}
