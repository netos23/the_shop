import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_product.freezed.dart';
part 'short_product.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
class ShortProduct with _$ShortProduct {
  factory ShortProduct({
    required int id,
    required String productName,
    required Decimal productPrice,
    Decimal? productOldPrice,
    required List<String> pictures,
  }) = _ShortProduct;
}
