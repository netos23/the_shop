import 'package:admin_app/domain/models/product_with_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request.freezed.dart';

part 'order_request.g.dart';

@freezed
class OrderRequest with _$OrderRequest {
  factory OrderRequest({
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
    required List<ProductWithCount> products,
    required String user_name,
    required String user_phone,
    required String user_email,
    required String delivery_id,
    required String delivery_type,
    required String delivery_date,
    required String payment_id,
    required String payment_type,
    @JsonKey(includeIfNull: false) String? address,
    required String comment,
    @JsonKey(includeIfNull: false) int? repeated_days,
  }) = _OrderRequest;

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);
}
