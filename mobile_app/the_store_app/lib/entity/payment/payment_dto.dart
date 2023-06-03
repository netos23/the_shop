import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';


@Freezed(
  fromJson: true,
  toJson: true,
)
class PaymentDto with _$PaymentDto {
  factory PaymentDto({
    required int id,
    required String type,
    required String picture,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);

}
