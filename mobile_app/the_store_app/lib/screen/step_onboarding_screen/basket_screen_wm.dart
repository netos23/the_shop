import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'basket_screen_model.dart';
import 'basket_screen_widget.dart';

abstract class IBasketScreenWidgetModel extends IWidgetModel {}

BasketScreenWidgetModel defaultBasketScreenWidgetModelFactory(
    BuildContext context) {
  return BasketScreenWidgetModel(BasketScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for BasketScreenWidget
class BasketScreenWidgetModel
    extends WidgetModel<BasketScreenWidget, BasketScreenModel>
    implements IBasketScreenWidgetModel {
  BasketScreenWidgetModel(BasketScreenModel model) : super(model);
}
