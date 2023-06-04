import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/repository/dadata_repository.dart';
import 'package:the_store_app/domain/entity/cart/cart_product.dart';
import 'package:the_store_app/domain/entity/dadata/geo_data.dart';
import 'package:the_store_app/domain/models/product.dart';
import 'package:the_store_app/domain/models/subscription.dart';
import 'package:the_store_app/domain/use_case/cart_use_case.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/internal/logger.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'subscriprion_page_widget.dart';
import 'subscription_page_model.dart';

abstract class ISubscriptionPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Subscription>> get cartState;

  ValueNotifier<bool> get orderState;

  EntityStateNotifier<Set<int>> get disabledSubscription;

  EntityStateNotifier<GeoData> get geoState;

  GeolocationDadataRepository get geolocationDadataRepository;

  CartUseCase get cartUseCase;

  void openProduct({required Product product});

  void onSelect(CartProduct product, bool? value);

  void deleteSubscription(Subscription subscription);
}

SubscriptionPageWidgetModel defaultSubscriptionPageWidgetModelFactory(
    BuildContext context) {
  return SubscriptionPageWidgetModel(SubscriptionPageModel());
}

class SubscriptionPageWidgetModel
    extends WidgetModel<SubscriptionPageWidget, SubscriptionPageModel>
    with ThemeProvider
    implements ISubscriptionPageWidgetModel {
  @override
  final cartState = EntityStateNotifier();

  @override
  final cartUseCase = AppComponents().cartUseCase;

  @override
  final disabledSubscription = EntityStateNotifier();

  @override
  final orderState = ValueNotifier(true);

  @override
  final geolocationDadataRepository = AppComponents().dadataRepository;

  SubscriptionPageWidgetModel(SubscriptionPageModel model) : super(model);

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadSubscription();

    Future.microtask(
      () => context.showSnackBar(
        'Смахните что бы отменить подписку',
      ),
    );
  }

  @override
  void dispose() {
    sub?.cancel();
    cartState.dispose();
    geoState.dispose();

    super.dispose();
  }

  @override
  void openProduct({required Product product}) {
    context.router.navigate(
      ProductRoute(
        productId: product.id,
        product: product,
      ),
    );
  }

  Future<void> loadSubscription() async {
    try {
      var response =
          await AppComponents().dio.get<List<dynamic>>('/subscriptions/');
      final subscriptions = (response.data!)
          .map((dynamic j) => Subscription.fromJson(j as Map<String, dynamic>))
          .toList();
      cartState.content(subscriptions);
    } catch (e, s) {
      logger.e('Cant get banner', e, s);
      context.showSnackBar(
        'Не удалось получить информацию о подписках',
      );
    }
  }

  @override
  final geoState = EntityStateNotifier();

  @override
  void onSelect(CartProduct product, bool? value) {}

  @override
  Future<void> deleteSubscription(Subscription subscription) async {
    try {
      await AppComponents().dio.delete(
        '/subscriptions/',
        data: {
          'subscribe_id': subscription.id,
        },
      );

      final cart = cartState.value?.data ?? [];

      cartState.content(cart.where((e) => e.id != subscription.id).toList());
    } catch (e, s) {
      logger.e('Cant get banner', e, s);
      context.showSnackBar(
        'Не удалось получить информацию о подписках',
      );
    }
  }
}
