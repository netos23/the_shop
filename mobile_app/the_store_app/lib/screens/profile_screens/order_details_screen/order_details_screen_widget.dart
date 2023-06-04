import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'order_details_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderDetailsScreen module
@RoutePage()
class OrderDetailsScreenWidget
    extends ElementaryWidget<IOrderDetailsScreenWidgetModel> {
  const OrderDetailsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderDetailsScreenWidgetModelFactory,
    required this.index,
  }) : super(wmFactory, key: key);

  final int index;

  @override
  Widget build(IOrderDetailsScreenWidgetModel wm) {
    return EntityStateNotifierBuilder(
        listenableEntityState: wm.orderState,
        loadingBuilder: (context, orderState) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Загружаем заказ...",
                style: wm.textTheme.titleMedium,
              ),
              centerTitle: true,
              leading: AutoLeadingButton(
                color: wm.colorScheme.primary,
              ),
            ),
            body: const Center(
              child: PreloaderCircleIndicator(),
            ),
          );
        },
        builder: (context, orderState) {
          if (orderState == null) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Что-то пошло не так...",
                  style: wm.textTheme.titleMedium,
                ),
                leading: AutoLeadingButton(
                  color: wm.colorScheme.primary,
                ),
              ),
              body: Center(
                child: Text(
                  "Данные о заказе не получены",
                  style: wm.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            );
          }

          final sum = orderState.products.fold(Decimal.parse('0'),
              (previousValue, element) => previousValue + element.productPrice * Decimal.fromInt(element.basketQuantity));
          final discount = orderState.products.fold(
              Decimal.parse('0'),
              (previousValue, element) =>
                  previousValue +
                  Decimal.fromInt(element.basketQuantity) * (element.productOldPrice ??
                      element.productPrice - element.productPrice));

          return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Заказ: №${orderState.id}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                centerTitle: true,
                leading: AutoLeadingButton(
                    color: Theme.of(context).colorScheme.primary),
              ),
              body: Stack(
                children: [
                  _OrderScreen(order: orderState),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Material(
                          elevation: 20,
                          child: Container(
                            color: Theme.of(context).colorScheme.background,
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("ИТОГО: $sum ₽",
                                      style: wm.textTheme.bodyLarge),
                                  Text("Скидка:  $discount ₽",
                                      style: wm.textTheme.bodySmall),
                                ],
                              ),
                            ),
                          )))
                ],
              ));
        });
  }
}

class _OrderScreen extends StatelessWidget {
  const _OrderScreen({Key? key, required this.order}) : super(key: key);

  final MyOrderDto order;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: order.products.length,
        itemBuilder: (context, index) {
          return _ProductTile(product: order.products[index]);
        });
  }
}

class _ProductTile extends StatelessWidget {
  const _ProductTile({Key? key, required this.product}) : super(key: key);

  final ShortProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  color: Colors.black,
                  height: 90,
                  width: 90,
                ),
              ), //pic,
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.productName,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Количество ${product.basketQuantity} шт ",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .extension<ExtraAppColors>()!
                                .onSurface,
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
          Text(
            "${product.productPrice * Decimal.fromInt(product.basketQuantity)}",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w800),
            textAlign: TextAlign.right,
          )
        ],
      ),
    );
  }
}
