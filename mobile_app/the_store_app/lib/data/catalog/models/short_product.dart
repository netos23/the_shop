import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_store_app/util/typedefs.dart';

part 'short_product.g.dart';

@JsonSerializable(
  includeIfNull: false,
  createToJson: false,
)
class ShortProductDto {
  ShortProductDto({
    required this.id,
    required this.productName,
    required this.productPrice,
    this.productOldPrice,
    required this.pictures,
  });

  final int id;
  final String productName;
  final Decimal productPrice;
  final Decimal? productOldPrice;
  final List<String> pictures;

  factory ShortProductDto.fromJson(Json json) =>
      _$ShortProductDtoFromJson(json);
}
