import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';
import 'package:the_store_app/entity/entity.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
    factory Order({
      required int id,
      PickupPoint? shop,
      required String orderTotal,
      required bool orderStatus,
      Delivery? delivery,
      required Payment paymentDTO,
      required List<ShortProduct> products,
}) = _Order;

    factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}