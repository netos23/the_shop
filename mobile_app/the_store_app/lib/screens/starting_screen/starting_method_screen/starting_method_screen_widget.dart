import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'starting_method_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for StartingMethodScreen module
class StartingMethodScreenWidget extends ElementaryWidget<IStartingMethodScreenWidgetModel> {
  const StartingMethodScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultStartingMethodScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IStartingMethodScreenWidgetModel wm) {
    return Container();
  }
}
