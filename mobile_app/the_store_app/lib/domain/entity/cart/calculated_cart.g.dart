// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatedCart _$$_CalculatedCartFromJson(Map<String, dynamic> json) =>
    _$_CalculatedCart(
      promocode: json['promocode'] as String?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_CalculatedCartToJson(_$_CalculatedCart instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('promocode', instance.promocode);
  writeNotNull('city_fias', instance.cityFias);
  return val;
}
