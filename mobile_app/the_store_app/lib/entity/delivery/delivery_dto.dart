
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delivery_dto.freezed.dart';
part 'delivery_dto.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class DeliveryDto with _$DeliveryDto{
  factory DeliveryDto({
    required int deliveryId,
    required String deliveryPrice,
    required int userId,
}) = _DeliveryDto;

  factory DeliveryDto.fromJson(Map<String, dynamic> json) => _$DeliveryDtoFromJson(json);
}