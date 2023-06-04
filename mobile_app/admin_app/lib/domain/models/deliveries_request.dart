import 'package:admin_app/domain/models/product_with_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliveries_request.freezed.dart';
part 'deliveries_request.g.dart';

@freezed
class DeliveriesRequest with _$DeliveriesRequest {
  factory DeliveriesRequest({
    required List<ProductWithCount> products,
  }) = _DeliveriesRequest;

  factory DeliveriesRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesRequestFromJson(json);
}

@freezed
class PaymentsRequest with _$PaymentsRequest {
  factory PaymentsRequest({
    @JsonKey(name: 'city_fias', includeIfNull: true) String? cityFias,
    required List<ProductWithCount> products,
    required String deliveryId,
  }) = _PaymentsRequest;

  factory PaymentsRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentsRequestFromJson(json);
}
