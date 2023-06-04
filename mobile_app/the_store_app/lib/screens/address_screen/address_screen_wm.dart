import 'package:core/core.dart';
import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'address_screen_model.dart';
import 'address_screen_widget.dart';

abstract class IAddressScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get searchController;

  EntityStateNotifier<AddressResponse?> get addressState;

  void onSelect(AddressSuggestion address);

  String buildTitle(SuggestionData? address);
}

AddressScreenWidgetModel defaultAddressScreenWidgetModelFactory(
    BuildContext context) {
  return AddressScreenWidgetModel(
    AddressScreenModel(
      context.read(),
      context.read<AppConfig>().dadataKey,
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for AddressScreenWidget
class AddressScreenWidgetModel
    extends WidgetModel<AddressScreenWidget, AddressScreenModel>
    with ThemeProvider
    implements IAddressScreenWidgetModel {
  AddressScreenWidgetModel(AddressScreenModel model) : super(model);

  @override
  final searchController = TextEditingController();

  @override
  final addressState = EntityStateNotifier();

  AddressSuggestion? _suggestionData;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    searchController.addListener(_makeSearch);
    _makeSearch();
  }

  Future<void> _makeSearch() async {
    try {
      addressState.loading();
      final address = await model.makeSearch(searchController.text);
      addressState.content(address);
    } catch (e) {
      context.showSnackBar('Не удалось получить информацию о адресах');
    }
  }

  @override
  void dispose() {
    searchController.removeListener(_makeSearch);
    addressState.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  void onSelect(AddressSuggestion? address) {
    _suggestionData = address;
    final hasHouse = _suggestionData?.data?.house?.isNotEmpty ?? false;

    if (hasHouse) {
      router.pop(
        DeliveryMethod.delivery(
          address: _suggestionData?.value ?? '',
        ),
      );
    }

    final text = address?.value ?? '';
    searchController.text = text;
    searchController.selection = TextSelection(
      baseOffset: text.length,
      extentOffset: text.length,
    );
  }

  @override
  String buildTitle(SuggestionData? address) {
    final parts = <String>[];

    var city = address?.city;
    if (city != null) {
      parts.add(city);
    }

    var settlement = address?.settlement;
    if (settlement != null) {
      parts.add(settlement);
    }

    var street = address?.street;
    if (street != null) {
      parts.add(street);
    }

    var house = address?.house;
    if (house != null) {
      parts.add(house);
    }

    return parts.join(", ");
  }
}
