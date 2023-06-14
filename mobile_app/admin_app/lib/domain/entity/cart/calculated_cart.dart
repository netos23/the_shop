import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculated_cart.freezed.dart';

part 'calculated_cart.g.dart';

@freezed
class CalculatedCart with _$CalculatedCart {
  factory CalculatedCart({
    @JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CalculatedCart;

  factory CalculatedCart.fromJson(Map<String, dynamic> json) =>
      _$CalculatedCartFromJson(json);
}
