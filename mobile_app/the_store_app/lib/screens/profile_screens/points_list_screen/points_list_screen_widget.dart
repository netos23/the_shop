import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'points_list_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for PointsListScreen module
class PointsListScreenWidget extends ElementaryWidget<IPointsListScreenWidgetModel> {
  const PointsListScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultPointsListScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IPointsListScreenWidgetModel wm) {
    return Container();
  }
}
