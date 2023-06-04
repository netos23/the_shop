import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:admin_app/data/repository/dadata_repository.dart';
import 'package:admin_app/domain/entity/cart/calc_cart.dart';
import 'package:admin_app/domain/entity/cart/calculated_cart.dart';
import 'package:admin_app/domain/entity/cart/cart_product.dart';
import 'package:admin_app/domain/entity/dadata/geo_data.dart';
import 'package:admin_app/domain/models/product.dart';
import 'package:admin_app/domain/models/product_with_count.dart';
import 'package:admin_app/domain/use_case/cart_use_case.dart';
import 'package:admin_app/internal/app_components.dart';
import 'package:admin_app/router/app_router.dart';
import 'package:admin_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';

import '../../domain/models/product_with_count.dart';
import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract class ICartPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<CalcCart?> get cartState;

  ValueNotifier<bool> get orderState;

  EntityStateNotifier<Set<int>> get disabledCart;

  EntityStateNotifier<GeoData> get geoState;

  GeolocationDadataRepository get geolocationDadataRepository;

  CartUseCase get cartUseCase;

  void openSort();

  void openProduct({required Product product});

  void onSelect(CartProduct product, bool? value);

  void order();
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  return CartPageWidgetModel(CartPageModel());
}

class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel>
    with ThemeProvider
    implements ICartPageWidgetModel {
  @override
  final cartState = EntityStateNotifier();

  @override
  final cartUseCase = AppComponents().cartUseCase;

  @override
  final disabledCart = EntityStateNotifier();

  @override
  final orderState = ValueNotifier(true);

  @override
  final geolocationDadataRepository = AppComponents().dadataRepository;

  CartPageWidgetModel(CartPageModel model) : super(model);

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    getCity();
    loadCart();
    sub = cartUseCase.cart.stream.listen((event) {
      cartState.content(event);
      final off = disabledCart.value?.data ?? {};

      final products = event?.products ?? [];
      off.removeWhere(
        (id) => !products.any(
          (p) => p.product.id == id,
        ),
      );

      disabledCart.content(Set.of(off));
    });
  }

  @override
  void dispose() {
    sub?.cancel();
    cartState.dispose();
    geoState.dispose();

    super.dispose();
  }

  @override
  void openSort() {
    // todo implents
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

  Future<void> loadCart() async {
    final fias = geoState.value?.data?.cityFias ?? '';
    if (fias.isNotEmpty) {
      await cartUseCase.loadCart(
        request: CalculatedCart(cityFias: fias),
      );
    } else {
      await cartUseCase.loadCart(
        request: CalculatedCart(),
      );
    }
  }

  Future<void> getCity() async {
    final geoData = await geolocationDadataRepository.getGeolocationByIp();
    geoState.content(geoData);
  }

  @override
  final geoState = EntityStateNotifier();

  @override
  void onSelect(CartProduct product, bool? value) {
    final ch = value ?? false;
    final off = disabledCart.value?.data ?? {};

    if (!ch) {
      off.add(product.product.id);
    } else {
      off.remove(product.product.id);
    }

    disabledCart.content(Set.of(off));
  }

  @override
  Future<void> order() async {
    final profile = AppComponents().profileUseCase;

    orderState.value = false;
    await profile.loadProfile();
    orderState.value = true;

    final off = disabledCart.value?.data ?? {};
    final cartOffer = cartUseCase.cart.valueOrNull?.products ?? [];

    if (isMounted) {
      router.navigate(
        OrderRoute(
          productIds: cartOffer
              .where(
                (e) => !off.any(
                  (id) => e.product.id == id,
                ),
              )
              .map(
                (e) => ProductWithCount(
                  productId: e.product.id,
                  count: e.count,
                ),
              )
              .toList(),
        ),
      );
    }
  }
}
