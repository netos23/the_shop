import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/store_module/domain/delivery/delivery_service.dart';
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';
import 'package:the_store_app/store_module/entity/delivery/pickup_point.dart';
import 'package:the_store_app/store_module/internal/di_container.dart';

import '../../../router/app_router.dart';
import '../../../src/assets/theme_provider.dart';
import 'starting_method_screen_model.dart';
import 'starting_method_screen_widget.dart';

abstract class IStartingMethodPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void onDelivery();

  void onPickup();
}

StartingMethodPageWidgetModel defaultStartingMethodPageWidgetModelFactory(
    BuildContext context) {
  return StartingMethodPageWidgetModel(
    StartingMethodPageModel(
      context.read(),
      DiContainer()<DeliveryService>(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for StartingMethodPageWidget
class StartingMethodPageWidgetModel
    extends WidgetModel<StartingMethodPageWidget, StartingMethodPageModel>
    with ThemeProvider
    implements IStartingMethodPageWidgetModel {
  StartingMethodPageWidgetModel(
    StartingMethodPageModel model,
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
      router.pop(res);
    } else {
      router.replace(HomeRoute());
    }
  }
}
