import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String productName,
    required String productPrice,
    String? productOldPrice,
    required String productDescription,
    required int productAmount,
    required int categoryId,
    required List<String> pictures,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
