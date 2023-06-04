import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/order/order_client.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/order/order.dart';

// TODO: cover with documentation
/// Default Elementary model for OrderDetailsScreen module
class OrderDetailsScreenModel extends ElementaryModel {
  OrderDetailsScreenModel({super.errorHandler, required this.client});

  final OrderClient client;
  Order? order;

  Future<Order> getOrder(int id) async {
    //repo call

    await Future.delayed(const Duration(seconds: 1));
    return Order(
        id: 123,
        orderTotal: "213 денег",
        orderStatus: true,
        paymentDTO: Payment(id: 0, type: "cash", picture: ""),
        products: [
          ShortProduct(id: 0,
              productName: "productName",
              productPrice: Decimal.parse("555.55"),
              basketQuantity: 5,
              productOldPrice: Decimal.parse("955.55"),
              pictures: []),
          ShortProduct(id: 0,
              productName: "productName",
              productPrice: Decimal.parse("255.55"),
              basketQuantity: 3,
              productOldPrice: Decimal.parse("555.55"),
              pictures: []),
          ShortProduct(id: 0,
              productName: "asdf",
              productPrice: Decimal.parse("555.55"),
              basketQuantity: 5,
              productOldPrice: Decimal.parse("955.55"),
              pictures: []),
          ShortProduct(id: 0,
              productName: "qwe",
              productPrice: Decimal.parse("555.55"),
              basketQuantity: 5,
              productOldPrice: Decimal.parse("955.55"),
              pictures: [])
        ]);
  }
}
