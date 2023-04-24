import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'starting_city_screen_model.dart';
import 'starting_city_screen_widget.dart';

abstract class IStartingCityScreenWidgetModel extends IWidgetModel {
}

StartingCityScreenWidgetModel defaultStartingCityScreenWidgetModelFactory(BuildContext context) {
  return StartingCityScreenWidgetModel();
}

// TODO: cover with documentation
/// Default widget model for StartingCityScreenWidget
class StartingCityScreenWidgetModel extends WidgetModel<StartingCityScreenWidget, StartingCityScreenModel>
    implements IStartingCityScreenWidgetModel {

  StartingCityScreenWidgetModel(StartingCityScreenModel model) : super(model);
}
