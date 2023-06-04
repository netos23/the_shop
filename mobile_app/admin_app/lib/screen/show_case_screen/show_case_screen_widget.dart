import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'show_case_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ShowCaseScreen module
@RoutePage()
class ShowCaseScreenWidget
    extends ElementaryWidget<IShowCaseScreenWidgetModel> {
  const ShowCaseScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShowCaseScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShowCaseScreenWidgetModel wm) {
    return Container();
  }
}
