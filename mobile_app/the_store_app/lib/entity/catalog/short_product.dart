import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_product.freezed.dart';

part 'short_product.g.dart';

@freezed
class ShortProduct with _$ShortProduct {
  factory ShortProduct({
    required int id,
    required String productName,
    required Decimal productPrice,
    Decimal? productOldPrice,
    required List<String> pictures,
  }) = _ShortProduct;

  factory ShortProduct.fromJson(Map<String, dynamic> json) =>
      _$ShortProductFromJson(json);
}
