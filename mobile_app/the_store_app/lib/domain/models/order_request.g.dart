// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderRequest _$$_OrderRequestFromJson(Map<String, dynamic> json) =>
    _$_OrderRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      user_name: json['user_name'] as String,
      user_phone: json['user_phone'] as String,
      user_email: json['user_email'] as String,
      delivery_id: json['delivery_id'] as String,
      delivery_type: json['delivery_type'] as String,
      delivery_date: json['delivery_date'] as String,
      payment_id: json['payment_id'] as String,
      payment_type: json['payment_type'] as String,
      address: json['address'] as String?,
      comment: json['comment'] as String,
      repeated_days: json['repeated_days'] as int?,
    );

Map<String, dynamic> _$$_OrderRequestToJson(_$_OrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  val['products'] = instance.products;
  val['user_name'] = instance.user_name;
  val['user_phone'] = instance.user_phone;
  val['user_email'] = instance.user_email;
  val['delivery_id'] = instance.delivery_id;
  val['delivery_type'] = instance.delivery_type;
  val['delivery_date'] = instance.delivery_date;
  val['payment_id'] = instance.payment_id;
  val['payment_type'] = instance.payment_type;
  writeNotNull('address', instance.address);
  val['comment'] = instance.comment;
  writeNotNull('repeated_days', instance.repeated_days);
  return val;
}
