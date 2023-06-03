import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_point.freezed.dart';

part 'pickup_point.g.dart';

@freezed
class PickupPoint with _$PickupPoint {
  const factory PickupPoint({
    required int id,
    required String shopName,
    required String shopAddress,
    required String shopPhone,
    required String shopWorkHours,
    required String shopPicture,
    required Decimal lat,
    required Decimal lon,
  }) = _PickupPoint;

  factory PickupPoint.fromJson(Map<String, dynamic> json) =>
      _$PickupPointFromJson(json);
}
