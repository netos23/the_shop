import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'favourites_screen_model.dart';
import 'favourites_screen_widget.dart';

abstract class IFavouritesScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {

  EntityStateNotifier<List<ShortProduct>> get productsState;

  List<ValueStreamWrapper<bool>> get favoriteWrappers;

  toCatalog() {}

  deleteFromFavourite(int id) {}

  addToBasket(int id) {}}

FavouritesScreenWidgetModel defaultFavouritesScreenWidgetModelFactory(
    BuildContext context) {
  return FavouritesScreenWidgetModel(FavouritesScreenModel(
      errorHandler: context.read(), client: context.read()));
}

// TODO: cover with documentation
/// Default widget model for FavouritesScreenWidget
class FavouritesScreenWidgetModel
    extends WidgetModel<FavouritesScreenWidget, FavouritesScreenModel>
    with ThemeProvider
    implements IFavouritesScreenWidgetModel {
  FavouritesScreenWidgetModel(FavouritesScreenModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _getFavs();
  }

  List<ShortProduct> products = [];

  @override
  EntityStateNotifier<List<ShortProduct>> productsState =
      EntityStateNotifier<List<ShortProduct>>();

  Future<void> _getFavs() async {
    productsState.loading(productsState.value?.data);
    try {
      products = await model.getFavourites();
      productsState.content(products);
    } catch (e) {
      context.showSnackBar('Не удалось получить информацию о городах');
    }
  }

  @override
  toCatalog() {
    context.router.navigate(CatalogRoute());
  }

  @override
  // TODO: implement favoriteWrappers
  List<ValueStreamWrapper<bool>> favoriteWrappers = [];

  @override
  addToBasket(int id) {
    //repo call
  }

  @override
  deleteFromFavourite(int id) {
    //repo call
  }
}
