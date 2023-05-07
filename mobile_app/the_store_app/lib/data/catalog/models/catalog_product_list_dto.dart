import 'package:json_annotation/json_annotation.dart';
import 'package:the_store_app/util/typedefs.dart';

import 'short_product.dart';

part 'catalog_product_list_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  createToJson: false,
)
class CatalogProductListDto {
  CatalogProductListDto({
    required this.count,
    required this.page,
    required this.size,
    required this.products,
  });

  final int count;
  final int page;
  final int size;
  final List<ShortProductDto> products;

  factory CatalogProductListDto.fromJson(Json json) =>
      _$CatalogProductListDtoFromJson(json);
}
