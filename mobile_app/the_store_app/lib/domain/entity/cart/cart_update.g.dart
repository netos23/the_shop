// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartUpdate _$$_CartUpdateFromJson(Map<String, dynamic> json) =>
    _$_CartUpdate(
      productId: json['product_id'] as int,
      count: json['count'] as int?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_CartUpdateToJson(_$_CartUpdate instance) {
  final val = <String, dynamic>{
    'product_id': instance.productId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('city_fias', instance.cityFias);
  return val;
}
