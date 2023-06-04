import 'package:decimal/decimal.dart';
import 'package:admin_app/domain/models/badge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';

part 'product_detail.g.dart';

@freezed
class ProductDetail with _$ProductDetail {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProductDetail({
    required int id,
    required Decimal price,
    required List<Badge> badges,
    required String name,
    String? brand,
    String? picture,
    String? article,
    String? description,
    bool? available,
    double? rating,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'city_fias') String? cityFias,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}
