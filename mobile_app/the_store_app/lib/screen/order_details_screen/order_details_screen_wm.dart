import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/order/order.dart';
import 'order_details_screen_model.dart';
import 'order_details_screen_widget.dart';

abstract class IOrderDetailsScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<Order> get orderState;
}

OrderDetailsScreenWidgetModel defaultOrderDetailsScreenWidgetModelFactory(
    BuildContext context) {
  return OrderDetailsScreenWidgetModel(OrderDetailsScreenModel(
    errorHandler: context.read(),
    client: context.read(),
  ));
}

// TODO: cover with documentation
/// Default widget model for OrderDetailsScreenWidget
class OrderDetailsScreenWidgetModel
    extends WidgetModel<OrderDetailsScreenWidget, OrderDetailsScreenModel>
    with ThemeProvider
    implements IOrderDetailsScreenWidgetModel {
  OrderDetailsScreenWidgetModel(OrderDetailsScreenModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _getOrders();
  }

  Order? order;

  Future<void> _getOrders() async {
    orderState.loading(orderState.value?.data);
    try {
      order = await model.getOrder(widget.index);
      orderState.content(order!);
    } catch (e) {
      context
          .showSnackBar("Не удалось получить данные о заказе. Пробуем ещё раз");
    }
  }

  @override
  EntityStateNotifier<Order> orderState = EntityStateNotifier<Order>();
}
