import 'package:decimal/decimal.dart';
import 'package:admin_app/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_product.dart';

part 'calc_cart.freezed.dart';

part 'calc_cart.g.dart';

@freezed
class CalcCart with _$CalcCart {
  factory CalcCart({
    @JsonKey(name: 'price') required Decimal price,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'products') required List<CartProduct> products,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'applied') bool? applied,
  }) = _CalcCart;

  factory CalcCart.fromJson(Map<String, dynamic> json) =>
      _$CalcCartFromJson(json);
}
