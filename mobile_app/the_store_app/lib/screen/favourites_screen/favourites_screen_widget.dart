import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'favourites_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for FavouritesScreen module
@RoutePage()
class FavouritesScreenWidget extends ElementaryWidget<IFavouritesScreenWidgetModel> {
  const FavouritesScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavouritesScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavouritesScreenWidgetModel wm) {
    return Container();
  }
}
