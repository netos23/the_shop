import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_details_screen_model.dart';
import 'order_details_screen_widget.dart';

abstract class IOrderDetailsScreenWidgetModel extends IWidgetModel {
}

OrderDetailsScreenWidgetModel defaultOrderDetailsScreenWidgetModelFactory(BuildContext context) {
  return OrderDetailsScreenWidgetModel(
    context.read()
  );
}

// TODO: cover with documentation
/// Default widget model for OrderDetailsScreenWidget
class OrderDetailsScreenWidgetModel extends WidgetModel<OrderDetailsScreenWidget, OrderDetailsScreenModel>
    implements IOrderDetailsScreenWidgetModel {

  OrderDetailsScreenWidgetModel(OrderDetailsScreenModel model) : super(model);
}
