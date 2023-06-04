import 'package:the_store_app/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'product') required Product product,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
