import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'home_screen_model.dart';
import 'home_screen_widget.dart';

abstract class IHomeScreenWidgetModel extends IWidgetModel {}

HomeScreenWidgetModel defaultHomeScreenWidgetModelFactory(
    BuildContext context) {
  return HomeScreenWidgetModel(HomeScreenModel());
}

// TODO: cover with documentation
/// Default widget model for HomeScreenWidget
class HomeScreenWidgetModel
    extends WidgetModel<HomeScreenWidget, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel(HomeScreenModel model) : super(model);
}
