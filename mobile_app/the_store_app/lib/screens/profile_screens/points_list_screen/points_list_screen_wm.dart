import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'points_list_screen_model.dart';
import 'points_list_screen_widget.dart';

abstract class IPointsListScreenWidgetModel extends IWidgetModel {
}

PointsListScreenWidgetModel defaultPointsListScreenWidgetModelFactory(BuildContext context) {
  return PointsListScreenWidgetModel(
    PointsListScreenModel(
      context.read(),
    )
  );
}

// TODO: cover with documentation
/// Default widget model for PointsListScreenWidget
class PointsListScreenWidgetModel extends WidgetModel<PointsListScreenWidget, PointsListScreenModel>
    implements IPointsListScreenWidgetModel {

  PointsListScreenWidgetModel(PointsListScreenModel model) : super(model);
}
