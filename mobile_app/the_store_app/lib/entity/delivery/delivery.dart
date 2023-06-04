import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';

part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  factory Delivery({
    required int deliveryId,
    required String deliveryPrice,
    required int userId,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}
