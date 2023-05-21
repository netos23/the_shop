import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'city_list_screen_model.dart';
import 'city_list_screen_widget.dart';

abstract class ICityListScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<City>> get citiesState;

  TextEditingController get searchController;

  void onSelect(int index);
}

CityListScreenWidgetModel defaultCityListScreenWidgetModelFactory(
    BuildContext context) {
  return CityListScreenWidgetModel(
    CityListScreenModel(
      errorHandler: context.read(),
      client: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for CityListScreenWidget
class CityListScreenWidgetModel
    extends WidgetModel<CityListScreenWidget, CityListScreenModel>
    with ThemeProvider
    implements ICityListScreenWidgetModel {
  @override
  final citiesState = EntityStateNotifier<List<City>>();
  @override
  final searchController = TextEditingController();

  CityListScreenWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _getCities();
    searchController.addListener(_listenSearch);
  }

  void _listenSearch() {
    _getCities(searchController.text);
  }

  Future<void> _getCities([String? search]) async {
    citiesState.loading(citiesState.value?.data);
    try {
      final cities = await model.getCities(search);
      citiesState.content(cities);
    } catch (e) {
      context.showSnackBar('Не удалось получить информацию о городах');
    }
  }

  @override
  void onSelect(int index) {
    context.router.navigate(StartingMethodRoute());
  }

  @override
  void dispose() {
    searchController.removeListener(_listenSearch);
    searchController.dispose();
    citiesState.dispose();
    super.dispose();
  }
}
