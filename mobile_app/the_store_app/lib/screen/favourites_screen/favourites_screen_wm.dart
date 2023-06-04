import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favourites_screen_model.dart';
import 'favourites_screen_widget.dart';

abstract class IFavouritesScreenWidgetModel extends IWidgetModel {}

FavouritesScreenWidgetModel defaultFavouritesScreenWidgetModelFactory(
    BuildContext context) {
  return FavouritesScreenWidgetModel(FavouritesScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for FavouritesScreenWidget
class FavouritesScreenWidgetModel
    extends WidgetModel<FavouritesScreenWidget, FavouritesScreenModel>
    implements IFavouritesScreenWidgetModel {
  FavouritesScreenWidgetModel(FavouritesScreenModel model) : super(model);
}
