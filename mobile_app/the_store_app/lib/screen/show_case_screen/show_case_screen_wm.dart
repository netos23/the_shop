import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'show_case_screen_model.dart';
import 'show_case_screen_widget.dart';

abstract class IShowCaseScreenWidgetModel extends IWidgetModel {}

ShowCaseScreenWidgetModel defaultShowCaseScreenWidgetModelFactory(
    BuildContext context) {
  return ShowCaseScreenWidgetModel(ShowCaseScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for ShowCaseScreenWidget
class ShowCaseScreenWidgetModel
    extends WidgetModel<ShowCaseScreenWidget, ShowCaseScreenModel>
    implements IShowCaseScreenWidgetModel {
  ShowCaseScreenWidgetModel(ShowCaseScreenModel model) : super(model);
}
