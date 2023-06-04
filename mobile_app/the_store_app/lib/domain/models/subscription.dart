import 'package:decimal/decimal.dart';
import 'package:the_store_app/domain/models/order.dart';
import 'package:the_store_app/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  factory Subscription({
    required int id,
    required Product product,
    required String created_at,
    required int repeated_days,
    required int count,
    required Decimal total_price,
    required Order order,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
