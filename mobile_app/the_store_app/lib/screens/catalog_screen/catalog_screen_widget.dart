import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CatalogScreen module
@RoutePage()
class CatalogScreenWidget extends ElementaryWidget<ICatalogScreenWidgetModel> {
  const CatalogScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCatalogScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICatalogScreenWidgetModel wm) {
    return Container();
  }
}
