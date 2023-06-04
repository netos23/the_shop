import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'basket_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for BasketScreen module
@RoutePage()
class BasketScreenWidget extends ElementaryWidget<IBasketScreenWidgetModel> {
  const BasketScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultBasketScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IBasketScreenWidgetModel wm) {
    return Container();
  }
}
