import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'starting_city_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for StartingCityScreen module
class StartingCityScreenWidget extends ElementaryWidget<IStartingCityScreenWidgetModel> {
  const StartingCityScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultStartingCityScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IStartingCityScreenWidgetModel wm) {
    return Container();
  }
}
