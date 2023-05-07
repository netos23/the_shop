import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'starting_city_screen_model.dart';
import 'starting_city_screen_widget.dart';

abstract class IStartingCityScreenWidgetModel extends IWidgetModel {
  EntityStateNotifier<List<City>> get citiesState;

  TextEditingController get searchController;

  void onSelect(int index) ;
}

StartingCityScreenWidgetModel defaultStartingCityScreenWidgetModelFactory(
    BuildContext context) {
  return StartingCityScreenWidgetModel(
    StartingCityScreenModel(
      errorHandler: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for StartingCityScreenWidget
class StartingCityScreenWidgetModel
    extends WidgetModel<StartingCityScreenWidget, StartingCityScreenModel>
    implements IStartingCityScreenWidgetModel {
  @override
  final citiesState = EntityStateNotifier<List<City>>();
  @override
  final searchController = TextEditingController();

  StartingCityScreenWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _getCities();
    searchController.addListener(_listenSearch);
  }

  void _listenSearch(){
    _getCities(searchController.text);
  }

  Future<void> _getCities([String? search]) async {
    citiesState.loading(citiesState.value?.data);
    final cities = await model.getCities(search);
    citiesState.content(cities);
  }

  void onSelect(int index){
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
