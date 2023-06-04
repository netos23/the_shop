import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'catalog_screen_model.dart';
import 'catalog_screen_widget.dart';

abstract class ICatalogScreenWidgetModel extends IWidgetModel {
}

CatalogScreenWidgetModel defaultCatalogScreenWidgetModelFactory(BuildContext context) {
  return CatalogScreenWidgetModel(CatalogScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for CatalogScreenWidget
class CatalogScreenWidgetModel extends WidgetModel<CatalogScreenWidget, CatalogScreenModel>
    implements ICatalogScreenWidgetModel {

  CatalogScreenWidgetModel(CatalogScreenModel model) : super(model);
}
