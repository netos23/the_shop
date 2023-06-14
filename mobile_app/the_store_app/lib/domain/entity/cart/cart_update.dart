import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_update.freezed.dart';

part 'cart_update.g.dart';

@freezed
class CartUpdate with _$CartUpdate {
  factory CartUpdate({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'count', includeIfNull: false) int? count,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CartUpdate;

  factory CartUpdate.fromJson(Map<String, dynamic> json) =>
      _$CartUpdateFromJson(json);
}
