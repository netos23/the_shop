import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';

part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  factory Delivery({
    required String id,
    required String title,
    required String description,
    required String type,
    required String icon,
    String? farm_address,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}

@freezed
class Payment with _$Payment {
  factory Payment({
    required String id,
    required String title,
    required String type,
    required String description,
    required String icon,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
