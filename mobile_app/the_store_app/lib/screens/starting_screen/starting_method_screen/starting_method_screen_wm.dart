import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'starting_method_screen_model.dart';
import 'starting_method_screen_widget.dart';

abstract class IStartingMethodScreenWidgetModel extends IWidgetModel {}

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
    implements IStartingMethodScreenWidgetModel {
  StartingMethodScreenWidgetModel(StartingMethodScreenModel model)
      : super(model);
}
