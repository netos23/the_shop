import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';


@Freezed(
  fromJson: true,
  toJson: true,
)
class ProductDto with _$ProductDto{
  factory ProductDto({
    required int id,
    required String productName,
    required String productPrice,
    String? productOldPrice,
    required String productDescription,
    required int productAmount,
    required int categoryId,
    required List<String> pictures,
}) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}