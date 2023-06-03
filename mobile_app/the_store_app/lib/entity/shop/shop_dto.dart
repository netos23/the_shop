
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_dto.freezed.dart';
part 'shop_dto.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class ShopDto with _$ShopDto{
  factory ShopDto({
    required int id,
    required String shopName,
    required String shopPhone,
    required String shopWorkHours,
    required String shopPicture,
    required String lat,
    required String lon,
}) = _ShopDto;

  factory ShopDto.fromJson(Map<String, dynamic> json) => _$ShopDtoFromJson(json);
}