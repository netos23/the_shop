// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      user_name: json['user_name'] as String,
      user_phone: json['user_phone'] as String,
      user_email: json['user_email'] as String,
      created_at: json['created_at'] as String?,
      delivery_id: json['delivery_id'] as String,
      delivery_type: json['delivery_type'] as String,
      delivery_price: json['delivery_price'] as int?,
      delivery_date: json['delivery_date'] as String?,
      delivery_time: json['delivery_time'] as String?,
      payment_id: json['payment_id'] as String,
      payment_type: json['payment_type'] as String,
      items_price: Decimal.fromJson(json['items_price'] as String),
      discount: json['discount'] as int?,
      full_price: json['full_price'] == null
          ? null
          : Decimal.fromJson(json['full_price'] as String),
      promocode: json['promocode'] as String?,
      address: json['address'] as String?,
      comment: json['comment'] as String?,
      error_text: json['error_text'] as String?,
      brand: json['brand'] as String?,
      status: json['status'] as int?,
      repeated_days: json['repeated_days'] as int?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'user_name': instance.user_name,
      'user_phone': instance.user_phone,
      'user_email': instance.user_email,
      'created_at': instance.created_at,
      'delivery_id': instance.delivery_id,
      'delivery_type': instance.delivery_type,
      'delivery_price': instance.delivery_price,
      'delivery_date': instance.delivery_date,
      'delivery_time': instance.delivery_time,
      'payment_id': instance.payment_id,
      'payment_type': instance.payment_type,
      'items_price': instance.items_price,
      'discount': instance.discount,
      'full_price': instance.full_price,
      'promocode': instance.promocode,
      'address': instance.address,
      'comment': instance.comment,
      'error_text': instance.error_text,
      'brand': instance.brand,
      'status': instance.status,
      'repeated_days': instance.repeated_days,
    };

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      id: json['id'] as int?,
      count: json['count'] as int,
      picture: json['picture'] as String,
      name: json['name'] as String,
      price: Decimal.fromJson(json['price'] as String),
      discount: json['discount'] as int?,
      order: json['order'] as int?,
      product: json['product'] as int?,
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'picture': instance.picture,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'order': instance.order,
      'product': instance.product,
    };
