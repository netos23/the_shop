import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_details_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderDetailsScreen module
@RoutePage()
class OrderDetailsScreenWidget extends ElementaryWidget<IOrderDetailsScreenWidgetModel> {
  const OrderDetailsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderDetailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderDetailsScreenWidgetModel wm) {
    return Container();
  }
}
