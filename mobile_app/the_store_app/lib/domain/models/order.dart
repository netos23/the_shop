import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    int? id,
    required List<OrderItem> items,
    required String user_name,
    required String user_phone,
    required String user_email,
    String? created_at,
    required String delivery_id,
    required String delivery_type,
    int? delivery_price,
    String? delivery_date,
    String? delivery_time,
    required String payment_id,
    required String payment_type,
    required Decimal items_price,
    int? discount,
    Decimal? full_price,
    String? promocode,
    String? address,
    String? comment,
    String? error_text,
    String? brand,
    int? status,
    int? repeated_days,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    int? id,
    required int count,
    required String picture,
    required String name,
    required Decimal price,
    int? discount,
    int? order,
    int? product,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
