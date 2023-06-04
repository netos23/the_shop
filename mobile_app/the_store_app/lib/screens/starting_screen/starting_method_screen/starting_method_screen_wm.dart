import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'starting_method_screen_model.dart';
import 'starting_method_screen_widget.dart';

abstract class IStartingMethodScreenWidgetModel extends IWidgetModel
implements IThemeProvider{
  void onDelivery();
  void onPickup();
}

StartingMethodScreenWidgetModel defaultStartingMethodScreenWidgetModelFactory(
    BuildContext context) {
  return StartingMethodScreenWidgetModel(
    StartingMethodScreenModel(
      context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for StartingMethodScreenWidget
class StartingMethodScreenWidgetModel
    extends WidgetModel<StartingMethodScreenWidget, StartingMethodScreenModel>
    with ThemeProvider
    implements IStartingMethodScreenWidgetModel {
  StartingMethodScreenWidgetModel(StartingMethodScreenModel model)
      : super(model);

  @override
  void onDelivery() {
    //TODO: navigate
  }

  @override
  void onPickup() {
    // TODO: navigate
  }
}
