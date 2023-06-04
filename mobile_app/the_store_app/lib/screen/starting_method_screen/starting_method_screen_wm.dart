import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';
import 'package:the_store_app/internal/di_container.dart';
import 'package:the_store_app/navigation/app_router.dart';

import 'starting_method_screen_model.dart';
import 'starting_method_screen_widget.dart';

abstract class IStartingMethodScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void onDelivery();

  void onPickup();
}

StartingMethodScreenWidgetModel defaultStartingMethodScreenWidgetModelFactory(
    BuildContext context) {
  return StartingMethodScreenWidgetModel(
    StartingMethodScreenModel(
      context.read(),
      DiContainer()<DeliveryService>(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for StartingMethodScreenWidget
class StartingMethodScreenWidgetModel
    extends WidgetModel<StartingMethodScreenWidget, StartingMethodScreenModel>
    with ThemeProvider
    implements IStartingMethodScreenWidgetModel {
  StartingMethodScreenWidgetModel(
    StartingMethodScreenModel model,
  ) : super(model);

  @override
  Future<void> onDelivery() async {
    final res = await router.push<DeliveryMethod>(AddressRoute());
    _navigateNext(res);
  }

  @override
  Future<void> onPickup() async {
    final res = await router.push<DeliveryMethod>(MapPointsRoute());
    _navigateNext(res);
  }

  void _navigateNext(DeliveryMethod? res) {
    if (res == null) {
      return;
    }

    model.saveDelivery(res);

    if (context.router.canPop()) {
      router.pop();
    } else {
      router.replace(HomeRoute());
    }
  }
}
