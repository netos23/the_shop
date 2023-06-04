import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';

part 'delivery_method.freezed.dart';

part 'delivery_method.g.dart';

@freezed
sealed class DeliveryMethod
    with _$DeliveryMethod
    implements Serializable<DeliveryMethod> {
  const factory DeliveryMethod.delivery({
    required String address,
  }) = Delivery;

  const factory DeliveryMethod.shop({
    required PickupPoint point,
  }) = Shop;

  factory DeliveryMethod.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodFromJson(json);
}
