
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_store_app/data/catalog/models/short_product.dart';
import 'package:the_store_app/entity/catalog/catalog_export.dart';
import 'package:the_store_app/entity/delivery/delivery_dto.dart';
import 'package:the_store_app/entity/payment/payment_dto.dart';
import 'package:the_store_app/entity/shop/shop_dto.dart';
part 'my_order_dto.freezed.dart';
part 'my_order_dto.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class MyOrderDto with _$MyOrderDto{
  factory MyOrderDto({
    required int id,
    ShopDto? shop,
    required String orderTotal,
    required bool orderStatus,
    DeliveryDto? delivery,
    required PaymentDto paymentDTO,

    required List<ShortProduct> products,
}) = _MyOrderDto;

  factory MyOrderDto.fromJson(Map<String, dynamic> json) => _$MyOrderDtoFromJson(json);
}